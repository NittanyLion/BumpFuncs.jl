
using Documenter, Bump



format = Documenter.HTML(edit_link = "master",
                         prettyurls = get(ENV, "CI", nothing) == "true",
                         assets = String[],
)

makedocs(
    modules = [Bump],
    sitename = "Bump.jl",
    authors = "Joris Pinkse",
    format = format,
    pages = [
        "Home" => "index.md"
    ]
)


deploydocs(
    repo="github.com/NittanyLion/Bump.jl.git"
)

