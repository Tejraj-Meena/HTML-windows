# Code Editor - Windows Desktop App

A full-featured HTML/CSS/JS code editor for Windows with file import, undo/redo, and live preview.

## Installation

### Download Pre-built Installer
1. Download `CodeEditor-Setup-1.0.0.exe` from Releases
2. Run the installer
3. Follow the installation wizard
4. Launch from Start Menu or Desktop shortcut

### Or Build It Yourself

**Requirements:**
- Node.js 14+
- Git

**Steps:**
1. Clone this repository
   ```bash
   git clone https://github.com/YOUR-USERNAME/code-editor-windows.git
   cd code-editor-windows
   ```

2. Install dependencies
   ```bash
   npm install
   ```

3. Build the Windows installer
   ```bash
   npm run build:win
   ```

4. The `.exe` installer will be in the `dist/` folder

## Features

- **Multi-file support** - Create and edit multiple HTML, CSS, and JS files
- **File import** - Pick multiple `.html`, `.css`, `.js` files at once
- **Image support** - Import images and use them in your HTML
- **Undo/Redo** - Full undo/redo history
- **Auto-closing tags** - HTML tags close automatically
- **Live preview** - See your code run in real-time
- **Dark mode** - Toggle between light and dark themes
- **Download project** - Export entire project as `.zip`

## Usage

1. Launch the app
2. Click import buttons to add files
3. Edit code in the left panel
4. See live preview on the right
5. Download your project as ZIP

## Development

Run in development mode:
```bash
npm run dev
```

## License

MIT
