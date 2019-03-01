#include "iostream"
#include "fstream"
#include "cstring"
#define SUCCESS 0;
#define FAILURE 1;
// params
// 1 -- char to replace
// 2 -- char to put in place of #1
// 3 -- input_file_name
// 4 -- output_file_name
int main(int argc, char *argv[])
{
    // check num params
    if (argc != 5)
    {
        std::cerr << "Error: Incorrect Number of Params\n";
        std::cerr << argv[0] << " <char-to-replace> <char-to-replace-with> <input-file> <output-file>\n";
        return FAILURE;
    }
    // check single characters
    if (std::strlen(argv[1]) != 1 || std::strlen(argv[2]) != 1)
    {
        std::cerr << "first to params must be single characters\n";
        std::cout << std::strlen(argv[1]) << std::strlen(argv[2]) << "\n";
        return FAILURE;
    }
    // load chars
    char replace = argv[1][0];
    char replacemnet = argv[2][0];
    // load file streams
    std::ifstream inFile(argv[3]);
    std::ofstream outFile(argv[4]);
    // check files opened correctly
    if (!inFile.is_open())
    {
        std::cerr << "failed to open: " << argv[3] << "\n";
        return FAILURE;
    }
    if (!outFile.is_open())
    {
        std::cerr << "failed to open: " << argv[4] << "\n";
        return FAILURE;
    }
    std::string line;
    while (std::getline(inFile, line))
    {
        // replace character here and write result to new file
        for (int i = 0; i < line.length(); ++i)
        {
            if (line[i] == replace)
            {
                line[i] = replacemnet;
            }
        }
        outFile << line << std::endl;
    }
    inFile.close();
    outFile.close();
    return SUCCESS;
}
