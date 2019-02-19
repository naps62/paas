alias Paas.Content.Pun
alias Paas.Repo

[
  %{body: "Geology rocks, but geography is where it's at."},
  %{body: "Bread is like the sun. It rises in the yeast and sets in the waist"},
  %{body: "To the guy who took my antidepressants: I hope you're happy"},
  %{body: "Leather armor is perfect for sneaking out. It's literally made of hide."}
]
|> Enum.each(fn pun ->
  %Pun{}
  |> Pun.changeset(pun)
  |> Repo.insert()
end)
