#let metadata = (
  title: [Lancy\'s blog],
  author: "Lancy",
)

#let posts = (
  "2026-09-04-a-little-chinese-poem",
  "2026-09-03-writing-a-typst-blog",
)

#html.html({
  html.head({
    html.elem("meta", attrs: (charset: "utf-8"))
    html.title(metadata.title)
    html.link(rel: "author", href: metadata.author)
    html.link(rel: "icon", href: "/favicon.ico")
    html.link(rel: "stylesheet", href: "/styles.css")
  })
  html.elem("body", attrs: (class: "blog"), {
    html.main({
      title([Blog])

      html.elem("ul", attrs: (class: "blog-post-list"), {
        for post in posts {
          import post + ".typ": metadata

          html.elem("li", attrs: (class: "blog-post-list-item"), {
            html.elem("time", attrs: (datetime: metadata.date.display()), {
              metadata.date.display()
            })
            link("/blog/" + post, metadata.title)
          })
        }
      })
    })
  })
})

// #import "../../lib/page.typ": page
//
// #let posts = toml("posts.toml").posts
// #let sorted = posts.sorted(key: post => post.date.year() * 10000 + post.date.month() * 100 + post.date.day())
//
// #show: page.with(title: [Blog])
//
// #title([Blog])
//
// #for post in sorted [
//   #html.elem("div", attrs: (class: "post"))[
//     #html.elem("time", attrs: (datetime: post.date.display()))[
//       #post.date.display()
//     ]
//     #link(post.path.replace("pages/blog/", "/blog/").replace(".typ", ".html"))[#post.title]
//   ]
// ]
