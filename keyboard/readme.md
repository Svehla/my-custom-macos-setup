# Keyboards

## base layout 
[prefer to use english keyboard with interpunctions === czech programming keyboard](http://blog.destil.cz/2012/10/ceska-programatorska-klavesnice-pro-mac.html)

### instalation

copy keyboard to `/Library/Keyboard Layouts/` 

find keyboard in system preference -> Language & Text -> Input Source


## key mapping
Use [Karabiner](https://github.com/pqrs-org/Karabiner-Elements) for custom keyboard macos mapping

### Simple modifications

| From key                               | To key                                |
| -------------------------------------- | ------------------------------------- |
| fn                                     | left_gui(equal o `left_command`)      |
| right_gui (equals to `right_command`)  | right_alt (equals to `right_option`)  |
| non_us_backslash                       | grave_accent_and_tilde (`)            |


#### notes
[non_us_backslash inspiration](https://github.com/pqrs-org/Karabiner-Elements/issues/1028)

### external windows keyboards confs

| From key                               | To key                                |
| -------------------------------------- | ------------------------------------- |
| left_control                           | left_command                          |
| left_command                           | left_control                          |


### complex modifications

shortcuts inpsirations download from: https://madogiwa.github.io/KE-complex_modifications/

external used "plugins":
- exchange command + arrow keys with control = arrow keys
- richi - command+shift+right to options+shift+right
- richi - command+shift+left to options+shift+left


[`richi` configs are available there](https://pqrs.org/osx/karabiner/complex_modifications/#Richi_Select_Word_PC)


### svehlify custom carabiner configs

I try to simulate selecting words like on windows/linux keyboards (+ add some non standard enhance like start arrow is home/end)

```json
  "rules": [
    {
      "description": "command + shift + L/R arrows -> Select word L/R like on windows keyboard (svehlify custom)",
      "manipulators": [{
          "from": {
            "key_code": "left_arrow",
            "modifiers": {
              "mandatory": [
                "left_command",
                "left_shift"
              ]
            }
          },
          "to": [{
            "key_code": "left_arrow",
            "modifiers": [
              "left_option",
              "left_shift"
            ]
          }],
          "type": "basic"
        },
        {
          "from": {
            "key_code": "right_arrow",
            "modifiers": {
              "mandatory": [
                "left_command",
                "left_shift"
              ]
            }
          },
          "to": [{
            "key_code": "right_arrow",
            "modifiers": [
              "left_option",
              "left_shift"
            ]
          }],
          "type": "basic"
        }
      ]
    },
    {
      "description": "command + L/R arrows -> Jump one word L/R like on windows keyboard (svehlify custom)",
      "manipulators": [{
          "from": {
            "key_code": "right_arrow",
            "modifiers": {
              "mandatory": [
                "left_command"
              ]
            }
          },
          "to": [{
            "key_code": "right_arrow",
            "modifiers": [
              "left_option"
            ]
          }],
          "type": "basic"
        },
        {
          "from": {
            "key_code": "left_arrow",
            "modifiers": {
              "mandatory": [
                "left_command"
              ]
            }
          },
          "to": [{
            "key_code": "left_arrow",
            "modifiers": [
              "left_option"
            ]
          }],
          "type": "basic"
        }
      ]
    },
    {
      "description": "control + L/R arrows -> go to the start/end of line (svehlify custom)",
      "manipulators": [{
          "from": {
            "key_code": "right_arrow",
            "modifiers": {
              "mandatory": [
                "left_control"
              ]
            }
          },
          "to": [{
            "key_code": "right_arrow",
            "modifiers": [
              "left_command"
            ]
          }],
          "type": "basic"
        },
        {
          "from": {
            "key_code": "left_arrow",
            "modifiers": {
              "mandatory": [
                "left_control"
              ]
            }
          },
          "to": [{
            "key_code": "left_arrow",
            "modifiers": [
              "left_command"
            ]
          }],
          "type": "basic"
        }
      ]
    },
    {
      "description": "control + shift + L/R arrows -> seleft from/to the start/end of line (svehlify custom)",
      "manipulators": [{
          "from": {
            "key_code": "right_arrow",
            "modifiers": {
              "mandatory": [
                "left_control",
                "left_shift"
              ]
            }
          },
          "to": [{
            "key_code": "right_arrow",
            "modifiers": [
              "left_command",
              "left_shift"
            ]
          }],
          "type": "basic"
        },
        {
          "from": {
            "key_code": "left_arrow",
            "modifiers": {
              "mandatory": [
                "left_control",
                "left_shift"
              ]
            }
          },
          "to": [{
            "key_code": "left_arrow",
            "modifiers": [
              "left_command",
              "left_shift"
            ]
          }],
          "type": "basic"
        }
      ]
    },
    {
      "description": "cmd + backspace === delete -> make delete (forward backspace) works on same keys again (custom svehlify)",
      "manipulators": [{
        "from": {
          "key_code": "delete_or_backspace",
          "modifiers": {
            "mandatory": [
              "shift"
            ]
          }
        },
        "to": [{
          "key_code": "fn",
          "modifiers": [
            "delete_or_backspace"
          ]
        }],
        "type": "basic"
      }]
    },
    {
      "description": "cmd + backspace === delete ->make delete (forward backspace) works on same keys again (custom svehlify)",
      "manipulators": [{
        "from": {
          "key_code": "delete_or_backspace",
          "modifiers": {
            "mandatory": [
              "left_command"
            ]
          }
        },
        "to": [{
          "key_code": "delete_forward"
        }],
        "type": "basic"
      }]
    }
  ]

```