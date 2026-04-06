# 06 - Implementation

Implementace v Naturebound probíhá iterativně – nejprve stavíme izolované funkční celky, které následně propojujeme.

## Výběr technologií (Game Engine)
Pro projekt Naturebound byl zvolen engine, který efektivně zvládá 2D pixel art a nabízí robustní rozhraní pro řešení podstatných problémů jednoduše (kolize, rychlý debug, jednoduché propojení designu s vývojem a testování):
**Godot**

## Fáze prototypování a postupový plán

### Pohyb, fyzika a logika živlů:
- Skákání, gravitace, kolize s prostředím (okraje hry).
- Fyzika (propadnutí se do vody/lávy)
  - do budoucna také překážky na "řetězu" podobně jako ve hře Fireboy and Watergirl - ty budou reagovat na těžiště
  - [![Chainbridge](/assets/docs/chain-bridge.png "Shiprock, Chain bridge")](assets/docs/chain-bridge.png)
- Ovládání hry a nastavení správné rychlosti běhu a skoku hráčů
- Navázání reakcí jednotlivých živlů (smrt vody v případě spadnutí do lávy atd.)

### Designový update
- Nastavování správného vzhledu objektů na základě vypracovaných assetů (hráči, zem, background...)
- Efekty a animace
  - animace skoků a běhu
  - zdynamičnení jednotlivých postav (např. nějaké sparky)
- Jemné designové úpravy pro zesílení atmosféry hry

### UI a menu
- Programování funkčního menu
- Přepínání mezi levely a HUD (ukazatel času...).
- Možnost zastavení hry

### Finální úpravy
- Ukládání odehraného postupu
- Nastavení ikonky a jména hry při spuštění
- Vytvoření prvního, zcela hratelného a kompletního buildu a vhodného k produkci mezi veřejnost

## Architektura kódu

Hra je stavěna modulárně, aby bylo v budoucnu snadné přidat:
- v rámci aktualizace pro multiplayer další živly (Země, Vzduch). 
- řadu dalších levelů bez nutnosti programovat každý jeden z nich

V kódu jsou taktéž využívány u opakovaných věcí konstanty, aby mohli být v budoucnu např. konfigurací/nastavením hry.