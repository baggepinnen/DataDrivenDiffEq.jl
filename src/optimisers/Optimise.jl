module Optimise

using LinearAlgebra
using ProximalOperators
using ModelingToolkit
using Optim

abstract type AbstractOptimiser end;
abstract type AbstractSubspaceOptimiser end;
abstract type AbstractScalarizationMethod end;

include("./strridge.jl")
include("./admm.jl")
include("./sr3.jl")
include("./dual_estimation.jl")

#Nullspace for implicit sindy
include("./adm.jl")

export init, init!, fit!, set_threshold!, get_threshold
export STRRidge, ADMM, SR3, DualOptimiser
export ADM

include("./pareto.jl")
export ParetoCandidate
export point, parameter, iter, threshold

export WeightedSum, WeightedExponentialSum, GoalProgramming
export weights

export ParetoFront
export assert_dominance, conditional_add!, set_candidate!



end
