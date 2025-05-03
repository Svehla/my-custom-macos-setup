## plugins: 
- eslint
- vim
- c/c++
- code spell checker
- czech - code spell checker
- docker
- dotEnv
- Dracula official
- eslint
- git lens
- graphql
- graphql for vscode
- vscode-icons
- language-stylus
- laserWave
- liveShare
- Nord
- npm
- prettier
- python
- rc-beautify
- remote - SSH
- rust
- shades of purple
- svelte
- svg preview
- vscode-styled-components
- aws toolkit



## custom setup
- set relative lines
- line-height: 15

## custom keybindings
you can enter to custom keybinding by pressing: `cmd+k cmd+s` and go to custom 
modification


I added these shortcuts:

cmd+p > open keyboard shortcuts:

## Cursor shortcuts
```json
// Place your key bindings in this file to overwrite the defaults
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
    },
    // when i click to escape in the vim mode i don't want to lost focus for jupyter notebook
    {
        "key": "escape",
        "command": "-notebook.cell.quitEdit",
        "when": "inputFocus && notebookEditorFocused && vim.active && !editorHasSelection && !editorHoverVisible && vim.mode == 'Normal'"
    },
    {
        "key": "cmd+g",
        "command": "aipopup.action.modal.generate",
        "when": "editorFocus && !composerBarIsVisible"
    },
    {
        "key": "cmd+k",
        "command": "-aipopup.action.modal.generate",
        "when": "editorFocus && !composerBarIsVisible"
    },
    {
        "key": "cmd+g",
        "command": "cursorai.action.generateInTerminal",
        "when": "terminalFocus && terminalHasBeenCreated || terminalFocus && terminalProcessSupported"
    },
    {
        "key": "cmd+k",
        "command": "-cursorai.action.generateInTerminal",
        "when": "terminalFocus && terminalHasBeenCreated || terminalFocus && terminalProcessSupported"
    },
    {
        "key": "cmd+h",
        "command": "-editor.action.simpleInlineDiffs.rejectAll",
        "when": "editorTextFocus && hasDisplayedSimpleDiff"
    },
    {
        "key": "cmd+h cmd+h",
        "command": "workbench.action.toggleAuxiliaryBar"
    },
    {
        "key": "shift+cmd+w",
        "command": "aichat.fixerrormessage",
        "when": "(arbitrary function)"
    },
    {
        "key": "shift+cmd+e",
        "command": "-aichat.fixerrormessage",
        "when": "(arbitrary function)"
    },
    {
        "key": "cmd+i",
        "command": "composerMode.agent"
    },
    {
        "key": "cmd+g",
        "command": "cursorai.action.generateInTerminal",
        "when": "terminalFocus && terminalHasBeenCreated || terminalFocus && terminalProcessSupported || terminalHasBeenCreated && terminalPromptBarVisible || terminalProcessSupported && terminalPromptBarVisible"
    },
    {
        "key": "cmd+k",
        "command": "-cursorai.action.generateInTerminal",
        "when": "terminalFocus && terminalHasBeenCreated || terminalFocus && terminalProcessSupported || terminalHasBeenCreated && terminalPromptBarVisible || terminalProcessSupported && terminalPromptBarVisible"
    },
    {
        "key": "cmd+k cmd+s",
        "command": "workbench.action.openGlobalKeybindings"
    },
    {
        "key": "cmd+r cmd+s",
        "command": "-workbench.action.openGlobalKeybindings"
    }
]
```