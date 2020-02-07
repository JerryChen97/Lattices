using Lattices
lat = SquareLattice(4)
print_lat(lat)

a = Array{Int, 2}(undef, 2, 2)
lat_a = SquareLattice(a)
print_lat(lat_a)
