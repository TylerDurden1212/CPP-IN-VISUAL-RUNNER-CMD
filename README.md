✅ KROK PO KROKU
1️⃣ Wejdź na stronę:

👉 https://www.msys2.org/

Kliknij duży przycisk “Download the installer”
Zapisze się plik np. msys2-x86_64-2024xxxx.exe.

2️⃣ Uruchom instalator

Zainstaluj go z domyślnymi ustawieniami (zazwyczaj C:\msys64).

Po zakończeniu instalacji:

Otworzy się terminal MSYS2 (czarne okienko).
Jeśli nie — otwórz go ręcznie z menu Start → MSYS2 UCRT64.

3️⃣ Zaktualizuj system paczek

Wpisz w okienku MSYS2:

pacman -Syu


Jeśli po zakończeniu aktualizacji MSYS2 się zamknie — otwórz je ponownie (MSYS2 UCRT64) i wpisz ponownie:

pacman -Syu

4️⃣ Zainstaluj kompilator C++

Teraz wpisz:

pacman -S mingw-w64-ucrt-x86_64-gcc


To pobierze i zainstaluje:

g++

gcc

gdb (debugger)

5️⃣ Sprawdź, czy działa

Zamknij MSYS2 i otwórz nowe okno „MSYS2 UCRT64”.
Wpisz:

g++ --version


Jeśli zobaczysz wersję np.:

g++ (Rev3, Built by MSYS2 project) 14.2.0


✅ GOTOWE! 🎉

6️⃣ (Opcjonalnie) – chcesz używać g++ w PowerShell / CMD?

Dodaj do zmiennych środowiskowych ścieżkę:

C:\msys64\ucrt64\bin


👉 Jak to zrobić:

W menu Start wpisz „zmienne środowiskowe”

Kliknij „Edytuj zmienne środowiskowe systemu”

W sekcji Path kliknij „Edytuj” → „Nowy”

Wklej C:\msys64\ucrt64\bin

Zatwierdź OK

Teraz możesz w zwykłym PowerShellu wpisać:

g++ --version


i działa 🎯



--Do uruchomienia polecenia który pozwala kompilowac i uruchmamiac program prez a i l to trzeba wklepać plcenei e wpliku powershelll i potem wkleic komende w pliku ytxt zeby to działao i klasa
