#import "lib/page.typ": page
#import "lib/post.typ": post
#import "pages/blog/index.typ": posts

#let paths = read("assets/.index").trim().split("\n")
#for p in paths {
  asset(p, read("assets/" + p, encoding: none))
}

#let pages = ("index", "blog/index")
#for p in pages {
  import "pages/" + p + ".typ": metadata
  page(p, ..metadata)[#include "pages/" + p + ".typ"]
}

#for p in posts {
  import "pages/blog/" + p + "/index.typ" as mod
  let metadata = dictionary(mod).at("metadata", default: (:))
  post("blog/" + p + "/index", ..metadata)[#include "pages/blog/" + p + "/index.typ"]
}
