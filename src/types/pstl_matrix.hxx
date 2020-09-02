#ifndef PSTL_MATRIX_HXX
#define PSTL_MATRIX_HXX


#include <cstdlib>
#include <memory>
#include <vector>
#include <functional>
#include <sstream>
#include <execution>
#include <algorithm>
#include <numeric>
#include "matrix.hxx"
#include "tbb/parallel_for.h"
#include "tbb/blocked_range.h"


template<typename T>
class PstlMatrix : public Matrix{
  
public:
  
  PstlMatrix<T>(size_t m, size_t n):
    m_(m),n_(n),data_(m*n,T()){
  }

  virtual ~PstlMatrix<T>(){
  };
  

  
  PstlMatrix(PstlMatrix const & m_other_copy) {
    
    m_ = m_other_copy.m_;
    n_ = m_other_copy.n_;
    data_ = m_other_copy.data_;
  }
    
  int fill() override{
#pragma omp for
    for(auto it_m=0; it_m!=data_.size(); it_m++){
      //*it_m = data_.at(it_m) +1 ;
      data_[it_m] += it_m;
  
    }

    return 0;
  }

  std::unique_ptr<Matrix> operator*(const Matrix & other) const override{

    const PstlMatrix<T>& m_other = dynamic_cast<const PstlMatrix<T>&>(other);
    auto m_product = std::make_unique<PstlMatrix<T>>(this->m_,m_other.n_);

     
      PstlMatrix<T> m_other_cpy = m_other;

      for(int ii=0;ii<m_;ii++){
        for(int jj=0;jj<m_other_cpy.n_;jj++){
          m_other_cpy.data_[jj*(m_other_cpy.n_)+ii] = m_other.data_[ii*(m_other.n_)+jj];
        }
      }
      

    auto LM_line_start = data_.begin();
    auto LM_line_end = data_.begin();
    
    std::advance(LM_line_end,n_);

    auto RM_line_start = m_other_cpy.data_.begin();
    
    for(int id_i=0;id_i<m_other_cpy.n_;id_i++){
      for(int id_j=0;id_j<m_other_cpy.n_;id_j++){
        m_product->data_[id_i*m_product->n_+id_j]= std::transform_reduce( std::execution::par, LM_line_start, LM_line_end, RM_line_start, 0.0);
        
        // Update Itérate Left matrice
        std::advance(LM_line_start,n_);
        std::advance(LM_line_end,n_);

      }
      // // ré-Itérate Right matrice
      LM_line_start = data_.begin();
      LM_line_end = data_.begin();
    
      std::advance(LM_line_end,n_);

      // Itérate Right matrice 
      std::advance(RM_line_start,m_other_cpy.n_);
    } 
    
    return m_product;
  }





  std::string to_string() const override{
    // Print with Python formatting
    std::ostringstream output;
    output<<std::endl<<"[";
    int id=0;
    for (auto &val: data_){
      if (id==0)
	output<<"["<<val;
      else if (id%n_==0)
	output<<"],["<<val;
      else
	output<<","<<val;
      id++;
    }
    output<<"]]"<<std::endl;
    return output.str();
  }

private:
  size_t m_;
  size_t n_;
  std::vector<T> data_;
};


#endif
