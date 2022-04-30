#include <gtest/gtest.h>

TEST( GoogleTest_Integration, BasicAssertions ) {
    EXPECT_STRNE( "hello", "world" );
    EXPECT_EQ( 7 * 6, 42 );
}