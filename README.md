# 2D-Random-Walker

Draws the path of random walkers in 2D space, and also plots the mean squared displacement.

Algorithm:
- Generate a random number between 0 and 1.00 and assign to "r".
- if r less than 0.25: go left.
- if r between 0.25 and 0.50: go right.
- if r between 0.50 and 0.75: go up.
- if r more than 0.75: go down.
- Repeat mutiple times.

The script also plots the mean squared displacement (MSD).

Reference Used: Computational Physics 2nd Edition - Nicholas J. Giordano and Hisao Nakanishi
