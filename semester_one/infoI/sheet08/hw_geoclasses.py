"""Working with classes.

This module implements a class hierarchy of geometric 2D objects. The classes
defined below show basic techniques needed when working with classes, objects,
etc.

References:

.. _Lecture:
   http://www.informatik.uni-freiburg.de/~ki/teaching/ws1617/info1/lecture.html

Authors:
    Bernhard Nebel
    Thorsten Engesser
    Stefan Woelfl

Version:
    WS 2016/17

"""

# from math import pi # why not tau
pi = 3.141592653589793238462643383279502884197169399375105820974944592307816406
tau = 2 * pi
# Damn that limit .. how to continue this number in the next line?


class TwoDObject:
    """Generic class for two dimensional geometric objects.

    We assume that each 2D object has a unique anchor point (e.g., its center
    of mass).

    The class has a counter that keeps track how many objects have been
    created.

    Attributes:
        x (float): x-value of the anchor point.
        y (float): y-value of the anchor point.

    Class Attributes:
        counter (int): Counter for the objects generated.

    Examples:

        >>> a = TwoDObject()
        >>> pos = a.x, a.y
        >>> pos
        (0.0, 0.0)
        >>> repr(a)
        'TwoDObject(x=0.0, y=0.0)'
        >>> b = TwoDObject(x=0.0, y=0.0)
        >>> a == b
        False

    """
    counter = 0

    def __init__(self, x=0.0, y=0.0):
        """Init TwoDObject objects.

        Args:
            x (float, optional): x-value of the anchor point.
                Defaults to 0.0.
            y (float, optional): y-value of the anchor point.
                Defaults to 0.0.

        """
        self.x = x
        self.y = y
        TwoDObject.counter += 1

    def __repr__(self):
        return "TwoDObject(x=%s, y=%s)" % (self.x, self.y)


class Circle(TwoDObject):
    """Circles.

    New Attributes:
        radius (float): Radius of the circle.

    Examples:

        >>> a = Circle(radius=2.0)
        >>> a
        Circle(x=0.0, y=0.0, radius=2.0)
        >>> a.area()   # doctest: +ELLIPSIS
        12.566...

    """

    def __init__(self, x=0.0, y=0.0, radius=1.0):
        """Init Circle objects.

        Args:
            x (float, optional): x-value of the anchor point.
                Defaults to 0.0.
            y (float, optional): y-value of the anchor point.
                Defaults to 0.0.
            radius (float, optional): Radius of the circle.
                Defaults to 0.0.

        """
        self.radius = radius
        super().__init__(x, y)

    def area(self):
        """Calculate the area of the circle."""
        return pi * (self.radius ** 2)

    def change_size(self, percent):
        """Change the size of the circle.

        Operation does not change the anchor.

        Args:
            percent (float): Factor by which we change the size (in percent).

        """
        self.radius *= (percent / 100.0)

    def __repr__(self):
        return "Circle(x=%s, y=%s, radius=%s)" % (self.x, self.y, self.radius)


class Rectangle(TwoDObject):
    """Axis-aligned rectangles.

    New Attributes:
        heigth (float): Height of the rectangle.
        width (float): Width of the rectangle.

    Examples:

        >>> a = Rectangle(height=2.0, width=4.0)
        >>> a.stretch_height(200)
        >>> a
        Rectangle(x=0.0, y=0.0, height=4.0, width=4.0)

    """

    def __init__(self, x=0.0, y=0.0, height=1.0, width=1.0):
        """Init Rectangle objects.

        Args:
            x (float, optional): x-value of the anchor point.
                Defaults to 0.0.
            y (float, optional): y-value of the anchor point.
                Defaults to 0.0.
            height (float, optional): Height of the rectangle.
                Defaults to 1.0.
            width (float, optional): Width of the rectangle.
                Defaults to 1.0.

        """
        self.height = height
        self.width = width
        super().__init__(x, y)

    def area(self):
        """Calculate the area of the rectangle."""
        return self.height * self.width

    def change_size(self, percent):
        """Change the size of the rectangle.

        Operation does not change the anchor.

        Args:
            percent (float): Factor by which we change the size (in percent).

        """
        self.height *= (percent / 100.0)
        self.width *= (percent / 100.0)

    def stretch_height(self, percent):
        """Stretch height of the rectangle.

        Operation does not change the anchor.

        Args:
            percent (float): Factor by which we change the height (in percent).

        """
        self.height *= (percent / 100.0)

    def stretch_width(self, percent):
        """Stretch width of the rectangle.

        See Also:
            stretch_height

        """
        self.width *= (percent / 100.0)

    def __repr__(self):
        return ("Rectangle(x=%s, y=%s, height=%s, width=%s)" %
                (self.x, self.y, self.height, self.width))


class Square(Rectangle):
    """Axis-aligned squares.

    Examples:

        >>> a = Square(side=3.1)
        >>> a.stretch_width(200)
        >>> a
        Square(x=0.0, y=0.0, side=6.2)

    """

    def __init__(self, x=0.0, y=0.0, side=1.0):
        """Init Square objects.

        Args:
            x (float, optional): x-value of the anchor point.
                Defaults to 0.0.
            y (float, optional): y-value of the anchor point.
                Defaults to 0.0.
            side (float, optional): Length of one side of the square.
                Defaults to 1.0.

        """
        super().__init__(x, y, side, side)

    def change_size(self, percent):
        super().change_size(percent)

    stretch_height = change_size
    stretch_width = change_size

    def __repr__(self):
        return "Square(x=%s, y=%s, side=%s)" % (self.x, self.y, self.height)


class Rhombus(Rectangle):
    """A specialised Rectangle, with the coordinates as the middle point.
    it has always the following form:

       ____ <- width
        /\ |
       /  \| <- height
       \  /|
        \/ |

    New Attributes:
        None, luckily we can abuse basically all of the Rectangle functionality

    Using Generic-Rectangle-functions:
        change_size
        stretch_height
        stretch_width

    Examples:

        >>> r = Rhombus(height=2.0, width=4.0)
        >>> r.stretch_height(200)
        >>> r
        Rhombus(x=0.0, y=0.0, height=4.0, width=4.0)


    """

    def __init__(self, x=0.0, y=0.0, height=1.0, width=1.0):
        """Init the Rhombus. Or rather, initializing it as a Rectangle."""
        super().__init__(x, y, height, width)

    def area(self):
        """Calculate the area of the rhombus.
        Note: Rectangle.area() / 2.
        """
        return super().area() / 2

    def __repr__(self):
        """The 'Representation' of a Rhombus"""
        return ("Rhombus(x=%s, y=%s, height=%s, width=%s)" %
                (self.x, self.y, self.height, self.width))


def tk_stuff():
    """Tkinter-example code for representing a Rhombus.
    """
    tk = None

    try:
        import Tkinter as tk
    except ImportError:
        try:
            import tkinter as tk
        except:
            raise
    except:
        raise

    def getpos(r):
        """Returning the four positions of the edges.

        Would usually be implemented as a derivable from 2DObject,
        The decision here was to not to modify the above implementation
        for fulfilling exercise 8.2 c.

        """
        (x1, y1) = (r.x + r.width / 2, r.y)
        (x2, y2) = (r.x, r.y + r.height / 2)
        (x3, y3) = (r.x - r.width / 2, r.y)
        (x4, y4) = (r.x, r.y - r.height / 2)
        return (x1, y1, x2, y2, x3, y3, x4, y4)

    root = tk.Tk()
    cv = tk.Canvas(root, height=600, width=600)
    cv.pack()
    r1 = Rhombus(x=400, y=300, width=200, height=300)
    r2 = Rhombus(x=150, y=300, width=200, height=300)
    cv.create_polygon(getpos(r1), fill='green')
    cv.create_polygon(getpos(r2), fill='red')


def _test():
    import doctest
    doctest.testmod(verbose=True)
    tk_stuff()


if __name__ == "__main__":
    _test()
