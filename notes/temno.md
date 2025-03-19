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

::: exercise
Cvičení: dokažte že $((x\subseteq y)\land(y\subset z)) \implies x\subset z$
:::

## Deduction rules (informally):
- from $\psi$ and $\psi \implies \phi$, deduce $\phi$
- from $\psi$ deduce $(\forall x)\psi$

### Axioms of set theory:

- how does the $\in$ behaves and which sets exists
- formally 1. - 8. axioms form the Zermelo–Fraenkel theory (**ZF**) and adding the 9th axiom (Choice) creates extended theory called **ZFC**

1. **Axiom of existence** - "a set exists"
    - $\exists x: x = x$
    - i dont fcking know why this shit is here
2. **Axiom of extensionality** - "a set is determined by its elements"
    - $\forall x \forall y [\forall z (z \in x \iff z \in y) \implies x = y ]$
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
5. **Axiom of union** - "union over the elements of a set is a set"
    - for any set of sets F \{\displaystyle \{\mathcal \{F\}\}\}, there is a set A \{\displaystyle A\} containing every element that is a member of some member of F \{\displaystyle \{\mathcal \{F\}\}\}
    - $\forall \mathcall\{F\} \exists A \forall Y \forall x [(x \in Y \land Y \in mathcal\{F\}) \imples x \in A]$
6. **Axiom of the power set** - "there exists a set z, whose elements are all subsets of a"
    - $\forall x \exists y \forall z (z \subsetq x \implies z \in y)$


HERE INSERT HONZA 3

Janek 4

# Relations

:::definition
$x<=_R y$ means $(x,y) \in R$

Ordering $R$ is linear (on A) if $R$ is a trichotmic relation (on $A$). That means that every pair of elements in $A$ is comparable.
:::

$R'$ is a strict ordering (ostré uspořádání) if $R'$ is of the form
$R - Id$ where R is an ordering.

- it becomes antireflexive, antisymmetric and transitive.
- antisymmetric is implied from the other two.

$x <_{R} y$ means $(x,y) \in R$

Examples of ordering
- (natural numbers, <=)
- (V, inclusion <=)
- (natural numbers, |)
- (R^2 (complex numbers), <=_{lex})

:::definiton
R is an ordering on class A, let X \subsetq A
We say that a \in A is (with respect to R and A)
- majaorant (upper bound) - majoranta, horní mez
of the class X if $(\forall x in X)(x \in_r a)$
- maximal element of X iff a \in X A(\forall x in X)(\not a <_R x)
(maximální prvek)
- maximum element (largest) of X if $a \in X$ and a is a majorant
(největší)
- supremum of X if a is the smallest element of the class of all majorants of X
- smallest defined symetrically

- minorant, minimal element, minumum element, infimum
:::

:::observation
maxium -> maximal, if R is linear, maximal -> maximum and there is at most one maximal
there is alwats at most one maximum and at most one supremum
:::

notation
a = max_R(X)
a = sup_r(X)

X is bounded from above in A if there exists a majorant of X in A, similart from below (sdola)
(shora omezená)
X is lower set in A if (\forall x \in X)(\forall y \in A)(y <=_r x \implies y \in X) "with every element it containt all smaller elements"
(dolní množina)
- x \in A, then (\implies, x] is {y, y\in A \and y <=_R x} - principal ideal determined by x

:::observation
R is an ordering on A, then for arbitrary x, y \in A we have x <=_R y \eqv (\implies, y] \subsetq [\implies, y]
:::

remark construction of R from Q: Dedekind's cuts:
x \subsetq : X is a lower set with respect to classical ordering and if sup(x) exists then sup(X) \in X
for example Q prunik s (-inf, q) is not a ded. cut
Q prunik s (-inf, q] is a ded. cut
Q prunik s (-inf, square root of 2] is a ded. cut

:::definition
ordering R on class A is a well-ordering (dobré) if
every nonempty subset of A has a smallest element with respect to R
:::

Exercise: weire this definition using a formula
observation: well ordering is a hereditary property (IF b \subsetq A then R is well ordering also on B)
Observation: every well ordering is linear

exercise: find some sets on which E sjednoceno Id is a Well ordering


Comparing cardinalities
(mohutnost)
Set x has cardinality smaller than or equal to the cardinalty of Y, x <= y if there exists and indective mapping of x into y

