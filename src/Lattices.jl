module Lattices

greet() = print("Hello World!")

export SquareLattice, print_lat

include("utils.jl")
include("structures.jl")


function print_lat(lat::SquareLattice)
    print("Square Lattice with length ", lat.L, "\nPoint List: ", lat.point_list, "\n")
end

end # module
