using Bump
using Test

@testset "Bump.jl" begin
    @test bump(0.0) ≈ 1.0 / ℯ
    @test bump([0.0; 0.0]) ≈ 1.0 / ℯ
    @test bump( 3.5, 3.5, 1.0 ) ≈ 1.0 / ℯ
    @test bump( [3.5; 3.5], [3.5, 3.5], [1.0,1.0,1.0] ) ≈ 1.0 / ℯ
    @test bump(1.0) == 0.0
    @test dbump(0.5) ≈ -0.46861713442795866
    @test ddbump(0.1) ≈ -0.758014676692494
end
