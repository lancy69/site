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

= Math Formulas

== Euler's formula

#link("https://en.wikipedia.org/wiki/Euler%27s_formula")[*Euler's formula*], named after Leonhard Euler, is a mathematical formula in complex analysis that establishes the fundamental relationship between the trigonometric functions and the complex exponential function. Euler's formula states that, for any real number $x$, one has

$ e^(i x) = cos x + i sin x $

where $e$ is the base of the natural logarithm, $i$ is the imaginary unit, and $cos$ and $sin$ are the trigonometric functions cosine and sine respectively. This complex exponential function is sometimes denoted $op("cis")x$ ("cosine plus i sine"). The formula is still valid if $x$ is a complex number, and is also called _Euler's formula_ in this more general case.

== Riemann zeta function

The #link("https://en.wikipedia.org/wiki/Riemann_zeta_function")[*Riemann zeta function*] or *Euler–Riemann zeta function*, denoted by the lowercase Greek letter $zeta$ (zeta), is a mathematical function of a complex variable defined as

$ zeta(s) = sum_(n = 1)^oo 1 / n^s = 1 / 1^s + 1 / 2^s + 1 / 3^s + dots.c $

for $Re(s) > 1$, and its analytic continuation elsewhere.

= Behind the Scene

Check out the #link("https://github.com/lancy69/site")[source code] of this page:

#raw(lang: "typst", read("index.typ"))
