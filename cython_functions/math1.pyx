# distutils: language=c++
# distutils: sources = math_prac.cpp

from libcpp.string cimport string

cdef extern from "math_lib.h":
    int start()
    const char* hello()
    int add(int, int)
    int trail(int)

cpdef number():
    return start()

cpdef Hello():
    return hello()

cpdef addition(one1, two2):
    return add(one1, two2)

cpdef abs(y):
    return trail(y)

