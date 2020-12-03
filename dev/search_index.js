var documenterSearchIndex = {"docs":
[{"location":"","page":"Home","title":"Home","text":"CurrentModule = Bump","category":"page"},{"location":"#Bump","page":"Home","title":"Bump","text":"","category":"section"},{"location":"","page":"Home","title":"Home","text":"This package delivers bump functions, i.e. functions on the unit sphere that have infinitely many derivatives. Included functions cover the univariate and multivariate cases, gradients, and Hessians, with and without scale and location normalization.  For further information, see e.g. [a paper by Steven Johnson][https://arxiv.org/abs/1508.04376].","category":"page"},{"location":"","page":"Home","title":"Home","text":"","category":"page"},{"location":"","page":"Home","title":"Home","text":"Modules = [Bump]\n#Pages = [\"functions.jl\"]","category":"page"},{"location":"#Bump.bump-Tuple{AbstractFloat,AbstractFloat,AbstractFloat}","page":"Home","title":"Bump.bump","text":"bump(x::AbstractFloat, x0::AbstractFloat, r::AbstractFloat)\n\nCompute a bump function at (x-x0) / r.\n\n\n\n\n\n","category":"method"},{"location":"#Bump.bump-Tuple{AbstractFloat}","page":"Home","title":"Bump.bump","text":"bump(x::AbstractFloat)\n\nCompute a bump function at x.\n\n\n\n\n\n","category":"method"},{"location":"#Bump.bump-Tuple{Array{var\"#s12\",1} where var\"#s12\"<:AbstractFloat,Array{var\"#s12\",1} where var\"#s12\"<:AbstractFloat,Array{var\"#s12\",1} where var\"#s12\"<:AbstractFloat}","page":"Home","title":"Bump.bump","text":"bump(x::Vector{AbstractFloat}, x0::Vector{AbstractFloat}, r::Vector{AbstractFloat})\n\nCompute a vector bump function at x centered at x0 scaled by r (element-wise)\n\n\n\n\n\n","category":"method"},{"location":"#Bump.bump-Tuple{Array{var\"#s12\",1} where var\"#s12\"<:AbstractFloat}","page":"Home","title":"Bump.bump","text":"bump(x::Vector{AbstractFloat})\n\nCompute a bump function at the vector x.\n\n\n\n\n\n","category":"method"},{"location":"#Bump.dbump-Tuple{AbstractFloat,AbstractFloat,AbstractFloat}","page":"Home","title":"Bump.dbump","text":"dbump(x::AbstractFloat, x0::AbstractFloat, r::AbstractFloat)\n\nCompute the first derivative of a bump function at (x-x0) / r.\n\n\n\n\n\n","category":"method"},{"location":"#Bump.dbump-Tuple{AbstractFloat}","page":"Home","title":"Bump.dbump","text":"dbump(x::AbstractFloat)\n\nCompute the first derivative of a bump function at x.\n\n\n\n\n\n","category":"method"},{"location":"#Bump.dbump-Tuple{Array{var\"#s12\",1} where var\"#s12\"<:AbstractFloat,Array{var\"#s12\",1} where var\"#s12\"<:AbstractFloat,Array{var\"#s12\",1} where var\"#s12\"<:AbstractFloat}","page":"Home","title":"Bump.dbump","text":"dbump(x::Vector{AbstractFloat}, x0::Vector{AbstractFloat}, r::Vector{AbstractFloat})\n\nCompute the gradient of a vector bump function at x centered at x0 scaled by r (element-wise)\n\n\n\n\n\n","category":"method"},{"location":"#Bump.dbump-Tuple{Array{var\"#s12\",1} where var\"#s12\"<:AbstractFloat}","page":"Home","title":"Bump.dbump","text":"dbump(x::Vector{AbstractFloat})\n\nCompute the first derivative of a bump function at the vector x.\n\n\n\n\n\n","category":"method"},{"location":"#Bump.ddbump-Tuple{AbstractFloat,AbstractFloat,AbstractFloat}","page":"Home","title":"Bump.ddbump","text":"ddbump(x::AbstractFloat, x0::AbstractFloat, r::AbstractFloat)\n\nCompute the second derivative of a bump function at (x-x0) / r.\n\n\n\n\n\n","category":"method"},{"location":"#Bump.ddbump-Tuple{AbstractFloat}","page":"Home","title":"Bump.ddbump","text":"ddbump(x::AbstractFloat)\n\nCompute the second derivative of a bump function at x.\n\n\n\n\n\n","category":"method"},{"location":"#Bump.ddbump-Tuple{Array{var\"#s12\",1} where var\"#s12\"<:AbstractFloat,Array{var\"#s12\",1} where var\"#s12\"<:AbstractFloat,Array{var\"#s12\",1} where var\"#s12\"<:AbstractFloat}","page":"Home","title":"Bump.ddbump","text":"ddbump(x::Vector{AbstractFloat}, x0::Vector{AbstractFloat}, r::Vector{AbstractFloat})\n\nCompute the Hessian of a vector bump function at x centered at x0 scaled by r (element-wise)\n\n\n\n\n\n","category":"method"},{"location":"#Bump.ddbump-Tuple{Array{var\"#s12\",1} where var\"#s12\"<:AbstractFloat}","page":"Home","title":"Bump.ddbump","text":"ddbump(x::Vector{AbstractFloat})\n\nCompute the second derivative of a bump function at the vector x.\n\n\n\n\n\n","category":"method"}]
}
