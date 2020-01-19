# Keyboards




## base layout

* ! ! ! TOTALLY AMAZING FOR CZECH PROGRAMMERS ! ! ! *


[I prefer to use english keyboard with interpunction === czech programming keyboard](http://blog.destil.cz/2012/10/ceska-programatorska-klavesnice-pro-mac.html) 


### installation 
 
Download keyboard from source above

Copy keyboard to `/Library/Keyboard Layouts/`

find keyboard in system preference -> Language & Text -> Input Source

test `option + diacritics`






## Custom key mapping

I use [Karabiner](https://github.com/pqrs-org/Karabiner-Elements) for custom keyboard MacOs mapping

### Simple modifications

| From key                              | To key                               |
| ------------------------------------- | ------------------------------------ |
| fn                                    | left_gui(equal o `left_command`)     |
| right_gui (equals to `right_command`) | right_alt (equals to `right_option`) |
| non_us_backslash                      | grave_accent_and_tilde (`)           |

#### notes

[non_us_backslash inspiration](https://github.com/pqrs-org/Karabiner-Elements/issues/1028)


### external windows keyboards confs

It depends on external keyboard but this conf works in a lot of configs

| From key     | To key       |
| ------------ | ------------ |
| left_control | left_command |
| left_command | left_control |







## my custom shortcuts

### selecting words

I try to simulate selecting words like windows/linux keyboards (+ add some non standard enhance like `control + arrow L/R` is `home/end`)

Custom reconfiguration of selection and jumping by words via editing `/Users/{{YOUR_USER_NAME}}/.config/karabiner/config.json`. 
[config](#final-karabiner-config)

Now it could works like on `windows`/`linux` keyboards + I added `home` & `end` with control + arrow key like on `dell` laptop keyboards. (coz mac keyboard has no `home`/`end` button)

### delete (forward backspace)

Now my MacOs keyboard has no delete (`fn + backspace`) coz i have no `fn` on the left hand... 

So I create my own custom shortcut:
- `shift + backspace` => delete forward

Sorry for that but I can't figure it how better solution than this 😞😞


#### final Karabiner config


```json
{
  "rules": [
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
```




## resources + inspiration

shortcuts inspiration download from: https://madogiwa.github.io/KE-complex_modifications/

### selection inspiration 

- exchange command + arrow keys with control = arrow keys
- richi - command+shift+right to options+shift+right
- richi - command+shift+left to options+shift+left

[`richi` configs are available there](https://pqrs.org/osx/karabiner/complex_modifications/#Richi_Select_Word_PC)
