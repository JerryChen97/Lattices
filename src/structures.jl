mutable struct SquareLattice{Int}
    L::Int
    point_list = []
    coordinates_next
    SquareLattice(L) = (
        lat=new(); 
        lat.L = L;
        lat.coordinates_next = [mod(i+1, 1:L) for i in 1:L]
    )
end
