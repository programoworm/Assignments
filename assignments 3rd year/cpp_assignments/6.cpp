#include <iostream>
#include <math.h>

using namespace std;

class Log {
    private:
        double x, y;    // x log y
    public:
        Log() : x(0), y(0) {}
        Log(double _x, double _y) : x(_x), y(_y) {}

        Log operator+(Log &b) {
            double p1 = pow(y, x);
            double p2 = pow(b.y, b.x);
            Log n(1, p1*p2);
            return n;
        }

        Log operator-(Log &b) {
            double p1 = pow(y, x);
            double p2 = pow(b.y, b.x);
            Log n(1, p1/p2);
            return n; 
        }

        Log power() {
            double p1 = pow(y, x);
            Log n(1, p1);
            return n;
        }

        friend ostream& operator<<(ostream& os, Log &l);
};

ostream& operator<<(ostream& os, Log &l) {
    return os << l.x << " log " << l.y;
}

int main() {
    double x, y;
    Log l1, l2;
    cout << "Enter x and y for the first term in the form (x log y)" << endl;
    cout << "Enter x : ";
    cin >> x;
    cout << "Enter y : ";
    cin >> y;
    l1 = Log(x, y);
    cout << "Enter x and y for the second term in the form (x log y)" << endl;
    cout << "Enter x : ";
    cin >> x;
    cout << "Enter y : ";
    cin >> y;
    l2 = Log(x, y);
    cout << l1 << " + " << l2 << " : ";
    Log l3 = l1 + l2;
    cout << l3 << endl;
    l3 = l1 - l2;
    cout << l1 << " - " << l2 << " : " << l3 << endl;
    cout << "Applying power rule : " << endl;
    l3 = l1.power();
    cout << l1 << " -> " << l3 << endl;
    l3 = l2.power();
    cout << l2 << " -> " << l3 << endl;
}

