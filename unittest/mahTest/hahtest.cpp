#include <iostream>
#include <math.h>
#include <gtest/gtest.h>

using namespace std;

double sqrroot (const double _x)

{
    double b = sqrt (_x);
    if(b !=b) { // nan check
        return -1;

    } else {
        return sqrt(_x);
    }
}

TEST(sqrroottest, positivNos)
{
    ASSERT_EQ(6, sqrroot(36));

}

class MyClass{

    string id;
public:
    MyClass(string _id) :id(_id){}

    string getId() {return id;}
};

// every test consistes of thee steps
TEST(TestCaseName,checkString){

    //1- arrange
    MyClass mc("root");
    //2- act
    string value = mc.getId();
    //3- assert
    EXPECT_STREQ(value.c_str(),"root");

}

class classIncrement{

    int basevalue;
public:
    classIncrement (int _bv): basevalue(_bv){}

    void increment (int byvalue){
        basevalue +=byvalue;
    }

    int getValue() {return basevalue;}
};

TEST(ClassTest, Incrementby_5){

    // Arrange
    classIncrement mc(100);

    // Act
    mc.increment(5);

    // Assert
    ASSERT_EQ(mc.getValue(), 105);
}

class myIncrementClass {
    int basevalue;

public:
    myIncrementClass(int _bv) : basevalue(_bv) {}

    void setIncrement( int byValue){
        basevalue +=byValue;
    }

    int getValue() {
        return basevalue;
    }
};

struct myIncrementClassTest : public testing::Test {
    myIncrementClass* mIc;
    void SetuP()  {
        cout<<"Alive"<<endl;
        mIc =new myIncrementClass(100);

    }
    void TearDown() {
        cout<< "dead"<<endl;
        delete mIc;

    }
};

TEST_F (myIncrementClassTest,increment_by_10)
{
    // Arrange, I have done it earlier

    // Act
    mIc->setIncrement(10);

    //Assert
    ASSERT_EQ(mIc->getValue(),110);
}



