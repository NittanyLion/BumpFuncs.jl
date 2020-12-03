```@meta
CurrentModule = Bump
```

# Bump

This package delivers **bump functions**, i.e. functions on the unit sphere that have infinitely many derivatives. Included functions cover the univariate and multivariate cases, gradients, and Hessians, with and without scale and location normalization.  For further information, see e.g. [a paper by Steven Johnson](https://arxiv.org/abs/1508.04376).

The formula used for the bump function without scale and location normalizations is simply

  exp( 1 / ( ||x||^2 - 1 )  ) if ||x||<1
  
and zero otherwise.


```@index
```

```@autodocs
Modules = [Bump]
#Pages = ["functions.jl"]
```


