<p align="center">
  <img src=".github/gabriel.png" width="150" />
</p>

# Vim Gabriel

![https://img.shields.io/github/issues/gantoreno/vim-gabriel](https://img.shields.io/github/issues/gantoreno/vim-gabriel) ![https://img.shields.io/github/forks/gantoreno/vim-gabriel](https://img.shields.io/github/forks/gantoreno/vim-gabriel) ![https://img.shields.io/github/stars/gantoreno/vim-gabriel](https://img.shields.io/github/stars/gantoreno/vim-gabriel) ![https://img.shields.io/github/license/gantoreno/vim-gabriel](https://img.shields.io/github/license/gantoreno/vim-gabriel) ![https://raw.githubusercontent.com/sindresorhus/awesome/main/media/badge.svg](https://raw.githubusercontent.com/sindresorhus/awesome/main/media/badge.svg)

Gabriel's (me) personal Vim & Neovim colorscheme.

<div align="center">
  <img src=".github/gabriel-light.png#gh-light-mode-only" />
  <img src=".github/gabriel-dark.png#gh-dark-mode-only" />
</div>

## Usage

Set the colorscheme inside `.vimrc` or `init.vim`:

```vim
colorscheme gabriel-light " For light mode
colorscheme gabriel-dark " For dark mode
```

On terminal emulators, make sure to set Vim to use `truecolor` in order for Gabriel to work as expected:

```vim
set termguicolors
```

To build and test the theme locally, use Make:

```sh
$ make # Or...
$ make watch # To get hot reload, just make sure to pip install when-changed
```

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

As you might know, maintaining a Vim colorscheme is no easy task. There are a lot of syntax highlighting libraries out there which all do slightly different things. Also, ever heard of [TreeSitter](https://tree-sitter.github.io/tree-sitter/)?

If you like the colorscheme, and you'd like to help me on making it even better, feel free to open pull requests adding more features. You can use my [VSCode theme](https://github.com/gantoreno/vscode-gabriel) as a guide on how things should look and feel for every language. I'll be glad to receive any kind of support regarding development!

## Credits

Special thanks to [Roman Lafourcade](https://github.com/romainl) for [Vim-RNB](https://github.com/romainl/vim-rnb), an amazing tool to create vim colorschemes with the Ruby language, made 100% easier the start of this project.

## License

Licensed under the [GNU GPLv3](https://www.gnu.org/licenses/gpl-3.0.html) license.
