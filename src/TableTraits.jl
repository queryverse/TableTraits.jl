__precompile__(true)
module TableTraits

using NamedTuples

export getiterator, isiterable, isiterabletable

isiterable{T}(x::T) = method_exists(start, Tuple{T})

function getiterator(x)
    if !isiterable(x)
        error("Can't get iterator for non iterable source.")
    end
    return x
end

isiterabletable{T}(x::T) = isiterable(x) && Base.iteratoreltype(x)==Base.HasEltype() && Base.eltype(x)<: NamedTuple

include("utilities.jl")

end # module
