#include <fstream>
#include "nlohmann/json.hpp"
using json = nlohmann::json;

int main() {
  std::ifstream f("example.json");
  json data = json::parse(f);
  return 0;
}
