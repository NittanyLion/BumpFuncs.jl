#include("Bump.jl")
push!(LOAD_PATH, pwd() )

using Bump

println( bump(0.0) )
println( ddbump(0.1) )

