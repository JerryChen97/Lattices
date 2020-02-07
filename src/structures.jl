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
        # print("ALL spins one half? ",all_spin_one_half(lat.point_list))
        @assert all_spin_one_half(lat.point_list)
        lat
    end
end


function SumOver()
    throw("NotImplemented")
end

function print_lat(lat:: SquareLattice)
    print("Square Lattice with length ", lat.L, "\nPoint List: ", lat.point_list, "\n")
end

function set_spin!(lat::SquareLattice, position::Tuple{Int, Int}, value::Int)
    @assert (value==1 || value==-1)
    lat.point_list[position...] = value
end

function get_spin(lat::SquareLattice, position::Tuple{Int, Int})
    lat.point_list[position...]
end

function get_spins(lat::SquareLattice, pos_list::Array{Tuple{Int, Int}, 1})
    spin_list = Array{Int, 1}(undef, length(pos_list))
    for i in 1:length(spin_list)
        spin_list[i] = get_spin(lat, pos_list[i])
    end
    spin_list
end

function flip!(lat::SquareLattice, position::Tuple{Int, Int})
    @assert length(position)==2
    lat.point_list[position...] *= -1
end
