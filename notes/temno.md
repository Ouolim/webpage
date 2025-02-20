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
- odvozovací pravidla (intuitivně)
	- z $\phi, \phi\implies\psi$ odvodíme $\psi$
	- z $\psi$ odvodíme $(\forall x)\psi$

## Axiomy TM - "jak se chová $\in$", "jaké množiny existují"
- ZF teorie - 9 axiomů (7 axiomů + 2 schémata)
- 10 axiom výběru (axiom of choice) - AC
- ZFC = ZF + AC

::: definition
1. Axiom existence množiny
	- $(\exists x)(x=x)$ - budiž množina
2. Axiom extenzionality
	- $(\forall z)(z\in x\iff z\in y)\implies x=y$ - pokud mají x a y stejné prvky, rovnají se
	- opačná implikace plyne z jednoho z axiomů rovnosti
:::

::: exercise
Cvičení: dokažte že $((x\subseteq y)\land(y\subset z)) \implies x\subset z$
:::

::: definition
3. Schéma axiomů vydělení
- je-li $\phi(x)$ formule, která neobsahuje volnou proměnnou $z$, poté následující formule je axiom: $()$
:::
