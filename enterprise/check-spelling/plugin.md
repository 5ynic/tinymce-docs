---
layout: default
title: Install Spell Checker Pro Plugin
description: Spell Checker Pro is a premium plugin and server to check spelling as-you-type.
keywords: enterprise tinymcespellchecker spell check checker pro pricing
---


## Client-Side Plugin Installation

To enable Spell Checker Pro:

1. If you are currently using the `spellchecker` plugin provided with TinyMCE Community Edition, disable it by removing it from the `plugins` list.
2. Add `tinymcespellchecker` to the `plugins` list.

Example TinyMCE Configuration:

````
tinymce.init({
	selector: 'textarea',
	plugins: 'tinymcespellchecker',
	spellchecker_rpc_url: 'localhost/ephox-spelling',
	spellchecker_language: 'en'
});
````

### Usage

The TinyMCE Spell Checker Pro plugin activates automatically when users type content into the editor. To see and select a spelling suggestion after a word has been misspelled, please right click the misspelled red underlined word.

### Client-Side Configuration Options

#### spellchecker_rpc_url
This setting enables you to specify the URL to be used for the server side ephox-spelling service.

#### spellchecker_languages
This optional setting allows you to specify the languages that are available to the user, provided as a comma delimited string. The default value for this setting is: 'US English=en,UK English=en_GB,Danish=da,Dutch=nl,Finnish=fi,French=fr,German=de,Italian=it,Norwegian=nb,Brazilian Portuguese=pt_BR,Iberian Portuguese=pt_PT,Spanish=es,Swedish=sv'

#### spellchecker_language
This optional setting allows you to specify the language code that will be used by default. This defaults to "en".

### spellchecker_dialog
This optional setting allows you to specify the mode of operation of the spellchecker. When set to true, the spellchecker will open a dialog that will check all of the document's contents at once. This also allows a user to step through each error, to ignore errors and accept recommended fixes. If the spellchecker dialog is enabled, the default as-you-type spellchecking will be disabled.

### spellchecker_whitelist
This option lets you specify an array of words that you want to ignore this can for example be the current company name or internal products. You can populate this field from a file by just getting the white list array from an external JS file.

### Toolbar Buttons

#### spellchecker
This button allows the user to perform a spell check on the entire document. In addition, the drop down menu attached to this button allows you to specify the language that is currently used when spell checking.

Example TinyMCE Configuration:

````
tinymce.init({
  selector: 'textarea',
  plugins: 'tinymcespellchecker',
  toolbar: 'spellchecker',
  spellchecker_rpc_url: 'localhost/ephox-spelling',
  spellchecker_language: 'en'
});
````

### Menu items

#### spellchecker
This menu item allows the user to perform a spell check on the entire document.

#### spellcheckerlanguage
This menu item allows you to change the current language for the spell checking process.

Example TinyMCE Configuration:

````
tinymce.init({
  selector: 'textarea',
  plugins: 'tinymcespellchecker',
  menu: {
    tools: {title: 'Tools', items: 'spellchecker spellcheckerlanguage'}
  },
  spellchecker_rpc_url: 'localhost/ephox-spelling',
  spellchecker_language: 'en'
});
````
