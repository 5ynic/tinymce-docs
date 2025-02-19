---
layout: default
title: Character Map plugin
title_nav: Character Map
description: Insert special characters into TinyMCE.
keywords: charmap symbols
controls: toolbar button, menu item
---

{% assign pluginname = "Character Map" %}
{% assign plugincode = "charmap" %}

This plugin adds a dialog to the editor with a map of special unicode characters, which cannot be added directly from the keyboard. The dialog can be invoked via a toolbar button - `charmap` - or a dedicated menu item added as `Insert > Special character`.

## Basic setup

```js
tinymce.init({
  selector: 'textarea',  // change this value according to your HTML
  plugins: 'charmap',
  toolbar: 'charmap',
  menubar: 'insert'
});
```

## Options

The default map of unicode characters can be overridden or extended through the options below.

Internally, character map is defined by the array of arrays, where each sub-array represents a single character. The first item in the sub-array is character code. The second is a title that shows up when mouse hovers over the specified character in the map. Character code can be either decimal, octal or hexadecimal (in the case of octal or hexadecimal format, code should be appropriately prefixed with 0 and 0x). Options are expected to be provided in the same format.

```js
[
  [160, 'no-break space'],
  [173, 'soft hyphen'],
  [34, 'quotation mark'],
  ...
  [8205, 'zero width joiner'],
  [8206, 'left-to-right mark'],
  [8207, 'right-to-left mark']
];
```

{% include configuration/charmap.md %}

{% include configuration/charmap_append.md %}

{% include misc/plugin-toolbar-button-id-boilerplate.md %}

{% include misc/plugin-menu-item-id-boilerplate.md %}

## Commands

The Character Map plugin provides the following JavaScript command.

{% include commands/charmap-cmds.md %}
