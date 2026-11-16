#import "page.typ": page, mappings

#let post(
  path,
  title: [Untitled],
  author: "Lancy",
  description: [],
  keywords: (),
  date: datetime(year: 2005, month: 9, day: 3),
  body-attrs: (class: "post"),
  lang: "zh",
  show-outline: true,
  body,
) = page(
  path,
  title: title,
  author: author,
  description: description,
  keywords: keywords,
  date: date,
  body-attrs: body-attrs,
  lang: lang,
  {
    html.elem("header", {
      html.elem("h1", title)
      html.elem("time", attrs: (datetime: date.display()), date.display())
    })
    {
      show: mappings

      if (show-outline) {
        // From https://github.com/typst/typst/pull/8250#issuecomment-4430194291.
        context {
          let doc = query(selector(document).before(here())).last()
          outline(target: selector(heading).within(doc.location()))
        }
      }

      body
    }
  },
)
