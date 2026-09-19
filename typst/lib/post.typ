#let post(
  title: [Untitled],
  author: "Lancy",
  description: [],
  keywords: ("typst"),
  date: datetime(year: 2005, month: 9, day: 3),
  body,
) = html.html({
  html.head({
    html.elem("meta", attrs: (charset: "utf-8"))
    html.title(title)
    html.link(rel: "author", href: author)
    html.link(rel: "icon", href: "/favicon.ico")
    html.link(rel: "stylesheet", href: "/styles.css")
  })
  html.elem("body", attrs: (class: "post"), {
    html.main({
      html.elem("header", {
        html.elem("h1", title)
        html.elem("time", attrs: (datetime: date.display()), date.display())
      })
      body
    })
  })
})
