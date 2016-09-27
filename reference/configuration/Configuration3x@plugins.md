---
layout: default
title: plugins
---

This option should contain a comma separated list of plugins. Plugins are loaded from the `"tinymce/jscripts/tiny_mce/plugins"` directory, and the plugin name matches the name of the directory. TinyMCE is shipped with some core plugins; these are described in greater detail in the [Plugins reference](https://www.tinymce.com/docs-3x/reference/TinyMCE3x@Plugins/).

TinyMCE also supports the ability to have plugins added from a external resource. These plugins need to be self registering and loaded after the tinyMCE.init call. You should also prefix these plugins with a "-" character, so that TinyMCE doesn't try to load it from the TinyMCE plugins directory.

There are many third party plugins for TinyMCE; some of these may be found under "Plugins" at SourceForge, and, if you have developed one of your own, please contribute it to this project by uploading it to SourceForge.

## Example of usage of the plugins option:

```js
tinyMCE.init({
  plugins : "table,contextmenu,paste,-externalplugin"
});
```
