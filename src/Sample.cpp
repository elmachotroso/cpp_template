#include "Sample.h"

namespace CppTemplate
{
    Sample::Sample( const std::string & message )
        : m_message { message }
    {
        
    }

    std::string Sample::getMessage() const
    {
        return m_message;
    }
}