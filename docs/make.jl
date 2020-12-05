push!(LOAD_PATH, pwd() )
using Documenter, BumpFuncs


format = Documenter.HTML(edit_link = "master",
                         prettyurls = get(ENV, "CI", nothing) == "true",
                         assets = String[],
)


makedocs(
    modules = [BumpFuncs],
    sitename = "BumpFuncs.jl",
    authors = "Joris Pinkse",
    format = format,
    pages = [
        "Home" => "index.md"
    ]
)


deploydocs(
    repo="github.com/NittanyLion/BumpFuncs.jl.git"
#    versions = ["stable" => "v^", "v#.#", devurl => devurl]
)





