module TableTraits

using IteratorInterfaceExtensions

export isiterabletable
export supports_get_columns_copy, get_columns_copy
export supports_get_columns_copy_using_missing, get_columns_copy_using_missing
export supports_get_columns_view, get_columns_view

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

# Column copy trait using Missing

supports_get_columns_copy_using_missing(x::T) where {T} = false

function get_columns_copy_using_missing end

# Column view trait

supports_get_columns_view(x::T) where {T} = false

function get_columns_view end

end # module
