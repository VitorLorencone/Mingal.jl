include("../src/AlGeo.jl")
using .AlGeo
using Test

AlD3 = Algeo(3)

@test Multivector <: AlGeo.AbstractGeometricAlgebraType
@test Blade <: AlGeo.AbstractGeometricAlgebraType
@test typeof(Multivectors([1],[1])) <: Blade
@test typeof(Multivectors([1,2],[1,1])) <: Multivector
@test Multivectors([8],[2.5]) == 2.5*e1e2e3
@test Multivectors([1, 2, 3, 4, 5, 6],[1, 2, 3, 4, 5, 6]) == 1 + 2*e1 + 3*e2 + 4*e3 + 5*e1e2 + 6*e1e3