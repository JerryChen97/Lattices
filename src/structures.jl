mutable struct SquareLattice
    L::Int
    point_list
    coordinates_next
    SquareLattice(L) = (
        lat=new(); 
        lat.L = L;
        lat.point_list = Array{Any, 2}(undef, L, L);
        lat.coordinates_next = [mod(i+1, 1:L) for i in 1:L]
    )
end
