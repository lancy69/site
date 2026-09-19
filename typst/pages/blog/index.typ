#let metadata = (
  title: [Lancy\'s blog],
  author: "Lancy",
)

#let posts = (
  "2026-09-04-a-little-chinese-poem/index",
  "2026-09-03-writing-a-typst-blog/index",
)

#html.html({
  html.head({
    html.elem("meta", attrs: (charset: "utf-8"))
    html.title(metadata.title)
    html.link(rel: "author", href: metadata.author)
    html.link(rel: "icon", href: "/favicon.ico")
    html.link(rel: "stylesheet", href: "/styles.css")
  })
  html.elem("body", attrs: (class: "blog"), {
    html.main({
      title([Blog])

      html.elem("ul", {
        for post in posts {
          import post + ".typ": metadata

          html.elem("li", {
            html.elem("time", attrs: (datetime: metadata.date.display()), {
              metadata.date.display()
            })
            link("/blog/" + post.trim("index", at: end), metadata.title)
          })
        }
      })
    })
  })
})
