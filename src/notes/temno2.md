## Classes

::: definition
- X is a class then X^1 = X and X^N+1 = X^N * X
:::

- V^N subseteq V^N-1 ... V

::: definition
- a class R is a **binary relation** if R subseteq VxV
- a class R is a **n-ary relation** if R subseteq V^n
- xRy is short for (x, y) in R
:::

- example:
    - relation of membership: E is {(x, y), x in y}
                  identity: Id is {(x, y), x = y}

::: definition
- for X a relation (or any arbitrary class), **Dom(X)** (domain) is {u, Ev (u, v) in X}
- similary **Rng(X)** (range) is {v, Eu (u, v) in X}
- **image** of a relation: {z, Ey y in Y and (y, z) in X} - notation: X''Y
- **restriction to Y** of a relation: {(y, z), y in Y and (y, z) in X} - notation: XreverseoneY
:::

- **lemma:** if x is a set and Y a class then Dom(x), Rng(x), xreversoneY, x''Y are sets
- proof: Dom(x) subseteq U(Ux)
        - if u in Dom(x) ... there exists some v such that (u, v) in x
            u in {u} in (u, v) in x -> {u} in Ux -> u in U(Ux)
        - similarly Rng(x) in U(Ux) if v in Rng(x) then these exists: u (u, v) in xRy
            v in {u, v} in (u, v) in x -> v in U(Ux)
        - by Separation XreverseoneY

definition
- R, S relations then R^-1 (inverse relation) is {(u, v), (v, u) in R}
- R, S relations then RcircleS (combination of relations) is {(u, w), Ev (v, u) in S}

exercise
- verify that for an aribtrary relation R we have Id circle R = R = R circle Id

definition 
- relation F is called a **mapping or function** if (forevery u) (forevery v) (forevery w) (((u, v) in F and (u, w) in F) implies v = u)
- forevery u in Dom(F) there exists exactly one v such that (u, v) in F'' we write that F(u) = v
- F is a **mapping of class X to class Y** - notation: F: X -> Y if Dom(F) = X and Rng(F) subseteq Y
- F is a **mapping of class X onto class Y** if in addition Rng(F) = Y
- function F is injective if F^-1 is a mapping 
- other definition of injective mapping: forevery u, v, w (F(u) = w and F(v) = w) implies u = v

definition 
- shortcut A is a class phi formula then (Ex in A) phi means (Ex)(x in A and phi)
- same for forevery quantifier: (forevery x in A) phi means (forevery x)(x in A implies phi)
- notation: image/preimage of a class X by mapping F: F[X] = F''X and F-1[X] = F-1''X
 = {y, exists x in X, y = F(x)} and {y, exists x in X, x = F(y)}
- A class, a set then aA is {f, f:a -> A} - class of all mappings from a to A
- observation: every mapping from a to A is a set
- note: a really has to be a set - we cannot define class to class mappings: F:B->A and B=Dom(F) is a proper class then F is a proper class
- observation emptyset-to-Y = {emptyset}
- observation x-to-emptyset = emptyset
- lemma: for aribtrary sets x, y the class x to Y is a set
         if x isnt emptyset, Y is a proper class, then xtoY is a proper class

---- TBD

## Into to relations 
### Orderings
- R subseteq VxV, A is a class, R may have *various* properties on A:
    - reflexive
    - antireflexive
    - symetric
    - antisymetric
    - weakly antisymetric
    - transitive
- find definitions on the internet
- all these 7 properties are **hereditary** - they are inherited by subclasses


