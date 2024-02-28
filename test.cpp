#include <iostream>
#include <vector>
using namespace std;
void swapNumbers(int &a, int &b) {
    int temp = a;
    a = b;
    b = temp;
}

int main() {
    int num1 = 5;
    int num2 = 10;

    std::cout << "Before swapping: " << num1 << ", " << num2 << std::endl;

    vector<int> i = {1, 2, 3};

    swapNumbers(num1, num2);

    std::cout << "After swapping: " << num1 << ", " << num2 << std::endl;

    return 0;
}
