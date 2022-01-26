int depth = 0;
int dir = 1;

void setup()
{
    size(800, 800);
    frameRate(5);
    fill(0);
    noStroke();
}

void draw()
{
    background(200);
    sierpinski(depth, width / 2, 40, width);
    depth+=dir;
    if (depth > 8)
    {
        dir = -1;
    } else if (depth <= 0)
    {
        dir = 1;
    }
}

void sierpinski(int n, float x, float y, float size)
{
    // x and y of top corner
    // size: length of a side
    if (n <= 0)
    {
        triangle(x, y, x-size/2, y+size*(float)Math.sqrt(3)/2, x+size/2, y+size*(float)Math.sqrt(3)/2);
    } else {
        sierpinski(n-1, x, y, size/2);
        sierpinski(n-1, x-size/4, y+size*(float)Math.sqrt(3)/4, size/2);
        sierpinski(n-1, x+size/4, y+size*(float)Math.sqrt(3)/4, size/2);
    }
}
