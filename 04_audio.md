# 04 - Audio

Pro odlišení od ostatních her a vytvoření autentičnosti této hry, bude k výslednému audiu využit primárně originálně natočený zvuk bez použití zvukových bank a externích programů. 
Externí programy budou využity pouze jako nástroj pro zrychlení/zpomalení efektu, jeho opakování/prolínání v čase či střih, nikoliv jako nástroj pro tvorbu SFX.

## Využité externí programy
- Audacity - https://www.audacityteam.org/
- Interní záznamník zvuku v smartphonech Xiaomi
- Windows Hlasový záznam (https://apps.microsoft.com/detail/9wzdncrfhwkn; mikrofon Behringer C1-U)

## Terminologie

Zvuk je odlišen od hudby (rozebírané v další části) tím, že je vždy navázán na specifickou akci. Např. specifický zvuk při akci Game over nebo při smrti jednoho z hráčů

## Zvukové assety

Zvukové assety jsou uloženy v adresáři `/audio` ve formátu `.m4a`

Kategorie akcí | Akce | Finální zvukový soubor
--- | --- | ---
Stav hry | Start hry | game-state/start-game.m4a
Stav hry | Konec hry | game-state/start-game.m4a
Hráč | Smrt hráče (pád do vody, hráč Fire) | player/fire-death.m4a
Hráč | Smrt hráče (pád do lávy, hráč Water) | player/water-death.m4a
Hráč | Výskok hráče (hráč Water) | player/water-jump.m4a
Hráč | Výskok hráče (hráč Fire) | player/fire-jump.m4a
Hráč | Běh hráče (hráč Fire) | player/fire-run.m4a
Hráč | Běh hráče (hráč Water) | player/water-run.m4a
GUI | Otevření menu | gui/open-menu.m4a
GUI | Kliknutí na tlačítko | gui/click-button.m4a
