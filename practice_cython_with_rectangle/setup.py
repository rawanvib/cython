from distutils.core import setup
from Cython.Build import cythonize

setup(ext_modules = cythonize(
           "rect.pyx",language_level="3"))                 # our Cython source
           # sources="Rectangle.cpp",  # additional source file(s)
           # language="c++"))             # generate C++ code

# in rect.pyx constructor is declared as except +
