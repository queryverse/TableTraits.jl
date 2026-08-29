using Documenter, TableTraits

makedocs(
	modules = [TableTraits],
	sitename = "TableTraits.jl",
	format = Documenter.HTML(analytics = "UA-132838790-1"),
	warnonly = [:missing_docs],
	pages = [
        "Introduction" => "index.md"
    ]
)

deploydocs(
    repo = "github.com/queryverse/TableTraits.jl.git"
)
