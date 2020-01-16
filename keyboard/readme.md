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
| non_us_bakslash                        | grave_accent_and_tilde (`)            |
| Richi - Select Word PC Style (you must use swape COMMAND and CTRL in other case) | SET ALL RULES! |


#### notes
[non_us_backslash inspiration](https://github.com/pqrs-org/Karabiner-Elements/issues/1028)


### complex modifications

shortcuts download from: https://madogiwa.github.io/KE-complex_modifications/

`change shift + delete to forward delete (rev 2)`


DOES NOT WORK: (it works only in sublime text :facepalm:)
`exchange command + arrow keys with control + arrow keys`
-> so I created my custom bindings :D :D 


## vscode custom layout

TODO:



## svehlify custom carabiner configs

```json

  {
    "description": "cmd+arrow-left -> Jump one word left like windows keyboard (svehlify custom)",
    "manipulators": [
      {
        "from": {
          "key_code": "left_arrow",
          "modifiers": {
            "mandatory": [
              "left_command"
            ] 
          }
        },
        "to": [
          {
            "key_code": "left_arrow",
            "modifiers": [
              "left_option"
            ]
          }
        ],
        "type": "basic"
      }
    ]
  },
  {
    "description": "cmd+arrow-left -> Jump one word right like windows keyboard (svehlify custom)",
    "manipulators": [
      {
        "from": {
          "key_code": "right_arrow",
          "modifiers": {
            "mandatory": [
              "left_command"
            ]
          }
        },
        "to": [
          {
            "key_code": "right_arrow",
            "modifiers": [
              "left_option"
            ]
          }
        ],
        "type": "basic"
      }
    ]
  },

    {
      "description": "control+arrow-right -> go to the end of line (svehlify custom)",
      "manipulators": [
        {
          "from": {
            "key_code": "right_arrow",
            "modifiers": {
              "mandatory": [
                "left_control"
              ]
            }
          },
          "to": [
            {
              "key_code": "right_arrow",
              "modifiers": [
                "left_command"
              ]
            }
          ],
          "type": "basic"
        }
      ]
    },
    {
      "description": "control+arrow-left -> go to the start of line (svehlify custom)",
      "manipulators": [
        {
          "from": {
            "key_code": "left_arrow",
            "modifiers": {
              "mandatory": [
                "left_control"
              ]
            }
          },
          "to": [
            {
              "key_code": "left_arrow",
              "modifiers": [
                "left_command"
              ]
            }
          ],
          "type": "basic"
        }
      ]
    }


    {
      "description": "make remove works again (custom svehlify)",
      "manipulators": [
        {
          "from": {
            "key_code": "delete_or_backspace",
            "modifiers": {
              "mandatory": [
                "left_command"
              ]
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
```