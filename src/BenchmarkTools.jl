module BenchmarkTools

using JSON
using Base.Iterators

using Statistics
using Printf
using MacroTools: MacroTools, prewalk, postwalk, @capture
using OrderedCollections: OrderedDict


const BENCHMARKTOOLS_VERSION = v"0.4.4"

##############
# Parameters #
##############

include("parameters.jl")

export loadparams!

##############
# Trial Data #
##############

include("trials.jl")

export gctime,
       memory,
       allocs,
       params,
       ratio,
       judge,
       isinvariant,
       isregression,
       isimprovement,
       median,
       mean,
       rmskew!,
       rmskew,
       trim

##################
# Benchmark Data #
##################

include("groups.jl")

export BenchmarkGroup,
       invariants,
       regressions,
       improvements,
       @tagged,
       addgroup!,
       leaves

######################
# Execution Strategy #
######################

include("execution.jl")

export tune!,
       warmup,
       @benchmark,
       @benchmarkable,
       @belapsed,
       @btime,
       @localbenchmark,
       @localbelapsed,
       @localbtime

#################
# Serialization #
#################

include("serialization.jl")

end # module BenchmarkTools
