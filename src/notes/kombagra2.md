# Edmonsonův algoritmus

# Kombagra II - Lekce 2

### Opakování z minula

- VSC, květy, párovaní, bla bla bla

### Dnes

- **perfektní párovaní** - každý vrchol je v právě jednom páru
- pro bipartitní jednoduchý - Hallova podmínka
- obecně? - idk, maybe. maybe yes, maybe not.
- pro graf G **odd(G)** je počet lichých komponent
- **Tutteho věta:** graf *G* má PP (hihi) každý *A* z vrcholy *G* : $odd(G \\ A) <= |A|$
    dukaz:
        -$(\implies)$ každá lichá komponenta v G \\ A má v PP hranu do A
        -$(\leftArrow)$ indukcí podle počtu nehran:
            1.) pokud G je klika: easy 
            2.) G není klika, S = \{v z V(G) | V je spojená s každým V(G) \\ v\}
                a) každá komponenta G \\ S je klika
                    - spáruju vrcholy v každé sudé komponentě
                    - liché komponenty spáruju s vrcholem z S (hrana existuje z definice S a dost vrcholů existuje z Tutteho podmínky (resp. nemusí existovat, ale potom není maximální parovaní a pak neplatí ekvivalence))
                    - dopáruju zbylé vrcholy z S (G má sudý počet vrcholu, vždycky vyjde)
                b) G není klika a G \\ S má alespoň jednu komponentu, která není klika
                    - tato komponenta buď má 2 a méně vrcholů nebo obsahuje trešničku
                    - dále stopka trešnicky *v* má nesousední lísteček *u* (z definice S)
                    - e1 = x, y && e2 = v u
                    - G1 je G + e1 && G2 je G + e2
                    - pozorovaní: pokud H vznikl z G pridaním hrany a G splňuje TP -> potom i H splňuje TP
                    - pokud G splňuje TP pak i G1 a G2 to splňují
                    - z IP G1 ma PP: *p1* a G2 ma PP: *p2*
                    - pokud *p1* neobsahuje e1 || *p2* neobsahuje e2 => G má PP
                    - uvažme H = *p1* + *p2*:
                        - H má každý stupeň <= 2
                        - H obsahuje pouze cykly mezi 2 vrcholy nebo střídavě kružnice
                            I.) e1 i e2 jsou v ruzných komponentách, pak alternuju komponentu e1
                            II.) pokud jsou ve stejné komponente - pomocí hran $\{x, v\}$ a $\{v, y\}$ zkonstrujeme nové parovaní, které nepoužívá ani e1 ani e2

- **Petersenova věta**: každý 3-regularní 2-souvislý graf G ma PP
    důkaz:
        1.) z 2 souvislosti každá komponenta G \\ S má min. 2 hrany s S
        2.) z 3 regularity víme, že součet hran uvnitř komponenty musí být lichý - ven musí vést lichý počet taky $\implies$ každá lichá komponenta musí mít 3 hrany do S $\implies$ musí být spojený s nějakým vrcholem $\implies$ 3-reg. = vrcholů je tolik, kolik lichých komponent

