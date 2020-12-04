using Bump
using Test

@testset "Bump.jl" begin
    # Write your tests here.
    @test bump(0.0) ≈ 1.0 / ℯ
    @test bump([0.0; 0.0]) ≈ 1.0 / ℯ
end
