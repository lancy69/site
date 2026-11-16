#let page(
  path,
  title: [Untitled],
  author: "Lancy",
  description: [],
  keywords: ("typst"),
  date: datetime(year: 2005, month: 9, day: 3),
  body-attrs: (:),
  lang: "en",
  body,
) = document(
  path + ".html",
  title: title,
  author: author,
  description: description,
  keywords: keywords,
  date: date,
  html.html(lang: lang, {
    html.head({
      html.meta(charset: "utf-8")
      html.meta(name: "author", content: author)
      html.meta(name: "viewport", content: "width=device-width, initial-scale=1")
      html.title(title)
      html.link(rel: "icon", href: "/favicon.ico")
      html.link(rel: "stylesheet", href: "/fonts/fz-cjk-sc.css")
      html.link(rel: "stylesheet", href: "/fonts/maple-mono-nfmono-cn.css")
      html.link(rel: "stylesheet", href: "/styles.css")
    })
    html.elem("body", attrs: body-attrs, {
      html.main(body)
    })
  })
)

// Wrappers to make functions exporting to HTML align with PDF.
#let mappings(body) = {
  // TODO: wait for the official approach.
  show align: it => {
    let x = it.alignment.x
    let a = if x == none { "inherit" } else { repr(x) }
    html.elem("div", attrs: (style: "text-align: " + a), it.body)
  }

  show quote.where(block: true): it => html.elem("div", attrs: (class: "quote"), it)
  show quote.where(block: false): it => html.elem("span", attrs: (class: "quote"), it)

  // show text: it => context {
  //   let font = text.font
  //   html.elem("span",
  //     attrs: (
  //       style: "font-family: " + if type(font) == str {
  //         font
  //       } else if type(font) == array {
  //         let fonts = ()
  //         for f in font {
  //           if type(f) == str {
  //             fonts.push(f)
  //           } else if type(f) == dictionary {
  //             fonts.push(f.name)
  //           }
  //         }
  //         fonts.join(", ")
  //       } else {
  //         ""
  //       } + ", var(--font-family)",
  //     ),
  //     it,
  //   )
  // }

  body
}
