#let metadata = (
  title: [Writing a Typst blog],
  author: "Lancy",
  description: [An example blog post written in Typst.],
  keywords: ("typst"),
  date: datetime(year: 2026, month: 9, day: 3),
)

#outline()

= Level 2 heading

When #link("https://typst.app/docs/reference/model/heading/#html-export")[exporting to HTML], Typst headings start from level 2 instead of level 1.

== Level 3 heading

The heading above is an `<h3>` element in exported HTML, this is #link("https://github.com/typst/typst/issues/8290#issuecomment-4458102036")[intentional].

= A very inspiring quote

#lorem(42)

= Behind the Scene

Check out the #link("https://github.com/lancy69/site")[source code] of this page:

#raw(lang: "typst", read("index.typ"))
