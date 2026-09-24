#import "page.typ": page

#let post(
  // Standard document fields
  id: none,
  title: [Untitled],
  author: "Lancy",
  description: [],
  keywords: ("typst"),
  date: datetime(year: 2005, month: 9, day: 3),
  // HTML and post-specific fields.
  html-attrs: (class: "post"),
  show-outline: true,
  body,
) = html.html({
  html.head({
    html.elem("meta", attrs: (charset: "utf-8"))
    html.title(title)
    html.link(rel: "author", href: author)
    html.link(rel: "icon", href: "/favicon.ico")
    html.link(rel: "stylesheet", href: "/styles.css")
  })
  html.elem("body", attrs: html-attrs, {
    html.main({
      html.elem("header", {
        html.elem("h1", title)
        html.elem("time", attrs: (datetime: date.display()), date.display())
      })
      {
        show: page

        if (show-outline) {
          // From https://github.com/typst/typst/pull/8250#issuecomment-4430194291.
          context {
            let doc = query(selector(document).before(here())).last()
            outline(target: selector(heading).within(doc.location()))
          }
        }

        body
      }
    })
  })
})
