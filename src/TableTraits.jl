__precompile__()
module TableTraits

using NamedTuples
using IteratorInterfaceExtensions

export getiterator, isiterable, isiterabletable

isiterabletable(x::T) where {T} = isiterable(x) && Base.iteratoreltype(x)==Base.HasEltype() && Base.eltype(x)<: NamedTuple

include("utilities.jl")

end # module
