> **Fork.** This is the opengrep fork of
> [visitors](https://gitlab.inria.fr/fpottier/visitors), based on upstream `master`
> after release 20260520. It differs from upstream by one change: every generated
> function is built as a single function of all its parameters, so that under the OCaml
> 5.2 AST of ppxlib 0.36 and later a generated method is not compiled into a chain of
> one-parameter closures.

An OCaml syntax extension (technically, a ppx_deriving plugin) which generates
object-oriented visitors for traversing and transforming data structures.

Here is the [documentation of the latest released version](http://gallium.inria.fr/~fpottier/visitors/manual.pdf).

The easiest way of installing the latest released version of this package is
via `opam`, the OCaml package manager.
```bash
opam update
opam install visitors
```

To install the latest development version, also via `opam`, please proceed as follows:
```bash
  git clone https://gitlab.inria.fr/fpottier/visitors.git
  cd visitors
  make pin
```

To install the latest development version, outside of `opam`, please proceed as follows:
```bash
  git clone https://gitlab.inria.fr/fpottier/visitors.git
  cd visitors
  opam install . --deps-only
  make install
```
