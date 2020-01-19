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

#### selecting words

I try to simulate selecting words like on windows/linux keyboards (+ add some non standard enhance like start arrow is home/end)

Custom reconfiguration of selection and jumping by words via editing `/Users/jakubsvehla/.config/karabiner/config.json`.

Now it could works like on `windows`/`linux` keyboards + I added `home` & `end` with control + arrow key like on dell laptop keyboards. (coz mac keyboard has no `home`/`end` button)


#### remove and backspace

Now I have no fn on my macos keyboard so I cant use shortcuts like:

- `fn + backspace` => delete forward
- `fn + backspace` => remove file by finder view



 
### final Karabiner config

```json
  "rules": [
    {
      "description": "command + shift + L/R arrows -> Select word L/R like on windows keyboard (custom svehlify)",
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
      "description": "command + L/R arrows -> Jump one word L/R like on windows keyboard (custom svehlify)",
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
      "description": "control + L/R arrows -> go to the start/end of line (custom svehlify)",
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
      "description": "control + shift + L/R arrows -> select from/to the start/end of line (custom svehlify)",
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
      "description": "cmd + backspace === Try to make removing file in finder works (does not work yet (custom svehlify))",
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
          "key_code": "delete_or_backspace",
          "modifiers": {
            "mandatory": [
              "left_command"
            ]
          }
        }],
        "type": "basic"
      }]
    },
    {
      "description": "cmd + backspace === delete -> make delete (forward backspace) works on same keys again (custom svehlify)",
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