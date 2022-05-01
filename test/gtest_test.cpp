#include <gtest/gtest.h>
#include <string>
#include "Sample.h"

TEST( GoogleTest_Integration, BasicAssertions ) {
    EXPECT_STRNE( "hello", "world" );
    EXPECT_EQ( 7 * 6, 42 );
}

TEST( GoogleTest_Integration, CustomObject ) {
    const std::string expected { "GoogleTest!!!" };
    CppTemplate::Sample sample( expected );
    const std::string actual { sample.getMessage() };
    EXPECT_EQ( expected, actual );
}