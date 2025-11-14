type 'info node =
  | EConst of int
  | EAdd of 'info expr * 'info expr

and 'info expr =
  { info: 'info; node: 'info node }

[@@deriving visitors { variety = "map" }]
