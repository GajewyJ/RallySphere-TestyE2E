![rallysphere-high-resolution-logo-transparent](https://github.com/GajewyJ/RallySphere-Project/assets/90028969/d16f832f-1f26-46fb-82dc-c3d08ab43323)

# Opis aplikacji

**Nazwa aplikacji:** RallySphere

**Opis:** Aplikacja internetowa dla osób zainteresowanych tematem rajdów
samochodowych, a w szczególności Rajdowych Mistrzostw Świata
WRC.

Aplikacja zrealizowana jest w języku angielskim.

Na stronie głównej znaleźć można 3 najnowsze wiadomości dotyczące
cyklu Rajdowych Mistrzostw Świata, odnośniki do aktualnych rankingów
kierowców, pilotów oraz zespołów, a także odnośnik do Encyklopedii
Samochodów.

Pod nagłówkiem widnieje pasek z obecnie trwającym lub najbliższym
nadchodzącym rajdem wraz z jego datami.

W zakładce WRC [aktualny sezon] znajdują się kafelki z odnośnikami do
wszystkich wiadomości o WRC, do kalendarza Mistrzostw, do
wymienionych wcześniej trzech rankingów, a także link do zewnętrznego
oficjalnego serwisu RallyTV, który jest oficjalnym serwisem
streamingowym WRC.

Rankingi zrealizowane są w formie tabel z danymi osób / drużyn
posortowane według punktów.

Wiadomości mają formę kafelków ze zdjęciem datą i tytułem, po
kliknięciu zobaczyć możemy stronę wiadomości, która zawiera oprócz
tego do trzech paragrafów tekstu oraz przycisk “BACK” pozwalający na
powrót do strony z wiadomościami.

Kalendarz również ma formę kafelków, jednak pokazują one nazwę, datę
oraz państwo wraz z flagą, w którym rajd jest organizowany.

W zakładce Car Encyclopedia znajdują się kafelki z grupami
samochodów - latami, w których te grupy istniały, nazwami grup, a także
zdjęciem samochodu. Po kliknięciu na grupę wyświetlają
się samochody z tej grupy – ich marka i model oraz zdjęcie, a po
kliknięciu również opis, w podobnej formie co wiadomości. Pod
zdjęciem widnieją też prawa autorskie do zdjęcia oraz licencja
(wszystkie zdjęcia samochodów pochodzą z serwisu https://commons.wikimedia.org/)

Ostatnią funkcją aplikacji jest panel administracyjny, który znaleźć
można pod ścieżką [aplikacja]/admin. Wyświetla on panel logowania, a
po poprawnym zalogowaniu listę tabel. Wybierając jedną wyświetlamy
jej zawartość - można dodawać, usuwać oraz edytować rekordy.
Dodawanie oraz edycja odbywają się po kliknięciu odpowiedniego
przycisku - “Add a new [typ rekordu]” lub zielony przycisk “EDIT”. Później
otwiera się okno modalne pozwalające na adekwatną operację.
Natomiast usunięcie rekordu realizujemy poprzez czerwony przycisk
“DELETE” obok rekordu w tabeli. Z panelu administracyjnego wylogować
się możemy klikając przycisk “Logout”.

# Opis podziału pracy

Nie dotyczy: zarówno frontend, backend jak i baza danych zrealizowane
przez jedną osobę: Jakub Gajewy.

# Opis + diagram bazy danych

**Opis bazy danych:** Baza danych składa się z 8 tabel: admins, enc_cars,
enc_categories, news, wrc_codrivers, wrc_drivers, wrc_rallies oraz
wrc_teams.

Tabela **admins** zawiera id, nazwę użytkownika oraz hasło dla panelu
administracyjnego.

Tabela **enc_cars** zawiera dane o samochodach, czyli id, markę, model,
opis, url zdjęcia, prawa autorskie do zdjęcia w formie HTML oraz ID
grupy (kategorii).

Tabela **enc_categories** zawiera dane o grupach (kategoriach), czyli id,
nazwę, lata, opis (nieużywany przez aplikację), numer chronologii, według którego wyświetlane są one w odpowiedniej kolejności, a także
url zdjęcia.

Tabela **news** zawiera dane o wiadomościach - id, tytuł, 3 paragrafy,
nazwę pliku ze zdjęciem oraz datę publikacji.

Tabela **wrc_codrivers** zawiera informacje o pilotach – id, imię, nazwisko,
państwo, które rezprezentuje, drużynę oraz ilość punktów.

Tabela **wrc_drivers** zawiera informacje o pilotach – id, imię, nazwisko,
państwo, które rezprezentuje, drużynę oraz ilość punktów.

Tabela **wrc_rallies** zawiera dane o rajdach – id, nazwę, sezon, państwo
oraz daty rozpoczęcia i zakończenia.

Tabela **wrc_teams** zawiera informacje o drużynach - id, nazwę, państwo,
w którym się znaduje, rok założenia, imię i nazwisko przewodniczącego,
kategorię WRC, markę oraz ilość punktów.

Poniżej znajduje się **diagram bazy danych**:

![Diagram bazy danych RallySphere](https://github.com/GajewyJ/RallySphere-Project/assets/90028969/0c2de089-cb48-4c0d-ac97-0d1dd751ae99)

# Testy w Aplikacji

**Instrukcja uruchamiania testów E2E: ** 
1. Po zainstalowaniu projektu będąc w folderze *client* wprowadź do konsoli *'npm run cy:open'*
2. Włączy się program Cypress - klinknij *E2E Testing* i wybierz przeglądarkę *Edge* i kliknij przycisk *Start E2E Testing in Edge*
3. Wybierz zestaw testów do uruchomienia - uruchomi się po ty automatycznie

# Konfiguracja środowiska

Na komputerze powinna znajdować się osadzona w phpmyadmin baza danych *rallysphere*, na którą powinny być zaimportowane tabele z pliku *rallysphere.sql*. Włączona powinna być usługa Apache i MySQL. Aby uruchomić aplikację należy będąc w folerze *api* wprowadzić do konsoli *'npm run dev'*. To samo należy zrobić w folderze *client* (nie zamykając konsoli z *api*). Aplikacja znajdować się będzie na *localhost:5173*
