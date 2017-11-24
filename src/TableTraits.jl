__precompile__(true)
module TableTraits

using NamedTuples
using IteratorInterfaceExtensions

export getiterator, isiterable, isiterabletable, supports_get_columns_copy,
    get_columns_copy

# Iterable table trait

isiterabletable(x::T) where {T} = isiterable(x) && Base.iteratoreltype(x)==Base.HasEltype() && Base.eltype(x)<: NamedTuple

# Column copy trait

supports_get_columns_copy(x::T) where {T} = false

function get_columns_copy end

include("utilities.jl")

end # module
