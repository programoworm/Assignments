#include <iostream>

using namespace std;

template <class T>
T add(T &a, T &b) {
    return a + b;
}

string operator+(string &a, string &b) {
    string c;
    c.append(a);
    c.append(b);
    return c;
}

int main() {
    int a, b;
    cout << "Enter two integers : ";
    cin >> a >> b;
    cout << a << " + " << b << " : " << add<int>(a, b) << endl;
    double c, d;
    cout << "Enter two floats : ";
    cin >> c >> d;
    cout << c << " + " << d << " : " << add<double>(c, d) << endl;
    string e, f;
    cout << "Enter two strings : ";
    cin >> e >> f;
    cout << "'" << e << "' + '" << f << "' : " << add<string>(e, f) << endl;
}
