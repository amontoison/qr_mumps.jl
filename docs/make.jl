using Documenter, qr_mumps

makedocs(
  modules = [qr_mumps],
  doctest = true,
  linkcheck = true,
  strict = true,
  format = Documenter.HTML(assets = ["assets/style.css"], prettyurls = get(ENV, "CI", nothing) == "true"),
  sitename = "qr_mumps.jl",
  pages = ["Introduction" => "index.md",
           "Features" => "features.md",
           "API" => "api.md",
           "Control parameters" => "control_parameters.md",
           "Information parameters" => "information_parameters.md",
           "Performance tuning" => "performance.md",
           "Reference" => "reference.md",
          ]
)

deploydocs(repo = "github.com/JuliaSmoothOptimizers/qr_mumps.jl.git")