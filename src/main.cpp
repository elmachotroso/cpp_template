#include <iostream>
#include "Sample.h"

namespace TestCpp20
{
    int main()
    {
        auto result = ( 10 <=> 20 ) > 0;
        std::cout << result << std::endl;
        return 0;
    }
}

namespace TestSample
{
    int main()
    {
        CppTemplate::Sample sample( "Hello Sample World!" );
        std::cout << sample.getMessage() << std::endl;
        return 0;
    }
}

int main( int argc, const char * argv[] )
{
    TestCpp20::main();
    TestSample::main();
    return 0;
}