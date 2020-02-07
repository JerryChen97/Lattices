using Lattices

@testset "Square Lattice Constructor" begin
    a = rand([1, -1], 2, 2)
    @test (lat_a = SquareLattice(a); typeof(lat_a) === SquareLattice)

    b = rand([0, 2], 2, 2)
    @test_throws AssertionError lat_b = SquareLattice(b)

    c = rand([1, -1], 2, 3)
    @test_throws AssertionError lat_c=SquareLattice(c)

end
