namespace shapes {
    class Rectangle {
    public:
        int x0, y0, x1, y1;
        char *name;
        Rectangle(int x0, int y0, int x1, int y1, char *name);
        ~Rectangle();
        int getLength();
        int getHeight();
        int getArea();
        char *nameRectangle();
        bool rectConfirm(bool data);
    };
}
