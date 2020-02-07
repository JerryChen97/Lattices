mutable struct SquareLattice
    L::Int
    point_list
    coordinates_next
    # initialize an arbitrary SquareLattice with a given square length
    SquareLattice(L::Int) = (
        lat=new();
        lat.L = L;
        lat.point_list = Array{Any, 2}(undef, L, L);
        lat.coordinates_next = [mod(i+1, 1:L) for i in 1:L];
        lat
    )
    # initialize a specific SquareLattice with given data of specific form
    # here we only consider the S = 1/2, S_z in {1, -1}
    function SquareLattice(twoD_list :: Array)
        size_of_list = size(twoD_list)
        @assert size_of_list[1] == size_of_list[2]
        lat=new()
        L = size_of_list[1]
        lat.L = L
        lat.point_list = twoD_list
        lat.coordinates_next = [mod(i+1, 1:L) for i in 1:L]
        lat
    end

    function SumOver()
        throw("NotImplemented")
    end
end

