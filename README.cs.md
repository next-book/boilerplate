# Next-book Boilerplate

Jednoduchý nástroj pro publikování webových knih pomocí next-booku. Vyžaduje základní znalosti v oblasti webového vývoje a práce s příkazovou řádkou.

Víme, že jde zatím o docela vysoké nároky — kdybychom vám mohli s čímkoli pomoci, dejte nám vědět pomocí některého z kontaktů na našem webu [next-book.info](https://next-book.info).

## Co je to next-book?

Next-book je způsob, jak publikovat knihy coby webové stránky.

Proč? Denně trávíme neskutečné množství času na webu, ale pro čtení knih je zatím poměrně nevhodný. Není snadné udělat si záložku v půlce stránky anebo odkázat na konkrétní odstavec. Není možné dělat snadno anotace anebo si nastavit zobrazení.

Next-book je jeden z nástrojů, které se snaží tyto problémy řešit. Jde o otevřenou platformu (veškeré nástroje jsou dostupné pod svobodnou licencí).

Více podrobností najdete na webu [next-book.info](https://www.next-book.info), v češtině též na [stránce pro nakladatele](https://www.next-book.info/cs/). Princip mapování knihy, který umožňuje některé pokročilé funkcionality, je předveden na stránce [publisher test](https://next-book.github.io/publisher/).

## Použití

Každý next-book je webová stránka. Tento nástroj usnadňuje publikování next-booků ze sady podkladů (texty, grafika apod.).

Software je použitelný na osobním počítači — knihovny nyní (srpen 2020) podporují GNU Linux a macOS, ale počítáme s úpravou, aby bylo možné používat i klasický Windows počítač bez instalace linuxového subsystému.

Můžete využít i webové služby typu Netlify, která za vás vyřeší instalaci a další požadavky (viz přednastavený konfigurační soubor `netlify.toml`).

## Požadavky

Podle toho, jaký používáte operační systém, můžete mít některé z těchto nástrojů předinstalované.

- git ([instalace](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git))
- [node.js](https://nodejs.org/en/)
- [hugo](https://gohugo.io/) ([instalace](https://gohugo.io/getting-started/installing))

## Spuštění generátoru knih

1. Naklonujte tento repozitář — použijte gitový klient jako např. GitKraken anebo spusťte `git clone https://github.com/next-book/boilerplate.git` v příkazové řádce.
2. Otevřte příkazovou řádku a nalezněte nově vytvořenou složku `boilerplate` (pokud nevíte jak, podívejte se níže do sekce Troubleshooting).
3. Spusťte `npm install` (tímto se nainstalují potřebné knihovny do vašeho počítače).
4. Spusťte `npm run build` (tímto se vygeneruje kniha z pokladů).

Pokud šlo vše hladce, měli byste ve složce `boilerplate` vidět složku s knihou (`_book`). Tu můžete nahrát na svůj web — to je celé :)

**Tip:** Náhled knihy můžete otevřít spuštěním `npm run server` — tento příkaz vygeneruje knihu a poté spustí lokální server na adrese [http://127.0.0.1:23011/](http://127.0.0.1:23011/), kde ji zpřístupní.

Kniha musí být v gitovém repozitáři, aby se správně verzovala, takže pokud jste knihu stáhli namísto klonování, inicializujte repozitář a commitněte aktuální stav složky.

## Jak publikovat knihu?

- Upravte soubory ve složce `content`:
  - Kapitoly knihy jsou v souborech s koncovkou `.md`.
  - Metadata o knize jsou v souboru `_book.md`. (Zde je potřebné specifikovat pořadí kapitol v poli `chapters`.)
  - Titulní strana je v souboru `_index.md`.
- Struktura knihy je definovaná v HTML souborech ve složce `layouts`. Tento boilerplate používá pro generování HTML kódu nástroj [hugo](https://gohugo.io/).
- Vizuální styl a skripty můžete upravit v souborech ve složce `assets`. Vizuální styl je možné definovat ve třech módech (světlý, tmavý, sépie) a je nutné dávat pozor, abyste omylem nepředefinovali některou z barev pro všechny módy (a nedošlo tak třeba k zobrazení tmavého textu na tmavém pozadí).
- Pro úpravy vygenerovaného HTML můžete použít předpřiravený skript `filters.js` — např. pro snadné nalezení a nahrazení určitých prvků.

Pro publikování knihy spusťte `npm run build` a nahrajte složku `_book` na jakýkoli hosting.

## Dokumentace

Při běžném užití oceníte především přehled všech CSS proměnných, které se používají pro nastavení vizuálního stylu knihy: ten najdete v souboru [`_defaults.scss` uvnitř knihovny `@next-book/interface`](https://github.com/next-book/interface/blob/main/src/scss/_defaults.scss).

Tento boilerplate používá pro generování HTML kódu nástroj [hugo](https://gohugo.io/) — pokud budete chtít upravit nějakou část HTML kódu knihy (ve složce `layouts`), měla by vám stačit znalost tohoto nástroje.

Pokud se budete chtít hlouběji ponořit do práce s next-bookem, budete pracovat primárně se dvěma nástroji: `@next-book/publisher` ke generování knihy a `@next-book/interface` pro zobrazení uživatelského rozhraní knihy:

- [Dokumentace `publisher`](https://next-book.github.io/publisher/api/) je užitečná především tehdy, když chcete lépe porozumět nějaké části fungování next-booku nebo při nečekaném chování. Dokumentace je vygenerována ze zdrojového kódu a doplněná komentáři.
- Knihovna [`interface`](https://github.com/next-book/interface) je psaná v Typescriptu a používá pro práci s rozhraním frameworky React a redux, je tedy čitelná přímo. Všechny komponenty najdete ve složce `src/js/components`.

## Troubleshooting

### Nejsem si jistý\*á, zda mám naistalovaný git!

Spusťte příkaz `git version` na příkazové řádce. Pokud dojde k chybě, git nejspíš nemáte nainstalovaný nebo se objevil nějaký jiný problém. (Git by měl být nainstalovaný na počítačích s GNU Linux i macOS ve výchozím nastavení. Na Windows použijte výše odkazovaný instalační postup.)

### Když spouštím příkazy na mém počítači se systémem macOS, vyskakuje na mě chyba `invalid active developer path` nebo vyskočí okno s hláškou `Command Line Tools are required`.

Nainstalujte Command Line Tools (pokud vyskakuje okno, kde stačí kliknout na tlačítko Agree/Souhlasím), popř. spusťte instalaci pomocí příkazu `xcode-select --install`.

### Nevím, jak se dostanu do správné složky na příkazové řádce.

Použijte příkaz `cd` (z anglického „change directory“). Napište `cd` a poté zmáčkněte mezeru a napište cestu k dané složce. Vaše aplikace příkazové řádky bude nejspíše nejprve v nějaké výchozí lokaci (např. uživatelská složka na Linuxu a macOS nebo C:/ na Windows), takže je možné, že budete muset tento postup zopakovat, než se do dané složky dostanete (tip: příkazová řádka většinou umožňuje automatické dokončování názvů — stačí tedy napsat prvních pár písmen a zmáčknout klávesu Tab). Na macOS je možné do okna příkazové řádky přetáhnout složku z aplikace Finder a tímto se cesta napíše automaticky.
