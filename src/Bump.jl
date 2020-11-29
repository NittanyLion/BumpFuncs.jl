module Bump





F = AbstractFloat;  V = Vector{<:F}


function ugly(x::F)
    1.0 / ( x^2 - 1.0 )
end

function bump(x::F)
    ifelse( abs(x) < 1.0, exp( ugly( x ) ), 0.0 )
end

function dbump(x::F)
    if abs(x) >= 1.0 return 0.0 end
    u = ugly(x)
    -2.0 * x * u^2 * exp(u) 
end

function ddbump(x::F)
    if abs(x) >= 1.0 return 0.0 end
    u = ugly(x)
    (6.0 * x^4 - 2.0) * u^4 * exp(u)
end

function sumsqr( x::V )
    sum( x[i]^2 for i = 1: length(x) )
end

function ugly( x::V )
    1.0 / ( sumsqr( x ) - 1.0 )
end

function bump( x::V )
    ifelse( sumsqr(x) < 1.0, exp( ugly( x ) ), 0.0 )
end

function dbump( x::V )
    if sumsqr(x) >= 1.0 return 0.0 end
    u = ugly( x )
    - 2.0 * x * u^2 * exp( u )
end

function ddbump( x::V )
    if sumsqr(x) >= 1.0 return 0.0 end
    u = ugly( x )
    [ 4.0 * u * ( 2.0 + u ) * x[i] * x[j] - ifelse( i == j, 2.0, 0.0 ) 
            for i = 1:length(x), j = 1:length(x) ] * u^2 * exp( u ) 
end


function bump( x::F, x0::F, r::F )
    bump( ( x - x0 ) / r )
end

function dbump( x::F, x0::F, r::F )
    dbump( ( x - x0 ) / r ) / r
end

function ddbump( x::F, x0::F, r::F )
    ddbump( ( x- x0 ) /r ) / r^2
end

function bump( x::V, x0::V, r::V )
    bump( ( x - x0 ) ./ r )
end

function dbump( x::V, x0::V, r::V )
    dbump( ( x - x0 ) ./ r ) ./ r
end

function ddbump( x::V, x0::V, r::V )
    ddbump( ( x- x0 ) ./r ) ./ ( r .* r )
end


#~ x = -0.74
#~ println( bump(x), " ", dbump(x), " ", ddbump(x) )
#~ println( bump(x, 0.0, 1.0), " ", dbump(x, 0.0, 1.0), " ", ddbump(x, 0.0, 1.0) )
#~ println( bump(-0.11, 0.0, 0.25), " ", dbump(-0.11, 0.0, 0.25), " ", ddbump(-0.11, 0.0, 0.25) )
#~ println( bump([-0.11; -0.11], [0.0,0.0], [0.25,0.25]), " ", dbump([-0.11; -0.11],[0.0,0.0],[0.25,0.25]), " ", ddbump([-0.11; -0.11], [0.0,0.0], [0.25,0.25]) )

end


