# cpp_runner.ps1
# ==========================================
# Prosty launcher do kompilacji i uruchamiania programów C++

# Przechowujemy ścieżkę globalnie między uruchomieniami skryptu (jeśli w tej samej sesji)
if (-not $global:CppFile) {
    $global:CppFile = ""
}

function Set-Path {
    $path = Read-Host "Podaj pełną ścieżkę do pliku .cpp (np. C:\Users\User\Desktop\Nowy folder\main.cpp)"
    if (Test-Path $path) {
        $global:CppFile = $path
        Write-Host "✅ Zapisano ścieżkę: $global:CppFile" -ForegroundColor Green
    } else {
        Write-Host "❌ Plik nie istnieje. Spróbuj ponownie." -ForegroundColor Red
    }
}

function CompileAndRun {
    if (-not $global:CppFile -or -not (Test-Path $global:CppFile)) {
        Write-Host "❌ Nie ustawiono poprawnej ścieżki! Użyj klawisza 'a' aby ją dodać." -ForegroundColor Red
        return
    }

    $exePath = [System.IO.Path]::ChangeExtension($global:CppFile, ".exe")
    Clear-Host
    Write-Host "🔧 Kompiluję: $global:CppFile" -ForegroundColor Cyan

    g++ "$global:CppFile" -o "$exePath"
    if ($LASTEXITCODE -eq 0) {
        & "$exePath"
        Write-Host "`n(Plik: $global:CppFile)" -ForegroundColor DarkGray
    } else {
        Write-Host "❌ Błąd kompilacji!" -ForegroundColor Red
    }
}

# ==========================================
# Główna pętla menu
# ==========================================

while ($true) {
    

    $choice = Read-Host "Wybierz opcję (a/l/q)"

    switch ($choice) {
        'a' { Set-Path }
        'l' { CompileAndRun }
        'q' { Write-Host "👋 Do zobaczenia!"; break }
        default { Write-Host "❗ Nieznana opcja. Spróbuj ponownie." -ForegroundColor Yellow }
    }
}
