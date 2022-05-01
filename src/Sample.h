#ifndef CPPTEMPLATE_SAMPLE_H
#define CPPTEMPLATE_SAMPLE_H

#include <string>

namespace CppTemplate
{
    class Sample
    {
        public:
            Sample( const std::string & message );
            std::string getMessage() const;

        private:
            std::string m_message;
    };
}

#endif //CPPTEMPLATE_SAMPLE_H