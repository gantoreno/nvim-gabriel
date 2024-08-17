local M = {}

M.colors = {
  black = '#000000',
  darkred = '#884444',
  darkgreen = '#779966',
  darkyellow = '#aa8844',
  darkblue = '#447799',
  darkmagenta = '#666699',
  darkcyan = '#449999',
  gray = '#cccccc',
  darkgray = '#444444',
  red = '#884444',
  green = '#779966',
  yellow = '#aa8844',
  blue = '#447799',
  magenta = '#666699',
  cyan = '#449999',
  white = '#ffffff',
}

M.faded_colors = {
  red = '#d7cccc',
  yellow = '#dfd9ce',
  cyan = '#d0dcdc',
  background = '#fcfcfc',
  float = '#fcfcfc',
}

M.grayscale = {
  gray0 = '#ffffff',
  gray1 = '#eeeeee',
  gray2 = '#dddddd',
  gray3 = '#cccccc',
  gray4 = '#bbbbbb',
  gray5 = '#aaaaaa',
  gray6 = '#999999',
  gray7 = '#888888',
  gray8 = '#777777',
  gray9 = '#666666',
  gray10 = '#555555',
  gray11 = '#444444',
  gray12 = '#333333',
  gray13 = '#222222',
  gray14 = '#111111',
  gray15 = '#000000',
}

M.ui = {
  background = '#eeeeee',
  foreground = '#000000',
}

if vim.o.background == 'dark' then
  M.colors.black = '#000000'
  M.colors.darkred = '#aa6666'
  M.colors.darkgreen = '#99bb88'
  M.colors.darkyellow = '#ccaa66'
  M.colors.darkblue = '#6699bb'
  M.colors.darkmagenta = '#8888bb'
  M.colors.darkcyan = '#66bbbb'
  M.colors.gray = '#cccccc'
  M.colors.darkgray = '#444444'
  M.colors.red = '#aa6666'
  M.colors.green = '#99bb88'
  M.colors.yellow = '#ccaa66'
  M.colors.blue = '#6699bb'
  M.colors.magenta = '#8888bb'
  M.colors.cyan = '#66bbbb'
  M.colors.white = '#ffffff'

  M.faded_colors.red = '#2e2323'
  M.faded_colors.yellow = '#363024'
  M.faded_colors.cyan = '#273333'
  M.faded_colors.background = '#0e0e0e'
  M.faded_colors.float = '#1a1a1a'

  M.grayscale.gray0 = '#000000'
  M.grayscale.gray1 = '#111111'
  M.grayscale.gray2 = '#222222'
  M.grayscale.gray3 = '#333333'
  M.grayscale.gray4 = '#444444'
  M.grayscale.gray5 = '#555555'
  M.grayscale.gray6 = '#666666'
  M.grayscale.gray7 = '#777777'
  M.grayscale.gray8 = '#888888'
  M.grayscale.gray9 = '#999999'
  M.grayscale.gray10 = '#aaaaaa'
  M.grayscale.gray11 = '#bbbbbb'
  M.grayscale.gray12 = '#cccccc'
  M.grayscale.gray13 = '#dddddd'
  M.grayscale.gray14 = '#eeeeee'
  M.grayscale.gray15 = '#ffffff'

  M.ui.background = '#111111'
  M.ui.foreground = '#ffffff'
end

return M
