# Rustforce

Salesforce language support for [Zed](https://zed.dev) editor.

## Features

- **Apex** syntax highlighting (`.cls`, `.trigger` files)
- **SOQL** syntax highlighting (`.soql` files)
- **SOSL** syntax highlighting (`.sosl` files)
- Embedded SOQL/SOSL highlighting within Apex code
- Bracket matching and auto-indentation for Apex

## Installation

1. Open Zed
2. Open the Extensions panel (`Cmd+Shift+X` on macOS)
3. Search for "Rustforce"
4. Click Install

## Grammars

This extension uses the excellent [tree-sitter-sfapex](https://github.com/aheber/tree-sitter-sfapex) grammars by [@aheber](https://github.com/aheber).

## Development

```bash
# Clone the repository
git clone https://github.com/avinkrisv/rustforce.git
cd rustforce

# Build the extension
cargo build --release --target wasm32-wasip1

# Install as dev extension in Zed
# 1. Open Zed command palette (Cmd+Shift+P)
# 2. Run "zed: install dev extension"
# 3. Select this directory
```

## License

MIT License - see [LICENSE](LICENSE) for details.
