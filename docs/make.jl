using Documenter

makedocs(
    # modules = [],
    format = Documenter.HTML(),
    pages = [
        "Home" => "index.md",
        "Step-by-step" => ["step-by-step/proposal.md","step-by-step/report.md",],
        "Week-by-week" => ["week-by-week/leadership.md","week-by-week/aerodynamics.md","week-by-week/structures.md","week-by-week/graphics.md","week-by-week/propulsion.md","week-by-week/manufacturing.md","week-by-week/systems.md",],
        "How-to's" => ["how-to/read.md","how-to/conceptualdesign.md","how-to/preliminarydesign.md","how-to/detaileddesign.md","how-to/sensitivity.md",],
        "Technical Writing" => ["techwriting/latex.md","techwriting/gantt.md","techwriting/tables.md","techwriting/tikz.md","techwriting/xdsm.md"],
    ],
    repo="https://github.com/BYU-Aeronautics-Club/DBFguides.jl/blob/{commit}{path}#L{line}",
    sitename="DBF Guides",
    authors="Judd Mehr <juddmehr@gmail.com>",
)

deploydocs(
    repo = "github.com/BYU-Aeronautics-Club/DBFguides.jl.git"
)