#let metadata = (
  title: [Lancy\'s site],
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
  html.elem("body", attrs: (class: "home"), {
    html.main([
      #title([Welcome to my personal site!])

      Something thoughtful is taking shape here.

      #link("/about/")[about] · #link("/blog/")[blog]
    ])
  })
})
