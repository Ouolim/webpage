# Kombagra II — Lekce 2

### Opakování z minula

- VSC, květy, párování

### Dnes

- **Perfektní párování** — každý vrchol je v právě jednom páru
- Pro bipartitní grafy — Hallova podmínka
- Pro graf $G$: $odd(G)$ je počet lichých komponent

---

## Tutteho věta

::: theorem
Graf $G$ má perfektní párování $\iff$ pro každou množinu vrcholů $A$: $odd(G \setminus A) \leq |A|$
:::

::: proof
**Důkaz:**

$(\implies)$: Každá lichá komponenta v $G \setminus A$ má v PP hranu do $A$.

$(\Leftarrow)$: Indukcí podle počtu nehran:

**1)** Pokud $G$ je klika — triviální.

**2)** $G$ není klika. Definujme $S = \{v \in V(G) \mid v \text{ je spojený s každým } V(G) \setminus \{v\}\}$.

- **a)** Každá komponenta $G \setminus S$ je klika:
	- Spárujeme vrcholy v každé sudé komponentě
	- Liché komponenty spárujeme s vrcholem z $S$ (hrana existuje z definice $S$, dost vrcholů existuje z Tutteho podmínky)
	- Dopárujeme zbylé vrcholy z $S$ ($G$ má sudý počet vrcholů, vždy vyjde)

- **b)** $G$ není klika a $G \setminus S$ má alespoň jednu komponentu, která není klika:
	- Tato komponenta buď má $\leq 2$ vrcholů, nebo obsahuje třešničku
	- Stopka třešničky $v$ má nesousední lísteček $u$ (z definice $S$)
	- Položme $e_1 = \{x, y\}$, $e_2 = \{v, u\}$
	- $G_1 = G + e_1$, $G_2 = G + e_2$
	- **Pozorování:** pokud $H$ vznikl z $G$ přidáním hrany a $G$ splňuje TP, pak i $H$ splňuje TP
	- Tedy $G_1$ i $G_2$ splňují TP
	- Z IP: $G_1$ má PP $p_1$ a $G_2$ má PP $p_2$
	- Pokud $p_1$ neobsahuje $e_1$ nebo $p_2$ neobsahuje $e_2$ $\implies$ $G$ má PP
	- Uvažme $H = p_1 \cup p_2$:
		- $H$ má každý stupeň $\leq 2$
		- $H$ obsahuje pouze cykly délky 2 nebo střídavé kružnice
		- **I.** $e_1$ i $e_2$ jsou v různých komponentách — alternujeme komponentu $e_1$
		- **II.** Jsou ve stejné komponentě — pomocí hran $\{x, v\}$ a $\{v, y\}$ zkonstruujeme nové párování bez $e_1$ i $e_2$
:::

---

## Petersenova věta

::: theorem
Každý 3-regulární 2-souvislý graf $G$ má perfektní párování.
:::

::: proof
**Důkaz** (ověření Tutteho podmínky):

1. Z 2-souvislosti: každá komponenta $G \setminus S$ má minimálně 2 hrany do $S$
2. Z 3-regularity: součet hran uvnitř komponenty musí být lichý, ven musí vést lichý počet $\implies$ každá lichá komponenta musí mít $\geq 3$ hrany do $S$ $\implies$ musí být spojena s alespoň 3 vrcholy $\implies$ z 3-regularity je vrcholů v $S$ alespoň tolik, kolik lichých komponent
:::
