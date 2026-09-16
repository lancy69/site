#let pages = ("index",)

#asset("styles.css", read("assets/styles.css", encoding: none))
#asset("favicon.ico", read("assets/favicon.ico", encoding: none))

#for page in pages {
  document(page + ".html")[#include "pages/" + page + ".typ"]
}
