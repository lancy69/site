#let metadata = (
  title: [Lancy's blog],
  author: "Lancy",
  body-attrs: (class: "blog"),
)

#let posts = (
  "2026-09-03-writing-blogs-with-typst/index",
)

#title([Blog])

#html.elem("ul", {
  for post in posts {
    import post + ".typ": metadata

    html.elem("li", {
      html.elem("time", attrs: (datetime: metadata.date.display()), {
        metadata.date.display()
      })
      html.elem("div", {
        link("/blog/" + post.trim("index", at: end), metadata.title)
        html.elem("p", metadata.description)
      })
    })
  }
})
