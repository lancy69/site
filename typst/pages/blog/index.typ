#let metadata = (
  title: [Lancy's blog],
  author: "Lancy",
  body-attrs: (class: "blog"),
)

#let posts = (
  "2026-09-03-writing-blogs-with-typst",
)

#title([Blog])

#html.elem("ul", {
  for post in posts {
    import post + "/index.typ": metadata

    html.elem("li", {
      html.elem("time", attrs: (datetime: metadata.date.display()), {
        metadata.date.display()
      })
      html.elem("div", {
        link("/blog/" + post, metadata.title)
        html.elem("p", metadata.description)
      })
    })
  }
})
