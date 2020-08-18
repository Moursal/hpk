#include <iostream>
#include <gtest/gtest.h>
#include <gmock/gmock.h>

#include "../core/hpk.cxx"
#include "../types/blas_matrix.hxx" 

/*
class FooMock {
	public:
		MOCK_METHOD0(fill, int());
};
*/

class FillTest : public ::testing::Test{
protected:
	virtual int fill() 
}


TEST(FillTest,HandleZeroInputAndException){
	
	EXPECT_EQ(1,fill());
}


/*
class MockMatrix : public Matrix{
    Matrix & mat;
    public :
    //MOCK_METHOD1(cblas_dgemm,const Matrix & other);
    MOCK_METHOD1((std::unique_ptr<Matrix>), (operator*), (const Matrix & other), (override));
    virtual std::unique_ptr<Matrix> operator*(const Matrix & other) {return (std::unique_ptr<Matrix>)(&other); }
};

*/


int main(int argc, char** argv) {
  // The following line must be executed to initialize Google Mock
  // (and Google Test) before running the tests.
  ::testing::InitGoogleMock(&argc, argv);
  return RUN_ALL_TESTS();
}