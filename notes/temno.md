---
from: markdown+fancy_lists
---

# Temno
- [Odkaz do sisu](https://is.cuni.cz/studium/rozvrhng/roz_predmet_macro.php?id=2b7012c4bbb3cbb6b20a1246bebbbbdd&tid=&skr=2024&sem=2&fak=11320&predmet=NAIL063)

# Outline přednášky (not in order)
- transifinitní indukce????
- axiom výběru + důsledky (Zornovo lemma - princip maximality)
- Hlavním cílem:
	- budování matematiky na pevných základech
	- "nekonečna"
	- problém existence nealgebraických reálných čísel
	- Bijekce mezi úsečkou a čtvercem? xd
	- prinicp kompaktnosti
	- banach-tarského paradox
- Pokračování: nekonečné množiny (NMAI074) - na to zapomeň tpč

## Stručná historie (asi useless ale chce se mi něco psát)
- Bernard Bolzano (1781-1848) - "Množina"
- George Cantor (1845 - 1918) - "Aktuální nekonečno", diagonální metoda, kardinální čísla, uzavřená množina
- pojem množina byl chápán intuitivně - souhrn určitých a různých objektů -> prvky jsou různé, určité
::: warning
- Bertrano Russel - Russelův paradox, paradox holiče
	- když holič holí všechny lidi kteří se neholí sami, holí sám sebe?
	- $a=\{x,x\notin x\}$, platí $a\in a$?
	- nemá řešení,
		- pokud je a v a, tak není v a
		- pokud a není v a, tak je v a
	- problém je v objektu, nemůže to být množina
	- poučení: ne všechno co se dá definovat, tak ve skutečnosti existuje
:::

::: warning
- Beeriho paradox
	- nechť $m$ je nejmenší přirozené číslo které nejde definovat méně než 100 znaky -
	- ${27}^{100}$ různých definic - maximálně tolik čísel, ale ta věta má méně než 100 písmen
	- poučení: ne vše co se dá napsat má matematický smysl
:::

# Zermelo-fraenkelova teorie
- zavedli axiomatickou teorii množin
- Idea:
	- množiny jsou jediné "předměty", které mohou být prvky množin
	- množiny se konstruují postupně z prázdné množiny nějakými operacemi

- Jazyk teorie množin
	- dvě úrovně "běžného jazyka"
		- jazyk teorie "$x \in y$"
		- metajazyk "důkaz je příliš dlouhý", "definovat", "formule"
	- jazyk se skládá ze **symbolů**
		- proměnné pro množiny, $x$, $y$, $x_1$ ...
		- binární predikátový (relační) symbol rovnosti =, náležení $\in$
		- logické spojky - negace, disjunkce, konjunkce, ->, <->
		- kvantifikátory - obecný, existenční
		- závorky- (), []
	- **Formule**
		- atomické, $x=y$, $x\in y$
		- jsou li $\phi$,$\psi$ formule v metajazyce, pak $\lnot\phi$ i $\phi\oplus\psi$, $\oplus\in\{\lnot,\land,\lor,\implies,\iff\}$ jsou formule
		- je li $\psi$ formule, x proměnná pak, $(\forall x)\psi$, $(\exists x)\psi$ jsou formule - vázaný/volný výskyt x
		- každá formule lze dostat z atomických formulí aplikací konečně mnoha pravidel výše
	- jazyk není minimální
	- **Rozšíření jazyka** (zkratky) pro teorii množin
		- $x \neq y := \neg(x=y)$
		- $x\notin y := \neg(x\in y)$
		- $x \subseteq y :=$ x je podmnožina y
			- $(\forall u)(u\in x \implies u\in y)$
		- $x \subset y :=$ x je vlastní podmnožina y
			- $x\subseteq y \land x\neq y$
		- časem $\cup, \cap, \setminus, \{x_1,...,x_n\}, \emptyset, \{x \in a | \phi(x)\}$

::: exercise
Cvičení: napiš definici prázdné množiny
:::

## Axiomy "jak se chovají logické symboly"
- axiomy výrokové logiky - $\implies, \neg$
	-např. schéma axiomů: jsou li $\phi, \psi$ formule, pak $\phi \implies (\psi \implies\phi)$ je axiom
- axiomy predikátové logiky - $\forall, \exists$
	- jsou li jsou li $\phi, \psi$ formule, $x$ proměnná, x není volná v $\phi$, pak $(\forall x)(\phi\implies\psi)\implies(\phi\implies(\forall x)\psi)$
- axiomy rovnosti
	- pokud x je proměnná, pak $x=x$
	- x,y,z jsou proměnné, R je relační symbol, pak $(x=y) \implies (\forall z)(R(x,z)\iff R(y,z))$ - axiom substituce
	- speciálně v TM za R můžeme dosadit $\in$, pak $(x=y) \implies (\forall z)(x\in y\iff y \in z)$
	- $(x=y) \implies (\forall z)(z\in x\iff z \in y)$

## Deduction rules (informally):

- from $\psi$ and $\psi \implies \phi$, deduce $\phi$ 
- from $\psi$ deduce $(\forall x)\psi$

# Axioms of set theory:

- how does the $\in$ behaves and which sets exists
- formally 1. - 8. axioms form the Zermelo–Fraenkel theory (**ZF**) and adding the 9th axiom (Choice) creates extended theory called **ZFC**

::: definition
1. **Axiom of existence** - "a set exitst"
    - $\exists x: x = x$
    - i dont fcking know why this shit is here
:::

::: definition
2. **Axiom of extensionality** - "a set is determined by its elements"
    - $\forall x \forall y [\forall z (z \in x \iff z \in y) \implies x = y ]$
:::

::: definition
3. **Axiom of separation** - "we can take all elements from set that are of target properties"
    - $\forall z \forall \omega \exists y \forall x [x \in y \iff ((x \in y) \land \psi(x, \omega, z))]$
    - also know as Axiom of specification
    - dissallows possibilites of self-reference and paradox connected with these problems
    - thanks to Extensionality there exists only one such set
    - usage: $\{x, x \in a \land \psi(x)\}$ shorter version: $\{x \in a; \psi(x)\}$
    - definition of set operators using Separation:
        - $a \cup b = \{x \in a; x \in b\}$
        - $a \\ b = \{x \in a; x \notin b\}$
        - $\emptyset = \{x \in a; x \neq x\}$ - *a* can be any set
:::

::: definition
4. **Axiom of pairing** - "for every pair of sets *a*, *b*, there exists *z*, whose elements are exactly *a* and *b*"
    - $\forall x \forall y \exists z ((x \in z) \land (y \in z))$
    - Def.: **unordered pair**: simply a set of size two
        - such as $\{a, b\}$ or $\{a, a\} = \{a\}$
    - Def.: **ordered pair**: gradually increasing set of sets with elements from the pair
        - example: $(a, b) = \{\{a\}, \{a, b\}\}$ 
        - beware: $(a, a) = \{\{a\}, \{a, a\}\} = \{\{a\}, \{a\}\} = \{\{a\}\}$
    - **lemma:** $(x, y) = (u, v) \iff (x = u \land y = v)$
        - proof: 
            -$(\Leftarrow)$ if $x = u$ then $\{x\} = \{u\}$ from Extensionality
                            and if $y = v$ then $\{x, y\} = \{u, v\} \implies \{\{x\}, \{x, y\}\} = \{\{u\}, \{u, v\}\}$ 
            - $(\Rightarrow)$ if $\{\{x\}, \{x, y\}\} = \{\{u\}, \{u, v\}\}$, then $\{x\} = \{u\}$ or $\{x\} = \{u, v\}$, either way $u = x$
                - $\{u, v\} = \{x\}$ or $\{u, v\} = \{x, y\}$, therefore either $\{v = x\}$ or $\{v = y\}$
                    - if $v = y$ then we're done
                    - if $v = x$ then $v = u = x = y$ and we're done as well
:::

::: definition
5. **Axiom of union** - "union over the elements of a set is a set"
    - for any set of sets *F*, there is a set *A* containing every element that is a member of some member of *F*
    - $\forall F \exists A \forall Y \forall x [(x \in Y \land Y \in F) \implies x \in A]$
:::

::: definition
6. **Axiom of the power set** - "there exists a set z, whose elements are all subsets of a"
    - $\forall x \exists y \forall z (z \subseteq x \implies z \in y)$
:::

## Lecture 3 - TBD

## Lecture 4: Classes

::: definition
- X is a class then $X^1 = X$ and $X^{N+1} = X^N * X$
:::

- **observation:** $V^N \subseteq V^{N-1} \subseteq ... \subseteq V$

::: definition
- a class R is a **binary relation** if R subseteq VxV
- a class R is a **n-ary relation** if R subseteq $V^n$
- **xRy** is short for $(x, y) \in R$
:::

- example:
    - relation of membership: $\in : \{(x, y), x \in y\}$
    - relation of identity: $Id : \{(x, y), x = y\}$

::: definition
- for X a relation (or any arbitrary class), **Dom(X)** (domain) is $\{u, (\exists v), (u, v) \in X\}$
- similary **Rng(X)** (range) is $\{v, (\exists u), (u, v) \in X\}$
- **image** of a relation: $\{z, (\exists y), y \in Y \land (y, z) \in X\}$ - notation: X''Y
- **restriction to Y** of a relation: $\{(y, z), y \in Y \land (y, z) \in X\}$ - notation: XreverseoneY
:::

- **lemma:** if x is a set and Y a class then Dom(x), Rng(x), xreversoneY, x''Y are sets
- proof: $Dom(x) \subseteq U(Ux)$
        - if u in Dom(x) ... there exists some v such that $(u, v) \in x$
            $u \in \{u\} \in (u, v) \in x \implies \{u\} \in Ux \implies u \in U(Ux)$
        - similarly Rng(x) in U(Ux) if v in Rng(x) then these exists: $(\exists u) (u, v) \in xRy$
            $v \in \{u, v\} \in (u, v) \in x \implies v \in U(Ux)$
        - by Separation XreverseoneY

::: definition
- R, S relations then $R^{-1}$ (inverse relation) is $\{(u, v), (v, u) \in R\}$
- R, S relations then RcircleS (combination of relations) is $\{(u, w), (\exists v), (v, u) \in S\}
:::

- exercise: verify that for an aribtrary relation R we have $Id \circle R = R = R \circle Id$

::: definition 
- relation F is called a **mapping or function** if $(\forall u)(\forall v)(\forall w)(((u, v) \in F \land (u, w) \in F) \implies v = u)$
- $\forall u \in Dom(F)$ there exists exactly one $v$ such that $(u, v) \in F''$ we write, that $F(u) = v$
- F is a **mapping of class X to class Y** - notation: $F: X \implies Y$ if $Dom(F) = X \land Rng(F) \subseteq Y$
- F is a **mapping of class X onto class Y** if in addition $Rng(F) = Y$
- function $F$ is injective if $F^{-1}$ is a mapping
- other definition of injective mapping: $(\forall u, v, w )(F(u) = w \land F(v) = w) \implies u = v$
:::

::: definition
- **shortcut A** is a class $\phi$ formula then $(\exists x \in A) \phi$ means $(\exists x)(x \in A \land \phi)$
- same for forall quantifier: $(\forall x \in A) \phi$ means $(\forall x)(x \in A \implies \phi)$
- notation: image/preimage of a class X by mapping $F: F[X] = F''X$ and $F-1[X] = F-1''X$
 = $\{y, \exists x \in X, y = F(x)\} \land \{y, \exists x \in X, x = F(y)\}$
:::

- *A* class, *a* set then $a_A$ is $\{f, f:a \implies A\}$ - class of all mappings from *a* to *A*
- **observation:** every mapping from *a* to *A* is a set
- note: *a* really has to be a set - we cannot define class to class mappings: $F:B \implies A$ and $B = Dom(F)$ is a proper class then *F* is a proper class
- observation: $\emptyset$-to-Y = $\{\emptyset\}$
- observation: x-to-$\emptyset$ = $\emptyset$
- **lemma**: for arbitrary sets *x*, *y* the class x-to-Y is a set
         if *x* isn't $\emptyset$, *Y* is a proper class, then x-to-Y is a proper class

--- TBD

## Intro to relations
### Orderings
- $R \subseteq VxV$, $A$ is a class, $R$ may have *various* properties on $A$:
    - reflexive
    - antireflexive
    - symetric
    - antisymetric
    - weakly antisymetric
    - transitive
- find definitions on the internet
- all these 7 properties are **hereditary** - they are inherited by subclasses



