#include <iostream>

namespace TestCpp20
{
    int main()
    {
        auto result = ( 10 <=> 20 ) > 0;
        std::cout << result << std::endl;
        return 0;
    }
}

namespace TestCpp
{
    int main()
    {
        std::cout << "Hello World!" << std::endl;
        return 0;
    }
}

int main( int argc, const char * argv[] )
{
    TestCpp20::main();
    return 0;
}