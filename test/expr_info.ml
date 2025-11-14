type 'i expr_node =
  | EConst of int
  | EAdd of 'i expr * 'i expr

and 'i expr =
  { info: 'i; node: 'i expr_node }

[@@deriving visitors { variety = "map" }]
