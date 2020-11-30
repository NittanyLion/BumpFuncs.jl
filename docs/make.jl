

#~ push!(LOAD_PATH,"../src/")
using Documenter, Bump

#~ println( names(Bump; imported=true) )

#~ makedocs(
#~     modules=[Bump],
#~     authors="Joris Pinkse",
#~     repo="https://github.com/NittanyLion/Bump.jl/blob/{commit}{path}#L{line}",
#~     sitename="Bump.jl",
#~     format=Documenter.HTML(;
#~         prettyurls=get(ENV, "CI", "false") == "true",
#~         canonical="https://NittanyLion.github.io/Bump.jl",
#~         assets=String[],
#~     ),
#~     pages=[
#~         "Home" => "index.md",
#~     ],
#~ )
#~ makedocs(sitename="My Documentation")



format = Documenter.HTML(edit_link = "master",
                         prettyurls = get(ENV, "CI", nothing) == "true",
                         assets = [
                            String[]
                        ]
)

makedocs(
    modules = [Bump],
    sitename = "Bump.jl",
    authors = "Joris Pinkse",
    # linkcheck = true,
    format = format,
    pages = [
        "Home" => "index.md",
        "LICENSE.md",
    ]
)


deploydocs(
    repo="github.com/NittanyLion/Bump.jl.git"
)


# **************  REMEMBER NOT TO PUT IN BLANK LINES BETWEEN DOCSTRING AND DEFINITIONS
