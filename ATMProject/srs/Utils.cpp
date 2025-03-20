#include "Utils.h"

#include <sstream>       // For string stream
#include <ctime>         //get current time , unix time epoch(calc the seconds numbers till our second noe ) , reference 1/1/1970 from this thay calc the time by seconds 
#include <iomanip>       //manipulation formationg of time , time will appere as seconds


// Function to get the current time
std::string getCurrentTime() 
{
    std::ostringstream oss; //format time output
    std::time_t now = std::time(nullptr); //get current syatem time as seconds from 1/1/1970 till now 
    oss << std::put_time(std::localtime(&now), "%Y-%m-%d %H:%M:%S"); //format time as yyyy:mm:dd hh:mm:ss
	
    return oss.str();  //convert the stream to string to return it 
}

