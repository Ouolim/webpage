## Classes

::: definition
If $X$ is a class, then $X^1 = X$ and $X^{n+1} = X^n \times X$
:::

- $V^n \subseteq V^{n-1} \subseteq \ldots \subseteq V$

::: definition
- A class $R$ is a **binary relation** if $R \subseteq V \times V$
- A class $R$ is an **$n$-ary relation** if $R \subseteq V^n$
- $xRy$ is short for $(x, y) \in R$
:::

**Examples:**

- Relation of membership: $E = \{(x, y) \mid x \in y\}$
- Identity: $\text{Id} = \{(x, y) \mid x = y\}$

::: definition
For $X$ a relation (or any class):

- $\text{Dom}(X)$ (domain) $= \{u \mid \exists v : (u, v) \in X\}$
- $\text{Rng}(X)$ (range) $= \{v \mid \exists u : (u, v) \in X\}$
- **Image** of $Y$ under $X$: $X''Y = \{z \mid \exists y \in Y : (y, z) \in X\}$
- **Restriction** of $X$ to $Y$: $X \upharpoonright Y = \{(y, z) \mid y \in Y \land (y, z) \in X\}$
:::

::: proof
**Lemma:** If $x$ is a set and $Y$ a class, then $\text{Dom}(x)$, $\text{Rng}(x)$, $x \upharpoonright Y$, $x''Y$ are sets.

**Proof:** $\text{Dom}(x) \subseteq \bigcup(\bigcup x)$

- If $u \in \text{Dom}(x)$, there exists $v$ such that $(u, v) \in x$, so $u \in \{u\} \in (u, v) \in x$, hence $\{u\} \in \bigcup x$ and $u \in \bigcup(\bigcup x)$
- Similarly $\text{Rng}(x) \subseteq \bigcup(\bigcup x)$: if $v \in \text{Rng}(x)$ then $v \in \{u, v\} \in (u, v) \in x$, so $v \in \bigcup(\bigcup x)$
- $x \upharpoonright Y$ is a set by separation
:::

::: definition
- $R$, $S$ relations: $R^{-1}$ (inverse) $= \{(u, v) \mid (v, u) \in R\}$
- $R$, $S$ relations: $R \circ S$ (composition) $= \{(u, w) \mid \exists v : (u, v) \in S \land (v, w) \in R\}$
:::

::: exercise
**Exercise:** verify that for an arbitrary relation $R$: $\text{Id} \circ R = R = R \circ \text{Id}$
:::

::: definition
- A relation $F$ is a **mapping (function)** if $(\forall u)(\forall v)(\forall w)(((u, v) \in F \land (u, w) \in F) \implies v = w)$
- For every $u \in \text{Dom}(F)$ there exists exactly one $v$ such that $(u, v) \in F$; we write $F(u) = v$
- $F$ is a **mapping from class $X$ to class $Y$** (notation: $F : X \to Y$) if $\text{Dom}(F) = X$ and $\text{Rng}(F) \subseteq Y$
- $F$ is a **mapping from $X$ onto $Y$** (surjective) if additionally $\text{Rng}(F) = Y$
- $F$ is **injective** if $F^{-1}$ is a mapping
	- equivalently: $(\forall u)(\forall v)(F(u) = F(v) \implies u = v)$
:::

::: definition
**Bounded quantifier notation:**

- $(\exists x \in A)\phi$ means $(\exists x)(x \in A \land \phi)$
- $(\forall x \in A)\phi$ means $(\forall x)(x \in A \implies \phi)$

**Image/preimage notation:** for a mapping $F$ and class $X$:

- $F[X] = F''X = \{y \mid \exists x \in X : y = F(x)\}$
- $F^{-1}[X] = \{y \mid \exists x \in X : x = F(y)\}$
:::

- For $a$ a set and $A$ a class: ${}^a A = \{f \mid f : a \to A\}$ — the class of all mappings from $a$ to $A$
- **Observation:** every mapping from a set $a$ to a class $A$ is a set
- **Note:** $a$ must be a set — if $B = \text{Dom}(F)$ is a proper class, then $F$ is a proper class
- ${}^\emptyset Y = \{\emptyset\}$
- ${}^x \emptyset = \emptyset$ (for $x \neq \emptyset$)

::: proof
**Lemma:** For arbitrary sets $x$, $y$, the class ${}^x y$ is a set. If $x \neq \emptyset$ and $Y$ is a proper class, then ${}^x Y$ is a proper class.
:::

---

## Introduction to relations

### Orderings

$R \subseteq V \times V$, $A$ is a class. $R$ may have the following properties on $A$:

- reflexive
- antireflexive
- symmetric
- antisymmetric
- weakly antisymmetric
- transitive
- trichotomous

All these properties are **hereditary** — they are inherited by subclasses.
