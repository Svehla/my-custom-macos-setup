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
  }
]
```