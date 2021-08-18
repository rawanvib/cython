import rect

if __name__ == '__main__':

    # pass string
    name = bytes('new', 'utf-8')
    pyRect = rect.PyRectangle(100, 100, 300, 500,name)

    # pass integers
    length = pyRect.getLength()
    print(pyRect.name_of_rectangle().decode('utf-8'))
    print('length of rectangle is ',length)

    # pass boolean
    data= False
    dat = pyRect.is_rectangle(data)
    print(dat)