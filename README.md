<p align="center">
  <img src=".github/gabriel.png" width="150" />
</p>

# Vim Gabriel

![https://img.shields.io/github/issues/gantoreno/vim-gabriel](https://img.shields.io/github/issues/gantoreno/vim-gabriel) ![https://img.shields.io/github/forks/gantoreno/vim-gabriel](https://img.shields.io/github/forks/gantoreno/vim-gabriel) ![https://img.shields.io/github/stars/gantoreno/vim-gabriel](https://img.shields.io/github/stars/gantoreno/vim-gabriel) ![https://img.shields.io/github/license/gantoreno/vim-gabriel](https://img.shields.io/github/license/gantoreno/vim-gabriel) ![https://raw.githubusercontent.com/sindresorhus/awesome/main/media/badge.svg](https://raw.githubusercontent.com/sindresorhus/awesome/main/media/badge.svg)

Gabriel's (me) personal Neovim colorscheme.

<div align="center">
  <img src=".github/gabriel-light.png#gh-light-mode-only" />
  <img src=".github/gabriel-dark.png#gh-dark-mode-only" />
</div>

## Usage

Set the colorscheme inside `init.lua`:

```lua
vim.cmd.colorscheme('gabriel')
```

To switch between light/dark variants, use the `vim.o.background` option. Note that the colorscheme requires `termguicolors` in order to properly display colors.

## Supported languages

This are the languages I've already implemented proper highlighting for:

- JavaScript
- JavaScript React (JSX)
  - TypeScript
  - TypeScriptReact (TSX)
- Python
- VimScript
- HTML
- JSON

There are more languages coming in soon (see [Contributing](https://github.com/gantoreno/vim-gabriel#contributing)).

## Contributing

If you like the colorscheme, and you'd like to help me on making it even better, feel free to open pull requests adding more features. You can use my [VSCode theme](https://github.com/gantoreno/vscode-gabriel) as a guide on how things should look and feel for every language. I'll be glad to receive any kind of support regarding development!

## License

Licensed under the [GNU GPLv3](https://www.gnu.org/licenses/gpl-3.0.html) license.
