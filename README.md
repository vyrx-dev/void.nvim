# 👾 Void Colorscheme for Neovim

A dark, elegant colorscheme for Neovim inspired by the purple void color palettes. Designed with careful attention to contrast and readability while maintaining a modern aesthetic.

#### *Work in Progress... 📈*

![neovim theme](./void.png)

## ✨ Features

- Support the latest [Neovim](https://github.com/neovim/neovim)
  [0.9.0](https://github.com/neovim/neovim/releases/tag/v0.9.0) features.
- Enhances Terminal colors.
- Support for more Plugins *coming soon*.

## 📋 Requirements

- Neovim >= 0.8.0
- termguicolors enabled
- A terminal that supports true color

## 📦 Installation

[lazy.nvim](https://github.com/folke/lazy.nvim)

```
return {
 { "vyrx-dev/void.nvim", 
    lazy = false,]
    priority = 1000 },
 {
  "LazyVim/LazyVim",
   opts = {
   colorscheme = "void",
  },
 },
}
```

# Void Theme

<https://github.com/vyrx-dev/omarchy-void-theme.git>

## 🤝 Contributing

**Contributions are welcome! Please feel free to submit issues and pull requests.**

### Plugin Support Requests

**If you'd like support for a specific plugin, please:**

- Open an issue with the plugin name and repository link
- Provide any specific highlight groups the plugin uses
- Include screenshots if possible

### Development

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Test with different plugins
5. Submit a pull request

##### ⭐ **Star the repo** if you find it useful
<!-- panvimdoc-ignore-start -->
&nbsp;
<p align="center">Copyright &copy; 2025-present <a href="https://github.com/vyrx-dev/void.nvim.git" target="_blank">Void.nvim</a>

<p align="center"><a href="https://github.com/vyrx-dev/void.nvim/blob/master/LICENSE"><img src="https://img.shields.io/static/v1.svg?style=for-the-badge&label=License&message=MIT&logoColor=DECFF&colorA=36314c&colorB=B59AE6"/></a></p>

<!-- panvimdoc-ignore-end -->
