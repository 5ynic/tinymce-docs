---
layout: default
title: bbcode
---

This plugin makes it possible for TinyMCE to edit BBCode in WYSIWYG way by converting tags like [b] into <strong> and then <strong> back to [b] when the user submits the content. Remember you will need to remove lots of TinyMCEs functionality in order to use this plugin successfully, since the BBCode format doesn't support the whole HTML specification. The BBCode plugin also requires you to set some specific TinyMCE options in order to function.

## Installation Instructions

1.  Add plugin to TinyMCE plugin option list example: plugins : "bbcode".

## BBCode plugin options

| Name | Summary |
| --- | --- |
| dialect | This option enables you to specify the BBCode dialect. We only support [PunBB](http://www.punbb.org/) at the moment but hope to add more dialects in the future. When using the PunBB dialect codeStyle and quoteStyle will be converted into [code] and [quote] items. |

## Initialization Example

```html
tinyMCE.init({
	theme : "advanced",
	mode : "textareas",
	plugins : "bbcode",
	theme_advanced_buttons1 : "bold,italic,underline,undo,redo,link,unlink,image,forecolor,styleselect,removeformat,cleanup,code",
	theme_advanced_buttons2 : "",
	theme_advanced_buttons3 : "",
	theme_advanced_toolbar_location : "bottom",
	theme_advanced_toolbar_align : "center",
	theme_advanced_styles : "Code=codeStyle;Quote=quoteStyle",
	content_css : "bbcode.css",
	entity_encoding : "raw",
	add_unload_trigger : false,
	remove_linebreaks : false
});

```