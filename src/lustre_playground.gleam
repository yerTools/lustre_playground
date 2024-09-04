import gleam/io
import lustre
import lustre/attribute.{attribute, class}
import lustre/effect.{type Effect}
import lustre/element.{type Element}
import lustre/element/html

pub fn main() {
  let app = lustre.application(init, update, view)
  let assert Ok(_) = lustre.start(app, "html", Nil)
}

pub opaque type Msg

pub opaque type Model {
  Model
}

pub fn init(_: Nil) -> #(Model, Effect(Msg)) {
  #(Model, effect.none())
}

fn update(mdl: Model, msg: Msg) -> #(Model, Effect(Msg)) {
  #(mdl, effect.none())
}

fn view(mdl: Model) -> Element(Msg) {
  let body = [
    html.script(
      [
        attribute.src("./priv/static/lustre_playground.mjs"),
        attribute.type_("module"),
        attribute.attribute("defer", "defer"),
      ],
      "",
    ),
  ]

  let body = [html.text("Hello World!"), ..body]

  html.html([attribute("lang", "en")], [
    html.head([], [
      html.meta([attribute("charset", "UTF-8")]),
      html.meta([
        attribute("content", "width=device-width, initial-scale=1.0"),
        attribute.name("viewport"),
      ]),
      html.title([], "⭐️ Lustre Playground ✨"),
      html.link([
        attribute.href("./priv/static/lustre_playground.css"),
        attribute.rel("stylesheet"),
      ]),
      html.link([
        attribute.href("./priv/static/fonts.css"),
        attribute.rel("stylesheet"),
      ]),
    ]),
    html.body([], body),
  ])
}
