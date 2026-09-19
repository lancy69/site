#let metadata = (
  title: [About Lancy],
  author: "Lancy",
)

#html.html({
  html.head({
    html.elem("meta", attrs: (charset: "utf-8"))
    html.title(metadata.title)
    html.link(rel: "author", href: metadata.author)
    html.link(rel: "icon", href: "/favicon.ico")
    html.link(rel: "stylesheet", href: "/styles.css")
  })
  html.elem("body", {
    html.main([
      #title([About])

      A little about me, coming soon.
    ])
  })
})

