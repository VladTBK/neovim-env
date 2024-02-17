# My Neovim Configuration

Your go-to Neovim setup: Perfect and Simple IDE. Packed with plugins covering LSP/DAP for TypeScript, Python, Lua, and handy tools to make your codeing easier

## Installation
If it's your first time using Neovim, ensure you have an 'nvim' folder in the '~/.config' directory (at least on Linux). If it's not there, create one:
```bash
cd ~/.config
mkdir nvim
cd nvim
```
Clone the repository or unzip it if you download it manually:
```bash
git clone git@github.com:VladTbk1/myNeoVimENV.git
```
PS:  'test.py' / 'test.ts' files are not importent; they were used for checking DAP and LSP functionality.

## Config Architecture

Once you've downloaded the project, you'll find three main folders and a file:
1. `plugin` -- not important; it updates automatically.
2. `lua/theVlad` -- the first place Neovim looks when it starts. In 'theVlad,' you'll find 3 important files:
    - `init.lua` -- initializes the other two files based on the folder they are in (in my case, 'theVlad'; if you change the name, don't forget to make changes here also).
    - `packer.lua` -- where all the plugins are downloaded.
    - `set.lua` -- contains my keymaps and general options for Neovim.
3. `after/plugin/` -- all the setups for different plugins like LSP, nvimtree, etc. Note: DAP has a separate folder for each debug configuration you need; in my case, only js/ts & python.

## Plugins

Most plugins are intuitive or have clear documentation on their GitHub. Here are the "main" ones:
1. `Packer & Mason` -- both are plugin managers. I recommend using Mason for significant tools like LSP; for the rest, use Packer.
2. `null-ls` -- used for formatting but won't work unless you have specific *formatters* installed on your machine (e.g., prettier for js/ts or black for python).
3. `LSP` -- in the `lspconfig.lua`, if you want to add other language servers, first check if they are available (you can find all of them on the [LSP-Zero GitHub](https://github.com/glepnir/lspsaga)).

## Credits

About 80% of the configuration is a combination from [thePrimeagen](https://www.youtube.com/watch?v=w7i4amO_zaE), [chris@machine](https://www.youtube.com/watch?v=ctH-a-1eUME&list=PLhoH5vyxr6Qq41NFL4GvhFp-WLd5xzIzZ), and [TJ DeVris](https://www.youtube.com/watch?v=stqUbv-5u2s&t=542s). The rest is my personal flavor, mainly for *my* ease of workflow. They assisted in refining some aspects, but the core remains unchanged.
