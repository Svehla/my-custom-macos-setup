# Keyboards

## base layout

- ! ! ! TOTALLY AMAZING FOR CZECH PROGRAMMERS ! ! ! \*

[I prefer to use english keyboard with interpunction/diacritics === czech programming keyboard](http://blog.destil.cz/2012/10/ceska-programatorska-klavesnice-pro-mac.html)

### installation

Steps:

- Download keyboard from the source above
- Copy keyboard to `/Library/Keyboard Layouts/`
- find keyboard in system preference -> Language & Text -> Input Source
- test `option + diacritics`

## Hard breaks

Disable hard space on the macOS

https://superuser.com/questions/78245/how-to-disable-the-option-space-key-combination-for-non-breaking-spaces/142573#142573

## Custom key mapping

I use [Karabiner](https://github.com/pqrs-org/Karabiner-Elements) for custom keyboard MacOs mapping

### Custom key swapping modifications

| From key                              | To key                               |
| ------------------------------------- | ------------------------------------ |
| fn                                    | left_gui(equal o `left_command`)     |
| right_gui (equals to `right_command`) | right_alt (equals to `right_option`) |
| non_us_backslash                      | grave_accent_and_tilde (`)           |
| right_option                          | fn                                   |
| left_command                          | left_option                          |


I switched `left_command` with `left_option` for more comfortable writing of czech diacritics on czech programming keyboard...
I think that this features will be problem on window/linux because there is only right `altGr` but I hope I'll figure it out somehow in the future

![Custom key swapping modifications](/keyboard/karabiner-mac-key-swapping.png)



#### notes

[non_us_backslash inspiration](https://github.com/pqrs-org/Karabiner-Elements/issues/1028)

### external windows keyboards confs

It depends on external keyboard but this conf works in most cases

| From key     | To key       |
| ------------ | ------------ |
| left_control | left_command |
| left_command | left_control |

## my custom shortcuts

### selecting words

I try to simulate selecting words like on windows/linux keyboards (+ add some non standard enhancement like `control + arrow L/R` is `home/end`)

Custom reconfiguration of selection and jumping word by word via editing `/Users/{{YOUR_USER_NAME}}/.config/karabiner/assets/complex_modifications/config.json`

[config](#final-karabiner-config)

Now it could work like on windows/linux keyboards + I added `home` & `end` with key `Control + Arrow L/R` like on _dell_ laptop keyboards. (coz mac keyboard has no `home`/`end` button)

### delete (forward backspace)

Now my MacOs keyboard has no delete (`fn + backspace`) key because I remaped `right fn` key...

So I create my own custom shortcut:

- `shift + backspace` => delete forward

Sorry for that but I can't figure it how better solution than this 😞😞

#### final Karabiner config


![karabiner Mac Custom Shortcuts](/keyboard/karabiner-mac-custom-shortcuts.png)
![karabiner config for all devices coz vim](/keyboard/krabainer-switch-escape-and-caps.png)
![karabiner my mechanic windows keyboard](/keyboard/karabiner-silver-mechanical-keyboard-modification.png)








```json
// ....
// ....
// ....

{
  "title": "Svehlify custom shortcuts",
  "rules": [
    {
      "description": "Change right_option + space to normal space",
      "manipulators": [
        {
          "from": {
            "key_code": "spacebar",
            "modifiers": {
              "mandatory": [
                "right_option"
              ]
            }
          },
          "to": [
            {
              "key_code": "spacebar"
            }
          ],
          "type": "basic"
        }
      ]
    },
    {
      "description": "Change left_option + space to normal space",
      "manipulators": [
        {
          "from": {
            "key_code": "spacebar",
            "modifiers": {
              "mandatory": [
                "left_option"
              ]
            }
          },
          "to": [
            {
              "key_code": "spacebar"
            }
          ],
          "type": "basic"
        }
      ]
    }
    {
      "description": "command + shift + L/R arrows -> Select word L/R like on windows keyboard (custom svehlify)",
      "manipulators": [
        {
          "from": {
            "key_code": "left_arrow",
            "modifiers": {
              "mandatory": ["left_command", "left_shift"]
            }
          },
          "to": [
            {
              "key_code": "left_arrow",
              "modifiers": ["left_option", "left_shift"]
            }
          ],
          "type": "basic"
        },
        {
          "from": {
            "key_code": "right_arrow",
            "modifiers": {
              "mandatory": ["left_command", "left_shift"]
            }
          },
          "to": [
            {
              "key_code": "right_arrow",
              "modifiers": ["left_option", "left_shift"]
            }
          ],
          "type": "basic"
        }
      ]
    },
    {
      "description": "command + L/R arrows -> Jump one word L/R like on windows keyboard (custom svehlify)",
      "manipulators": [
        {
          "from": {
            "key_code": "right_arrow",
            "modifiers": {
              "mandatory": ["left_command"]
            }
          },
          "to": [
            {
              "key_code": "right_arrow",
              "modifiers": ["left_option"]
            }
          ],
          "type": "basic"
        },
        {
          "from": {
            "key_code": "left_arrow",
            "modifiers": {
              "mandatory": ["left_command"]
            }
          },
          "to": [
            {
              "key_code": "left_arrow",
              "modifiers": ["left_option"]
            }
          ],
          "type": "basic"
        }
      ]
    },
    {
      "description": "control + L/R arrows -> go to the start/end of line (custom svehlify)",
      "manipulators": [
        {
          "from": {
            "key_code": "right_arrow",
            "modifiers": {
              "mandatory": ["left_control"]
            }
          },
          "to": [
            {
              "key_code": "right_arrow",
              "modifiers": ["left_command"]
            }
          ],
          "type": "basic"
        },
        {
          "from": {
            "key_code": "left_arrow",
            "modifiers": {
              "mandatory": ["left_control"]
            }
          },
          "to": [
            {
              "key_code": "left_arrow",
              "modifiers": ["left_command"]
            }
          ],
          "type": "basic"
        }
      ]
    },
    {
      "description": "control + shift + L/R arrows -> select from/to the start/end of line (custom svehlify)",
      "manipulators": [
        {
          "from": {
            "key_code": "right_arrow",
            "modifiers": {
              "mandatory": ["left_control", "left_shift"]
            }
          },
          "to": [
            {
              "key_code": "right_arrow",
              "modifiers": ["left_command", "left_shift"]
            }
          ],
          "type": "basic"
        },
        {
          "from": {
            "key_code": "left_arrow",
            "modifiers": {
              "mandatory": ["left_control", "left_shift"]
            }
          },
          "to": [
            {
              "key_code": "left_arrow",
              "modifiers": ["left_command", "left_shift"]
            }
          ],
          "type": "basic"
        }
      ]
    },
    {
      "description": "backspace + shift === delete (forward backspace) -> sorry it's my own shortcut but i can't figure it out how to make it better... (custom svehlify)",
      "manipulators": [
        {
          "from": {
            "key_code": "delete_or_backspace",
            "modifiers": {
              "mandatory": ["shift"]
            }
          },
          "to": [
            {
              "key_code": "delete_forward"
            }
          ],
          "type": "basic"
        }
      ]
    }
  ]
}
// ....
// ....
// ....
```

## resources + inspiration

shortcuts inspiration download from: https://madogiwa.github.io/KE-complex_modifications/

### selection inspiration

- exchange `command + arrow keys + control` = arrow keys
- richi - `command + shift + right` to `options + shift + right`
- richi - `command + shift + left` to `options + shift + left`

[`richi` configs are available there](https://pqrs.org/osx/karabiner/complex_modifications/#Richi_Select_Word_PC)
