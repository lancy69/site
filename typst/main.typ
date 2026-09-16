#let fonts = ("Regular", "Italic", "Bold", "BoldItalic")
#let pages = ("index", "about/index", "blog/index")

#asset("styles.css", read("assets/styles.css", encoding: none))
#asset("favicon.ico", read("assets/favicon.ico", encoding: none))

#for font in fonts {
  asset(
    "fonts/MapleMono-" + font + ".woff2",
    read("assets/fonts/MapleMono-" + font + ".woff2", encoding: none),
  )
}

#for page in pages {
  document(page + ".html")[#include "pages/" + page + ".typ"]
}
