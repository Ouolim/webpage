---
from: markdown+fancy_lists
---

# Set Theory (Temno)

- [SIS link](https://is.cuni.cz/studium/rozvrhng/roz_predmet_macro.php?id=2b7012c4bbb3cbb6b20a1246bebbbbdd&tid=&skr=2024&sem=2&fak=11320&predmet=NAIL063)

## Lecture outline

- Transfinite induction
- Axiom of choice + consequences (Zorn's lemma, maximality principle)
- Main goals:
	- building mathematics on solid foundations
	- "infinities"
	- existence of non-algebraic real numbers
	- bijection between a line segment and a square
	- compactness principle
	- Banach-Tarski paradox
- Continuation: Infinite sets (NMAI074)

## Brief history

- Bernard Bolzano (1781–1848) — concept of "set" (množina)
- Georg Cantor (1845–1918) — actual infinity, diagonal method, cardinal numbers, closed sets
- The concept of a set was understood intuitively — a collection of definite, distinct objects

::: warning
**Russell's paradox** (barber paradox)

- If a barber shaves everyone who doesn't shave themselves — does he shave himself?
- $a = \{x \mid x \notin x\}$, does $a \in a$?
- No solution:
	- if $a \in a$, then $a \notin a$
	- if $a \notin a$, then $a \in a$
- The problem is the object — it cannot be a set
- **Lesson:** not everything that can be defined actually exists
:::

::: warning
**Berry's paradox**

- Let $m$ be the smallest natural number that cannot be defined in fewer than 100 characters
- $27^{100}$ possible definitions — at most that many numbers, but the sentence itself has fewer than 100 characters
- **Lesson:** not everything that can be written has mathematical meaning
:::

# Zermelo-Fraenkel set theory

- Introduced axiomatic set theory
- Idea:
	- sets are the only "objects" that can be elements of sets
	- sets are constructed gradually from the empty set by certain operations

## Language of set theory

- Two levels of "ordinary language":
	- language of the theory: "$x \in y$"
	- metalanguage: "the proof is too long", "define", "formula"
- The language consists of **symbols**:
	- variables for sets: $x$, $y$, $x_1$, ...
	- binary predicate (relation) symbol for equality $=$, membership $\in$
	- logical connectives: $\lnot$, $\lor$, $\land$, $\implies$, $\iff$
	- quantifiers: $\forall$, $\exists$
	- parentheses: $()$, $[]$
- **Formulas:**
	- atomic: $x = y$, $x \in y$
	- if $\phi$, $\psi$ are formulas, then $\lnot\phi$ and $\phi \oplus \psi$ (where $\oplus \in \{\lnot, \land, \lor, \implies, \iff\}$) are formulas
	- if $\psi$ is a formula and $x$ a variable, then $(\forall x)\psi$ and $(\exists x)\psi$ are formulas — bound/free occurrence of $x$
	- every formula can be obtained from atomic formulas by finitely many applications of the rules above
- The language is not minimal
- **Language extensions** (abbreviations) for set theory:
	- $x \neq y := \neg(x = y)$
	- $x \notin y := \neg(x \in y)$
	- $x \subseteq y$ := $x$ is a subset of $y$: $(\forall u)(u \in x \implies u \in y)$
	- $x \subset y$ := $x$ is a proper subset of $y$: $x \subseteq y \land x \neq y$
	- eventually $\cup, \cap, \setminus, \{x_1, \ldots, x_n\}, \emptyset, \{x \in a \mid \phi(x)\}$

::: exercise
**Exercise:** write the definition of the empty set
:::

## Axioms for logical symbols

- Axioms of propositional logic ($\implies$, $\neg$):
	- e.g. axiom schema: if $\phi$, $\psi$ are formulas, then $\phi \implies (\psi \implies \phi)$ is an axiom
- Axioms of predicate logic ($\forall$, $\exists$):
	- if $\phi$, $\psi$ are formulas, $x$ a variable, $x$ not free in $\phi$, then $(\forall x)(\phi \implies \psi) \implies (\phi \implies (\forall x)\psi)$
- Axioms of equality:
	- if $x$ is a variable, then $x = x$
	- $x$, $y$, $z$ are variables, $R$ a relation symbol, then $(x = y) \implies (\forall z)(R(x, z) \iff R(y, z))$ — substitution axiom
	- in set theory, substituting $\in$ for $R$: $(x = y) \implies (\forall z)(x \in z \iff y \in z)$
	- $(x = y) \implies (\forall z)(z \in x \iff z \in y)$

## Deduction rules

- From $\psi$ and $\psi \implies \phi$, deduce $\phi$ (modus ponens)
- From $\psi$, deduce $(\forall x)\psi$ (generalization)

::: exercise
**Exercise:** prove that $((x \subseteq y) \land (y \subset z)) \implies x \subset z$
:::

## Axioms of set theory

- Determine how $\in$ behaves and which sets exist
- Axioms 1–8 form Zermelo-Fraenkel theory (**ZF**); adding axiom 9 (choice) gives **ZFC**

::: definition
**1. Axiom of existence** — "a set exists"

$\exists x : x = x$
:::

::: definition
**2. Axiom of extensionality** — "a set is determined by its elements"

$\forall x \forall y [\forall z (z \in x \iff z \in y) \implies x = y]$
:::

::: definition
**3. Axiom of separation** — "we can take all elements from a set that satisfy a given property"

$\forall z \forall \omega \exists y \forall x [x \in y \iff ((x \in z) \land \psi(x, \omega, z))]$

- Also known as axiom of specification
- Disallows self-reference and related paradoxes
- By extensionality, there exists exactly one such set
- Notation: $\{x \in a \mid \psi(x)\}$
- Set operations via separation:
	- $a \cap b = \{x \in a \mid x \in b\}$
	- $a \setminus b = \{x \in a \mid x \notin b\}$
	- $\emptyset = \{x \in a \mid x \neq x\}$ — $a$ can be any set
:::

::: definition
**4. Axiom of pairing** — "for every pair of sets $a$, $b$, there exists $z$ whose elements are exactly $a$ and $b$"

$\forall x \forall y \exists z ((x \in z) \land (y \in z))$

- **Unordered pair:** a set of size two, $\{a, b\}$ or $\{a, a\} = \{a\}$
- **Ordered pair:** $(a, b) = \{\{a\}, \{a, b\}\}$
	- note: $(a, a) = \{\{a\}, \{a, a\}\} = \{\{a\}, \{a\}\} = \{\{a\}\}$
:::

::: proof
**Lemma:** $(x, y) = (u, v) \iff (x = u \land y = v)$

$(\Leftarrow)$: If $x = u$ then $\{x\} = \{u\}$ by extensionality. If $y = v$ then $\{x, y\} = \{u, v\}$, so $\{\{x\}, \{x, y\}\} = \{\{u\}, \{u, v\}\}$.

$(\Rightarrow)$: If $\{\{x\}, \{x, y\}\} = \{\{u\}, \{u, v\}\}$, then $\{x\} = \{u\}$ or $\{x\} = \{u, v\}$. Either way, $u = x$.

- $\{u, v\} = \{x\}$ or $\{u, v\} = \{x, y\}$, so either $v = x$ or $v = y$
	- if $v = y$: done
	- if $v = x$: then $v = u = x = y$, done as well
:::

::: definition
**5. Axiom of union** — "the union over elements of a set is a set"

For any family of sets $\mathcal{F}$, there exists a set $A$ containing every element that is a member of some member of $\mathcal{F}$:

$\forall \mathcal{F} \exists A \forall Y \forall x [(x \in Y \land Y \in \mathcal{F}) \implies x \in A]$
:::

::: definition
**6. Axiom of the power set** — "there exists a set $z$ whose elements are all subsets of $a$"

$\forall x \exists y \forall z (z \subseteq x \implies z \in y)$
:::

---

# Relations

::: definition
$x \leq_R y$ means $(x, y) \in R$

An ordering $R$ is **linear** (on $A$) if $R$ is a trichotomous relation on $A$ — every pair of elements in $A$ is comparable.
:::

$R'$ is a **strict ordering** if $R' = R \setminus \text{Id}$, where $R$ is an ordering.

- It becomes antireflexive, antisymmetric, and transitive
- Antisymmetry is implied by the other two

$x <_R y$ means $(x, y) \in R'$

**Examples of orderings:**

- $(\mathbb{N}, \leq)$
- $(V, \subseteq)$
- $(\mathbb{N}, \mid)$ (divisibility)
- $(\mathbb{R}^2, \leq_{\text{lex}})$ (lexicographic)

::: definition
Let $R$ be an ordering on class $A$ and $X \subseteq A$. We say that $a \in A$ is (with respect to $R$ and $A$):

- **upper bound** (majorant) of $X$, if $(\forall x \in X)(x \leq_R a)$
- **maximal element** of $X$, if $a \in X$ and $(\forall x \in X)(\lnot(a <_R x))$
- **maximum** (largest element) of $X$, if $a \in X$ and $a$ is an upper bound of $X$
- **supremum** of $X$, if $a$ is the smallest element of the class of all upper bounds of $X$
- Symmetrically: lower bound (minorant), minimal element, minimum, infimum
:::

::: theorem
- Maximum $\implies$ maximal element
- If $R$ is linear, then maximal $\implies$ maximum (and there is at most one maximal)
- There is always at most one maximum and at most one supremum
:::

**Notation:** $a = \max_R(X)$, $a = \sup_R(X)$

- $X$ is **bounded from above** in $A$ if there exists an upper bound of $X$ in $A$ (similarly from below)
- $X$ is a **lower set** (downward closed) in $A$ if $(\forall x \in X)(\forall y \in A)(y \leq_R x \implies y \in X)$
- For $x \in A$: $(\leftarrow, x] = \{y \in A \mid y \leq_R x\}$ — principal ideal determined by $x$

::: theorem
Let $R$ be an ordering on $A$. Then for arbitrary $x, y \in A$:

$x \leq_R y \iff (\leftarrow, x] \subseteq (\leftarrow, y]$
:::

**Remark — constructing $\mathbb{R}$ from $\mathbb{Q}$: Dedekind cuts**

$X \subseteq \mathbb{Q}$: $X$ is a lower set with respect to the standard ordering, and if $\sup(X)$ exists then $\sup(X) \notin X$

- $\mathbb{Q} \cap (-\infty, q)$ is a Dedekind cut
- $\mathbb{Q} \cap (-\infty, q]$ is not a Dedekind cut
- $\mathbb{Q} \cap (-\infty, \sqrt{2})$ is a Dedekind cut

::: definition
An ordering $R$ on class $A$ is a **well-ordering** if every nonempty subset of $A$ has a smallest element with respect to $R$.
:::

::: exercise
**Exercise:** write this definition as a formula
:::

- Well-ordering is a hereditary property: if $B \subseteq A$, then $R$ is a well-ordering on $B$ as well
- Every well-ordering is linear

::: exercise
**Exercise:** find sets on which $\in \cup \text{Id}$ is a well-ordering
:::

---

## Comparing cardinalities

Set $x$ has cardinality less than or equal to the cardinality of $y$ ($|x| \leq |y|$) if there exists an injective mapping from $x$ into $y$.
