// Wrappers to make functions exporting to HTML align with PDF.
#let page(body) = {
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
