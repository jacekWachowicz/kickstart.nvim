# 1. Stwórz katalog na czcionki użytkownika (jeśli nie istnieje)
mkdir -p ~/.local/share/fonts

# 2. Pobierz paczkę JetBrains Mono z oficjalnego repozytorium Nerd Fonts (wersja v3.2.1+)
# Używamy wget, co jest szybsze i bardziej niezawodne
wget https://github.com/ryanoasis/nerd-fonts/releases/latest/download/JetBrainsMono.zip

# 3. Rozpakuj tylko pliki .ttf (TrueType Font) do folderu czcionek
unzip JetBrainsMono.zip -d ~/.local/share/fonts

# 4. Odśwież cache czcionek systemowych, aby Ubuntu "zauważyło" nową czcionkę
fc-cache -fv

# 5. Usuń pobrane archiwum, by zachować porządek w królestwie
rm JetBrainsMono.zip
