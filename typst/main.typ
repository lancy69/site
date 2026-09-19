#import "lib/post.typ": post
#import "pages/blog/index.typ": posts

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

#for p in posts {
  import "pages/blog/" + p + ".typ" as mod
  let metadata = dictionary(mod).at("metadata", default: (:))
  let settings = dictionary(mod).at("settings", default: (:))
  document("blog/" + p + ".html", ..metadata)[
    #post(..metadata, ..settings)[#include "pages/blog/" + p + ".typ"]
  ]
}
