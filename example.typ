#let cont = yaml("content.yml")

#let primcol(term) = {
  text(rgb(cont.palette.primary), box[#term])
}

#set document(
  title: cont.contacts.name + "'s CV",
  author: cont.contacts.name,
)
#set page(
  margin: (x: 1cm, y: 1cm),
)

// TODO: Change font
#set text(9.8pt, font: "Libertinus Serif")

#let head(term) = {
  text(rgb(cont.palette.primary), box[== #term])
  linebreak()
}

#let p(h, t) = {
  head(h)
  box[#t]
  linebreak()
  linebreak()
}

= #cont.contacts.name
#cont.contacts.title

#lorem(100)

#set rect(
  fill: rgb("e4e5ea"),
  width: 100%,
)

#grid(
  columns: (7fr, 4.5fr),
  column-gutter: 1em,
  rect[
    #p[Experience][
      #lorem(100)
    ]
  ],
  rect[
    #p[Objective][#lorem(20)]
    #p[Technical Expertise][#lorem(20)]
    #p[Skills/Exposure][#lorem(20)]
    #p[Methodology/Approach][#lorem(20)]
    #p[Tools][#lorem(20)]
  ],
)
