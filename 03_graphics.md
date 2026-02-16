# 03 - Graphics

**Využité nástroje:**
- Photoshop (na samotný art) - samotný art
- https://www.pixilart.com/ - inspirace/barvy
- Gemini Pro 3 - nápad

## 1. Hlavní postavy (Characters)

| Název assetu | Typ | Animace| Vizuální styl |
| :--- | :--- | :--- | :--- |
| **Fire Player** | Sprite | Idle, Run, Jump, Death. | Plameny a ohnivé vlasy. Dominantní barva: **Oranžová/Červená**. |
| **Water Player** | Sprite | Idle, Run, Jump, Death. | Znázornění vody. Dominantní barva: **Modrá/Zelená**. |

![Fire & Water player](/assets/fire_water.png "Fire & Water player")

## 2. Prostředí (Environment & Tilesets)

| Název assetu | Typ | Popis | Vizuální styl |
| :--- | :--- | :--- | :--- |
| **Ground** | Tileset | "Podlaha pro hráče" | Hnědá hlína, zelený trávník na vrchu.  |
| **Background** | Obrázek | Pozadí znázorňujicí přírodu / jeskyni | Barvy s nižším kontrastem aby to opravdu vypadlao jako pozadí |
| **Floating** | Tileset | Levitující plošinky, na které se skáče. | Ostrovy s podobným stylem jako Ground a s kořeny visícími dolů. |
| **Hazards** | Objekt | Místa, kam hráč nesmí spadnout (propast, voda/láva, kyselina). | Ostré trny nebo temná propast ve spodní části obrazovky. |

![Ground](/assets/terrain.png "Ground")

## 3. Interaktivní objekty a Puzzle (Mechaniky)

| Název assetu | Interakce | Stav (States) |
| :--- | :--- | :--- |
| **Dřevěná bariéra** | Zničitelná pouze **Fire Playerem**. | 1. Celá (blokuje cestu)<br>2. Hořící (animace)<br>3. Zničená (zmizí/popel) |
| **Spínač (Button)** | Musí ho někdo přepnout, aby se otevřely dveře či stala nějaká akce. | 1. Vypnutý (nahoře)<br>2. Zapnutý (stlačený dole) |
| **Dveře / Brána**   | Otevřou se po splnění podmínek. | 1. Zavřené (zámek)<br>2. Otevřené (záře vycházející ven)

![Ground](/assets/barrier.png "Barrier")

## 4. Uživatelské rozhraní (UI)

| Název assetu | Typ | Popis |
| :--- | :--- | :--- |
| **Menu Tlačítka** | UI | Start, Options, Exit. |
| **Game Over Screen** | UI | Obrazovka při prohře. |

