module Lattices

greet() = print("Hello World!")

export SquareLattice, print_lat, flip!, get_spins, set_spin!

include("utils.jl")
include("structures.jl")

end # module
