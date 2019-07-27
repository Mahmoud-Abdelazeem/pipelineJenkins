#include <iostream>
#include <QVector>
#include <gtest/gtest.h>
#include <gmock/gmock.h>
//#include "checkclass.h"

using namespace std;


struct stackTest : public testing::Test  {
    stack s1;
    void SetUp(){
        int value [] = {1,2,3,4,5,6,7,8,9};
        for (auto &val : value) {
            s1.push(val);
        }
    }
    void TearDown() {}
};

TEST_F(stackTest, PopTest){

    int lastpoppedvalue = 9;
    while (lastpoppedvalue !=1){
        ASSERT_EQ(s1.pop(),lastpoppedvalue--);
    }
}
TEST_F(stackTest, sizeValidityTest){

    int val = s1.size();
    for(val;val>0;val--){
        ASSERT_NE(s1.pop(),-1);
    }
}

