#import "lib/post.typ": post
#import "pages/blog/index.typ": posts

#let paths = read("assets/index").trim().split("\n")
#for p in paths {
  asset(p, read("assets/" + p, encoding: none))
}

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
    #set raw(theme: "assets/syntax.tmTheme")
    #post(id: p, ..metadata, ..settings)[#include "pages/blog/" + p + ".typ"]
  ]
}
