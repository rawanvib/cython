#include "Rectangle.h"
#include <iostream>

using namespace shapes;
Rectangle::Rectangle(int X0, int Y0, int X1, int Y1, char *Name)
{
    x0 = X0;
    y0 = Y0;
    x1 = X1;
    y1 = Y1;
    name = Name;
}

Rectangle::~Rectangle(){
}

int Rectangle::getLength(){
    return (x1-x0);

}

int Rectangle::getHeight()
{
    return (y1-y0);
}

int Rectangle::getArea()
{
    return (x1 - x0) * (y1 - y0);
}

char * Rectangle::nameRectangle(){
    return name;
}

bool Rectangle::rectConfirm(bool data){
    return data;
}

//
//
//int main(){
//    Rectangle first(10, 10, 20, 10);
//    std::cout<<first.getLength();
//
//    return 0;
//}