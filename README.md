# Lattices
Homework 1 for Computational Physics

## Introduction
In this repo I want to implement a program for simulating parts of the lattices used commonly in Physics.
In principle, such a generic purpose should not be implemented too much specifically.
However, considering the fact that there are only hours till the deadline of this homework, I decided to start from such a concrete and simple model.

## Square Lattice

### Square Lattice with Periodic Boundary Conditions

#### mutable structure: SquareLattice
This is the first structure we defined for the Lattice package.
It has three different elements:

    `L` : the length of the square lattice. This element defines the shape of the square lattice. For example, if the lattice is of the size 2 by 2, then `L` should be 2.

    `point_list` : the list of the value on each vertices of the lattice. We require this to be a `L` by `L` array.

    `coordinates_next` : the adjacency list for x axis or y axis of the square lattice. Since the square lattice with periodic boundary conditions has equal size on either dimension and shows identical behavior on the boudnary condition, we can use only one 1D array to represent the adjacency list.

#### basic usages
Currently we only offer a limited number of methods to make use of the SquareLattice structure.

    `SquareLattice(L::Int)` : create a square lattice of size `L` by `L`. The `point_list` will be undefined.  
    
    `SquareLattice(list::Array)` : create a square lattice with an input 2D array. The length `L` will be automatcally defined according to the input array `list`.
    
    `print_lat(lat::SquareLattice)` : print and show the square lattice.
    
    `flip!(lat::SquareLattice, position::Tuple{Int, Int})` : flip the specific spin at `position`.
    
    `get_spins(lat::SquareLattice, position_list::Array{Tuple{Int, Int}, 1})` : get the spins value at specific positions in `position_list`.

## Outlook
In the future, we will consider offer a more abstract and specific structure for a generic lattice.

What's more, the statistics and arbitrary manipulation on spins is on the way.
