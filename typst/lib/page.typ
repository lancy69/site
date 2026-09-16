#let page(
  title: [Typst Page],
  stylesheet: "/styles.css",
  icon: "/favicon.ico",
  body-attrs: (:),
  content,
) = html.html({
	html.head({
		html.elem("meta", attrs: (charset: "utf-8"))
		html.title(title)
		html.link(rel: "stylesheet", href: stylesheet)
		html.link(rel: "icon", href: icon)
  })
	html.elem("body", attrs: body-attrs, {
		html.main(content)
  })
})
