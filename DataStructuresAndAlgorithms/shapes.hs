module Shape where 

data CoordType = Coord Float Float deriving Show

data Shape = Rectangle CoordType CoordType
            | Circle CoordType Float
       deriving Show

xElt (Coord x _ ) = x 
yElt (Coord _ y ) = y

area (Rectangle corner1 corner2) 
     = abs(xElt corner1 - xElt corner2) *
       abs(yElt corner1 - yElt corner2)

area (Circle _ radius)
    = pi * radius * radius
