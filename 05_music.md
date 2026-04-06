# 05 - Music

Cílem je vytvořit dynamický hudební podklad, které reaguje na psychologii hráče a aktuální stav herního světa.

## Vize

Hudba v Naturebound nebude jen kulisou, ale aktivním prvkem, který reflektuje napětí. Pokud hráč bude procházet lehkou pasáží, hudba bude uklidňující a atmosférická. Jakmile se zvýší obtížnost nebo se hráč dostane do stresové situace (např. těsně před vypršením limitu - či blízko nebezpečné situace), hudba začne gradovat.

## Technické řešení

Oproti použítí klasického dlouhého mp3 souboru se nabízí tyto řešení:
- Horizontalní resekvence: Přechody mezi různou hudbou na základě herních milníků
  - vytvoření objemné databáze hudby pro různé situace a přepínání mezi nimi na základě logických podmínek
- Vertikální remixing (Layering):
  - budování hudby z jednotlivých stemů (vrstev) v reálném čase - např. při vstupu ohnivé postavy blízko vody přidat agresivní bicí či syntentizátory
- Generativní AI složka: využití algoritmů pro budování hudby v reálném čase na základě všech podmínek (nikdy by hudba tedy nebyla stejná
  - využití API / či vlastního modelu

### Dodatek pro verze hry (2 hráči na 1 zařízení)

Zároveň taktéž v případě verze hry pro 2 hráče na jednom zařízení musíme hudbu vyladit tak, aby psychologicky zasáhla oba dva hráče přestože mohou být v rozdílné situaci.
V tomto případě možné řešení představují např. 
- budování hudebního podkladu z dvou rozdílných tracků a zesilování na základě intenzity situace
  - kupříkladu: hráč Water bude v dobré situaci ale intenzita tracku reprezentující hráče Fire se bude zvyšovat tím, jak se bude hráč Fire dostávat do nebezpečnější situace a naopak

## Psychologické mapování

|Parametr            |Vliv na hudbu                                 |Psychologický efekt           |
|--------------------|----------------------------------------------|------------------------------|
|Success Rate        |Zvýšení komplexnosti melodie                  |Pocit flow a odměny           |
|Death Count         |Změna tóniny (moll), ztišení                  |Reflexe neúspěchu, napětí     |
|Time Pressure       |Zrychlení BPM (tempa)                         |Adrenalin, pocit urgence      |

## Budoucí rozšíření
S přidáváním dalších živlů (země, vzduch) získá každý element svůj unikátní hudební podpis. Díky tomu, že v tu chvíli již hra bude mít multiplayer a hru se 4 živly bude umožňovat pouze přes něj, můžeme každému hráči stavět hudební podklad jen pro něj a nerozdělovat ho tak pro dva hráče (viz bod `Dodatek pro verze hry (2 hráči na 1 zařízení)`).
