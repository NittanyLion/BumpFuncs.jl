using Bump
using Test

@testset "Bump.jl" begin
    @test bump(0.0) ≈ 1.0 / ℯ
    @test bump([0.0; 0.0]) ≈ 1.0 / ℯ
    @test bump( 3.5, 3.5, 1.0 ) ≈ 1.0 / ℯ
    @test bump( [3.5; 3.5], [3.5, 3.5], [1.0,1.0] ) ≈ 1.0 / ℯ
    @test bump(1.0) == 0.0
    @test dbump(0.5) ≈ -0.46861713442795866
    @test ddbump(0.1) ≈ -0.758014676692494
    @test dbump(0.5,0.0,1.0) ≈ dbump(0.5)
    @test ddbump(0.5,0.0,2.0) ≈ ddbump(0.5) / 4.0
    @test dbump([0.5],[0.2],[2.0]) ≈ dbump(0.5,0.2,2.0)
    @test ddbump([0.5],[0.2],[2.0]) ≈ ddbump(0.5,0.2,2.0)
    @test dbump([0.3]) ≈ dbump(0.3)
    @test ddbump([0.3]) ≈ ddbump(0.3)
end
