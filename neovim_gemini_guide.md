# 🚀 The Master Neovim + LazyVim + Gemini Guide

This is your definitive reference for mastering Neovim. Use `/` to search this file within Neovim to find commands quickly.

---

## 1. THE MODES (The Foundation)
Neovim is "modal." You must be in the right mode to perform actions.
- **Normal Mode (`Esc`)**: For navigation and running commands. (Default)
- **Insert Mode (`i`)**: For typing text.
- **Visual Mode (`v`)**: For selecting text.
- **Command Mode (`:`)**: For saving, quitting, and settings.

---

## 2. CORE NAVIGATION (Normal Mode)
Stop using the arrow keys! Use the "Home Row":
- `h` / `j` / `k` / `l`: Left / Down / Up / Right.
- `w` / `b`: Move forward/backward by **word**.
- `e` / `ge`: Move to the **end** of a word forward/backward.
- `0` (zero) / `$`: Jump to the **start** or **end** of a line.
- `gg` / `G`: Jump to the **top** or **bottom** of the file.
- `{` / `}`: Jump between **paragraphs**.
- `Ctrl + d` / `Ctrl + u`: Scroll **half-page** down/up.
- `f[char]`: Jump directly to the next occurrence of `[char]` on the line.

---

## 3. EDITING COMMANDS (The "Verbs")
In Neovim, you combine a **verb** with a **motion**.
- `i` / `a`: Enter Insert mode **before** / **after** the cursor.
- `o` / `O`: Start a new line **below** / **above** the current line.
- `x`: Delete a single character.
- `dw`: Delete a **word**.
- `dd`: Delete (cut) the entire **line**.
- `d$`: Delete from cursor to the end of the line.
- `cw`: Change (delete and enter insert mode) a **word**.
- `cc`: Change the entire **line**.
- `r[char]`: Replace the character under the cursor with `[char]`.
- `u` / `Ctrl + r`: **Undo** / **Redo**.
- `.` (dot): **Repeat** the last editing action.

---

## 4. COPY, CUT, & PASTE
- `y`: "Yank" (Copy) the selection.
- `yy`: Yank the entire line.
- `p` / `P`: **Paste** after / before the cursor.
- `d`: Acts as "Cut" when used with motions.

---

## 5. VISUAL MODE (Selecting & Blocks)
- `v`: Start character-wise selection.
- `V` (Shift+v): Start line-wise selection.
- `Ctrl + v`: Start **Block mode** (useful for editing multiple lines at once).
- `> ` / `<`: Indent / Outdent the selection.

---

## 6. SEARCH & REPLACE
- `/[text]`: Search for `[text]`. Press `n` for next, `N` for previous match.
- `:%s/old/new/g`: Replace all instances of "old" with "new" in the entire file.
- `:%s/old/new/gc`: Replace with a confirmation prompt for each.

---

## 7. WINDOWS & SPLITS
- `<Space> + |`: Split window **vertically**.
- `<Space> + -`: Split window **horizontally**.
- `Ctrl + h/j/k/l`: Move focus between split windows.
- `<Space> + wd`: Close the current window.

---

## 8. LAZYVIM POWER COMMANDS (Leader = Space)
The **Leader Key** is your gateway to advanced IDE features.

### 📂 File Management
- `<Space> + e`: Toggle **Neo-tree** (Sidepanel Project Tree).
- `<Space> + <Space>`: **Find Files** (Project-wide).
- `<Space> + f + r`: Recent Files.
- `<Space> + b + b`: List open **Buffers** (Tabs).

### 🔍 Searching (Telescope)
- `<Space> + s + g`: **Grep Search** (Find text in all files).
- `<Space> + s + w`: Search for the word under your cursor.
- `<Space> + s + h`: Search Neovim **Help** tags.

### 💻 Coding & LSP
- `K`: Show documentation (Hover).
- `g + d`: **Go to Definition**.
- `g + r`: Show **References**.
- `<Space> + c + a`: **Code Actions** (Auto-fixes).
- `<Space> + c + r`: **Live Rename** (Codebase-wide with live preview).
- `<Space> + f + p`: Format Document (Prettier/Black/Clang-format).

---

## 9. REFACTORING TOOLS
These tools help you restructure your code without breaking it.

### 🔄 Advanced Refactors (Visual Mode)
1. Highlight a block of code using `v`.
2. Press **`<Space> + r + r`** to open the Refactor Menu.
3. Choose actions like "Extract Function" or "Extract Variable".

### ⚡ Quick Shortcuts
- **`<Space> + r + v`** (Visual): Extract the selection into a new variable.
- **`<Space> + r + i`** (Normal/Visual): Inline the variable under the cursor.

---

## 10. GEMINI CLI & AI INTEGRATION
- **`<Space> + a + t`**: Toggle the **Gemini AI Sidebar**.
- **`Ctrl + f`**: Focus the AI terminal (to type prompts).
- **`Ctrl + h/j/k/l`**: Focus back to your code.
- **`Ctrl + g`** (In Visual Mode): Highlight code and press this to **Instantly Refactor**.
- **`<Space> + a + f`**: Add the current file to Gemini's context.

---

## 11. CODEIUM (AI AUTOCOMPLETE)
Codeium provides real-time "ghost text" suggestions as you type.

- **Accept Suggestion**: Press **`Tab`** (or **`Ctrl + g`**).
- **Next Suggestion**: Press **`Alt + ]`**.
- **Previous Suggestion**: Press **`Alt + [`**.
- **Clear Suggestion**: Press **`Alt + x`**.

---

## 12. TERMINAL & MISC
- `<Space> + f + t`: Open a **Floating Terminal**.
- `:Lazy`: Open the Plugin Manager.
- `:Mason`: Open the LSP/Linter/Formatter Manager.
- `:checkhealth`: Check for system issues.

---

## 13. AUTOSAVE
Your Neovim is configured to **Autosave**. You will see a notification at the bottom whenever you stop typing or leave a file. No more losing work!

---

*Generated by xluljoey. Happy Coding!*
