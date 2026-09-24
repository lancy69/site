// Wrappers to make functions exporting to HTML align with PDF.
#let page(body) = {
  // TODO: wait for the official approach.
  show align: it => {
    let x = it.alignment.x
    html.elem("div", attrs: (
      style: "text-align: " + if x == left {
        "left"
      } else if x == center {
        "center"
      } else if x == right {
        "right"
      } else {
        "inherit"
      }
    ), it.body)
  }

  show text: it => context {
    let font = text.font

    html.elem("span",
      attrs: (
        style: "font-family: " + if type(font) == str {
          font
        } else if type(font) == array {
          let fonts = ()
          for f in font {
            if type(f) == str {
              fonts.push(f)
            } else if type(f) == dictionary {
              fonts.push(f.name)
            }
          }
          fonts.join(", ")
        } else {
          ""
        } + ", var(--font-family)",
      ),
      it,
    )
  }

  body
}
