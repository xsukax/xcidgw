#include <iostream>

int main() {
  std::string cid;
  std::cout << "Enter CID: ";
  std::cin >> cid;
  std::cout << "https://xsukax.com/ipfs/cid.html?cid=" << cid << std::endl;
  std::string url = "https://xsukax.com/ipfs/cid.html?cid=";

  #ifdef _WIN32
  std::string command = "start " + url + cid;
  #elif __APPLE__
  std::string command = "open " + url + cid;
  #elif __linux__
  std::string command = "xdg-open " + url + cid;
  #else
  std::string command = ""; // Unsupported OS
  #endif

  if (command != "") {
    system(command.c_str());
    std::cout << "URL opened in the default browser!" << std::endl;
  } else {
    std::cout << "Unsupported operating sysem!" << std::endl;
  }
  return 0;
}
