#import "lib/page.typ": page

#asset("favicon.ico", read("assets/favicon.ico", encoding: none))
#asset("styles.css", read("assets/styles.css", encoding: none))

#asset("fonts/MapleMono-Regular.woff2", read("assets/fonts/MapleMono-Regular.woff2", encoding: none))
#asset("fonts/MapleMono-Italic.woff2", read("assets/fonts/MapleMono-Italic.woff2", encoding: none))
#asset("fonts/MapleMono-Bold.woff2", read("assets/fonts/MapleMono-Bold.woff2", encoding: none))
#asset("fonts/MapleMono-BoldItalic.woff2", read("assets/fonts/MapleMono-BoldItalic.woff2", encoding: none))

#let pages = ("index", "about/index", "blog/index")
#for p in pages {
  import "pages/" + p + ".typ": metadata
  document(p + ".html", ..metadata)[#include "pages/" + p + ".typ"]
}
