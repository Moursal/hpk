#include <vector>
#include <functional>
#include <iostream>
#include <numeric>
#include <execution>
 
    std::vector<double> transpo(  std::vector<double> mat){
    
        std::vector<double> t_mat(mat.size());
           
        for(int id_i=0;id_i<3;id_i++){
          for(int id_j=0;id_j<2;id_j++){
            t_mat [id_j*3+id_i] = mat [id_i*2+id_j];
          }
        }  
        return t_mat;
    }

int main()
{
    std::vector<double> a{0,1,2,3,4,5};
    std::vector<double> b{0,1,2,3,4,5};
    b = transpo(b);

    auto aa_beg = a.begin();
    auto aa_end = a.begin()+3;
    auto bb = b.begin();

    std::vector<double> res(4);
    double result;
    for (int i = 0; i < 2; ++i)
    {   
        for (int j = 0; j < 2; ++j)
        {
            res[i*2 +j] = std::transform_reduce(
            std::execution::par,
            aa_beg, aa_end,
            bb, 0.0
            );

            std::advance(aa_beg,3);
            std::advance(aa_end,3);     
        }
        aa_beg = a.begin();
        aa_end = a.begin()+3;
        std::advance(bb,3);  
    }

    for(auto i : a)     
        std::cout << i << ' ';
    std::cout << std::endl;
std::cout << "========================"<< '\n';
    for(auto i : b)     
        std::cout << i << ' ';
    std::cout << std::endl;
 std::cout << "========================"<< '\n';
    for(auto i : res)       
        std::cout << i << ' ';
    std::cout << std::endl;
}