module TableTraits

using IteratorInterfaceExtensions

export isiterabletable, supports_get_columns_copy, get_columns_copy, supports_get_columns_view, get_columns_view

# Iterable table trait

function isiterabletable(x::T) where {T}
    isiterable(x) || return false

    if Base.IteratorEltype(x)==Base.HasEltype()
        return Base.eltype(x) <: NamedTuple
    else
        return missing
    end
end

# Column copy trait

supports_get_columns_copy(x::T) where {T} = false

function get_columns_copy end

# Column view trait

supports_get_columns_view(x::T) where {T} = false

function get_columns_view end

end # module
