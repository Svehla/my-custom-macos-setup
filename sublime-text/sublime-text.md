# Sublime text

## enable vim

in the settings remove vintage mode:
```json
{
	
	"ignored_packages":
	[
	],
	"font_size": 14,
	"theme": "Adaptive.sublime-theme",
	"color_scheme": "Mariana.sublime-color-scheme",
	"relative_line_numbers": true,
}
```

## Enable images in the markdown format

1. install packge manager

2. install markdown iamge
 https://packagecontrol.io/packages/Markdown%20Images

3. go to `/Users/jakubsvehla/Library/Application Support/Sublime Text/Packages/User`

and create `MarkdownImages.sublime-settings` file with content:

```json
{
  // File extensions to enable this plugin for
  "extensions": [".md"],

  // Maximum width applied to all images.
  // NOTE: If your view buffer goes blank, this number is too high.
  "img_maxwidth": 1024,

  // set to true if you want remote images to be loaded and displayed on_load
  "show_remote_images_on_load": true,

  // set to true if you want local images to be displayed on_load
  "show_local_images_on_load": true,

  // set to true if you want local images to display on_post_save
  "show_local_images_on_post_save": true,

  // set to true if you want remote images to display on_post_save
  "show_remote_images_on_post_save": false,

  // A base path to images.
  // Let's say you store your images in `/attachments` folder.
  // And inside that folder you have `foo.png`. Set this to `/attachments`
  // to be able to use ![](foo.png) without specifying the full path.
  "base_path": "",
}
```


now your markdown should view inline images 

## Disable hard-space 

source: https://superuser.com/questions/78245/how-to-disable-the-option-space-key-combination-for-non-breaking-spaces


**Default (OSX).sublime-keymap**

```json
[
  
  {
   "keys": ["alt+space"],
   "command": "insert_snippet",
   "args": {"contents": " " }
   }
]
```




