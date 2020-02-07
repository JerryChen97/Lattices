using Lattices

@testset "Square Lattice" begin
    a = rand([1, -1], 2, 2)
    lat_a = SquareLattice(a)
    @testset "Constructor" begin
        @test (typeof(lat_a) === SquareLattice)
        # print_lat(lat_a)

        b = rand([0, 2], 2, 2)
        @test_throws AssertionError lat_b = SquareLattice(b)

        c = rand([1, -1], 2, 3)
        @test_throws AssertionError lat_c=SquareLattice(c)

    end

    @testset "Flipping one spin" begin
        # a = rand([1, -1], 2, 2)
        # lat_a = SquareLattice(a)
        lat_a2 = deepcopy(lat_a)
        # print_lat(lat_a)

        flip_pos = (1,1)
        flip!(lat_a2, (flip_pos))
        # print_lat(lat_a)
        @test (lat_a.point_list[flip_pos...]+lat_a2.point_list[flip_pos...]==0)
    end

    @testset "Get spins" begin
        # print_lat(lat_a)
    end

end
