__precompile__(true)
module TableTraits

using NamedTuples
using IteratorInterfaceExtensions

export getiterator, isiterable, isiterabletable

isiterabletable{T}(x::T) = isiterable(x) && Base.iteratoreltype(x)==Base.HasEltype() && Base.eltype(x)<: NamedTuple

include("utilities.jl")

end # module
