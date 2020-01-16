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

```json
{
  "description": "richi - command+shift+right To options+shift+right ",
  "manipulators": [
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
      "to": [
        {
          "key_code": "right_arrow",
          "modifiers": [
            "left_option",
            "left_shift"
          ]
        }
      ],
      "type": "basic"
    }
  ]
},
{
  "description": "richi - command+shift+left To options+shift+left",
  "manipulators": [
    {
      "from": {
        "key_code": "left_arrow",
        "modifiers": {
          "mandatory": [
            "left_command",
            "left_shift"
          ]
        }
      },
      "to": [
        {
          "key_code": "left_arrow",
          "modifiers": [
            "left_option",
            "left_shift"
          ]
        }
      ],
      "type": "basic"
    }
  ]
},
```

### my custom configs
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
      "description": "make remove works again with same keys as *macos* default (custom svehlify)",
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