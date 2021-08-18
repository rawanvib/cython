# distutils: language=c++
# distutils: sources = Rectangle.cpp

from libcpp cimport string
from libcpp cimport bool


cdef extern from "Rectangle.h" namespace "shapes":
    cdef cppclass Rectangle:
        Rectangle(int, int, int, int, char*) except +
        int x0, y0, x1, y1
        int getLength()
        int getHeight()
        int getArea()
        void move(int, int)
        char* nameRectangle()
        bint rectConfirm(bint)

cdef class PyRectangle:
    cdef Rectangle *thisptr   # hold a C++ instance which we're wrapping
    def __cinit__(self, int x0, int y0, int x1, int y1, char *name):
        self.thisptr = new Rectangle(x0, y0, x1, y1, name)
    def __dealloc__(self):
        del self.thisptr
    def getLength(self):
        return self.thisptr.getLength()
    def getHeight(self):
        return self.thisptr.getHeight()
    def getArea(self):
        return self.thisptr.getArea()
    def name_of_rectangle(self):
        return self.thisptr.nameRectangle()
    def is_rectangle(self, data):
        return self.thisptr.rectConfirm(data)
