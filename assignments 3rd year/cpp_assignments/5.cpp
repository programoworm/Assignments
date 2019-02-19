#include <iostream>

using namespace std;

#define VECT_MAX 100
#define MAT_ROW 100
#define MAT_COL 100

class Matrix;

class Vector {
    private:
        int col;
        int vect[VECT_MAX];
    public:
        Vector(int c) {
            col = c;
        }

        Vector() {
            col = 101;
                cout << "Enter size of the vector : ";
                cin >> col;
                cout << endl;

            cout << "Enter " << col << " elements : ";

            for(int i = 0;i < col;i++) {
                cin >> vect[i];
            }

            cout << endl;
        }

        friend ostream& operator<<(ostream& os, Vector v);

        friend Vector mult(Vector v, Matrix m);
};

class Matrix {
    private:
        int col;
        int row;
        int mat[MAT_ROW][MAT_COL];
    public:
        Matrix() {
            cout << "Enter the dimension of the matrix (row & column) : ";
            cin >> row >> col;
            cout << endl;

            for(int i = 0;i < row;i++) {
                cout << "Enter row " << i << " : ";
                for(int j = 0;j < col;j++) {
                    cin >> mat[i][j];
                }
            }

        }

        friend Vector mult(Vector v, Matrix m);
};

ostream& operator<<(ostream& os, Vector v){
    if(v.col == 0) {
        os << "<null vector>";
        return os;
    }
    os << "[" << v.vect[0];
    for(int i = 1;i < v.col;i++) {
        os << ", " << v.vect[i];
    }
    os << "] ";
    return os;
}

Vector mult(Vector v, Matrix m) {
    Vector res = Vector(0);

    if(v.col != m.row) {
        cout << "[Error] Dimension mismatch!" << endl;
        return res;
    }

    res.col = m.col;

    for(int i = 0;i < res.col;i++) {
        res.vect[i] = 0;
        for(int j = 0;j < v.col;j++) {
            res.vect[i] += v.vect[j] * m.mat[j][i];
        }
    }

    return res;
}

int main() {
    Vector v;
    Matrix m;
    
    Vector res = mult(v, m);

    cout << "Result : " << res << endl;

    return 0;
}
