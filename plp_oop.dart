class Shape:
    def area(self):
        pass


class Rectangle(Shape):
    def __init__(self, width, height):
        self.width = width
        self.height = height
    
    # Override the area method
    def area(self):
        return self.width * self.height


class Square(Rectangle):
    def __init__(self, side_length):
        super().__init__(side_length, side_length)


def initialize_from_file(filename):
    shapes = []
    with open(filename, 'r') as file:
        for line in file:
            values = line.split(',')
            if values[0] == 'Rectangle':
                shapes.append(Rectangle(int(values[1]), int(values[2])))
            elif values[0] == 'Square':
                shapes.append(Square(int(values[1])))
    return shapes

 print_areas(shapes):
    for shape in shapes:
        print(f"Area of {type(shape).__name__}: {shape.area()}")


def main():
    shapes = initialize_from_file('shapes.txt')
    print_areas(shapes)


if __name__ == "__main__":
    main()