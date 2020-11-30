F = AbstractFloat;  V = Vector{<:F}

macro testrpositive()
    esc( :( if r == 0 && x == 0 throw(DomainError("x=r=0.0", "zero divided by zero")) end ) )
end

function ugly(x::F)
    1.0 / ( x^2 - 1.0 )
end


# scalar functions without arguments
"""
    bump(x::AbstractFloat)
    
Compute a bump function at x.
"""
function bump(x::F)
    ifelse( abs(x) < 1.0, exp( ugly( x ) ), 0.0 )
end

"""
    dbump(x::AbstractFloat)

Compute the first derivative of a bump function at x.
"""
function dbump(x::F)
    if abs(x) >= 1.0 return 0.0 end
    u = ugly(x)
    -2.0 * x * u^2 * exp(u) 
end

"""
    ddbump(x::AbstractFloat)

Compute the second derivative of a bump function at x.
"""
function ddbump(x::F)
    if abs(x) >= 1.0 return 0.0 end
    u = ugly(x)
    (6.0 * x^4 - 2.0) * u^4 * exp(u)
end

"""
    bump(x::AbstractFloat, x0::AbstractFloat, r::AbstractFloat)
    
Compute a bump function at (x-x0) / r.
"""
function bump( x::F, x0::F, r::F )
    @testrpositive
    bump( ( x - x0 ) / r )
end

"""
    dbump(x::AbstractFloat, x0::AbstractFloat, r::AbstractFloat)

Compute the first derivative of a bump function at (x-x0) / r.
"""
function dbump( x::F, x0::F, r::F )
    @testrpositive
    dbump( ( x - x0 ) / r ) / r
end


"""
    ddbump(x::AbstractFloat, x0::AbstractFloat, r::AbstractFloat)

Compute the second derivative of a bump function at (x-x0) / r.
"""
function ddbump( x::F, x0::F, r::F )
    @testrpositive
    ddbump( ( x- x0 ) /r ) / r^2
end

# vector functions

function sumsqr( x::V )
    sum( x[i]^2 for i = 1: length(x) )
end

function ugly( x::V )
    1.0 / ( sumsqr( x ) - 1.0 )
end

"""
    bump(x::Vector{AbstractFloat})
    
Compute a bump function at the vector x.
"""
function bump( x::V )
    ifelse( sumsqr(x) < 1.0, exp( ugly( x ) ), 0.0 )
end

"""
    dbump(x::Vector{AbstractFloat})
    
Compute the first derivative of a bump function at the vector x.
"""
function dbump( x::V )
    if sumsqr(x) >= 1.0 return 0.0 end
    u = ugly( x )
    - 2.0 * x * u^2 * exp( u )
end


"""
    ddbump(x::Vector{AbstractFloat})
    
Compute the second derivative of a bump function at the vector x.
"""
function ddbump( x::V )
    if sumsqr(x) >= 1.0 return 0.0 end
    u = ugly( x )
    [ 4.0 * u * ( 2.0 + u ) * x[i] * x[j] - ifelse( i == j, 2.0, 0.0 ) 
            for i = 1:length(x), j = 1:length(x) ] * u^2 * exp( u ) 
end


macro sanitycheck()
    esc( 
        quote
            if length(x0) ≠ length(x) throw( DimensionMismatch("dimensions of x and x0 should match") ) end
            if length(r) ≠ length(x)  throw( DimensionMismatch("dimensions of x and r should match") ) end
            for i = 1:length(x)
                if r[i] == x[i] == 0.0 throw( DomainError("x=r=0.0", "zero divided by zero")) end 
            end
        end )
end

"""
    bump(x::Vector{AbstractFloat}, x0::Vector{AbstractFloat}, r::Vector{AbstractFloat})
    
Compute a vector bump function at x centered at x0 scaled by r (element-wise)
"""
function bump( x::V, x0::V, r::V )
    @sanitycheck
    bump( ( x - x0 ) ./ r )
end

"""
    dbump(x::Vector{AbstractFloat}, x0::Vector{AbstractFloat}, r::Vector{AbstractFloat})
    
Compute the gradient of a vector bump function at x centered at x0 scaled by r (element-wise)
"""
function dbump( x::V, x0::V, r::V )
     @sanitycheck
    dbump( ( x - x0 ) ./ r ) ./ r
end

"""
    ddbump(x::Vector{AbstractFloat}, x0::Vector{AbstractFloat}, r::Vector{AbstractFloat})
    
Compute the Hessian of a vector bump function at x centered at x0 scaled by r (element-wise)
"""
function ddbump( x::V, x0::V, r::V )
     @sanitycheck
    ddbump( ( x- x0 ) ./r ) ./ ( r .* r )
end


