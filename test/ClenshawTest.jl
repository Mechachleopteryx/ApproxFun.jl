using ApproxFun, StaticArrays, Base.Test

test_function = Fun(sin, 50)

@test test_function(0.9) ≈ clenshaw(0.9, SVector{50}(test_function.coefficients))
