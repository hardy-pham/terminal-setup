# Terminal setup

## Install iTerm2
https://iterm2.com/downloads.html

## Rose Pine Color Scheme

1. Clone the Rose Pine iTerm color scheme repo:
   ```bash
   git clone https://github.com/rose-pine/iterm
   ```

2. Open iTerm2.
3.	Navigate to:
    iTerm2 > Settings > Profiles > Colors
4.	Under Color Presets, click Import....
5.	Select the rose-pine.itermcolors file from the cloned repo.
6.	After importing, choose the rose-pine preset from the Color Presets dropdown.

## Install Pure Prompt (for Zsh)
> A minimal, fast, and pretty Zsh prompt.

1.	Install Pure using npm:
    ```bash
    npm install --global pure-prompt
    ```
2. Enable the prompt in your shell:
    ```bash
    autoload -U promptinit; promptinit
    prompt pure
    ```
    > Add these commands to your ~/.zshrc

## Install fzf
brew install fzf
