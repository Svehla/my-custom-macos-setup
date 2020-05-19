## plugins: 

c/c++
code spell checker
czech - code spell checker
docker
dotEnv
Dracula official
eslint
git lens
graphql
graphql for vscode
vscode-icons
language-stylus
laserWave
liveShare
Nord
npm
prettier
python
rc-beautify
remote - SSH
rust
shades of purple
svelte
svg preview
vim
vscode-styled-components
aws toolkit




## custom keybindings
you can enter to custom keybinding by pressing: `cmd+k cmd+s` and go to custom 
modification


I added these shortcuts:

```json
// Place your key bindings in this file to overwrite the defaults
[
    {
      "key": "cmd+d",
      "command": "editor.action.copyLinesUpAction",
      "when": "editorTextFocus && !editorReadonly"
  },
  {
      "key": "shift+alt+up",
      "command": "-editor.action.copyLinesUpAction",
      "when": "editorTextFocus && !editorReadonly"
  },
  {
      "key": "cmd+y",
      "command": "redo",
      "when": "textInputFocus && !editorReadonly"
  },
  {
      "key": "shift+cmd+z",
      "command": "-redo",
      "when": "textInputFocus && !editorReadonly"
  },
  {
      "key": "cmd+k cmd+7",
      "command": "-editor.foldLevel7",
      "when": "editorTextFocus"
  },
  {
      "key": "cmd+b",
      "command": "-extension.sayHello"
  },
  {
      "key": "cmd+r cmd+r",
      "command": "workbench.action.splitEditorRight"
  },
  {
      "key": "shift+cmd+y",
      "command": "workbench.action.terminal.toggleTerminal"
  },
  {
      "key": "shift+cmd+z",
      "command": "workbench.action.toggleZenMode"
  },
  {
      "key": "cmd+9",
      "command": "workbench.action.terminal.focus"
  },
  {
      "key": "cmd+9",
      "command": "workbench.action.focusActiveEditorGroup",
      "when": "terminalFocus"
  },
  {
      "key": "cmd+down cmd+down",
      "command": "workbench.action.terminal.kill"
  },
  {
      "key": "shift+alt+cmd+w",
      "command": "workbench.action.closeWindow"
  },
  {
      "key": "shift+cmd+w",
      "command": "-workbench.action.closeWindow"
  },
  {
      "key": "cmd+g",
      "command": "editor.action.goToTypeDefinition"
  }
]
```