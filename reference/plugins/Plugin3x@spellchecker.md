---
layout: default
title: spellchecker
---

This plugin adds spellchecker functionality to TinyMCE by providing a new button that performs a AJAX call to a backend PHP page that uses PSpell/ASpell or Google spellchecker.

An unofficial [spellchecker plugin for ColdFusion](http://sourceforge.net/tracker/index.php?func=detail&aid=1908279&group_id=103281&atid=738747spellchecker) is available on SourceForge.

An unofficial [spellchecker plugin with Java implementation](http://achorniy.wordpress.com/2009/08/11/tinymce-spellchecker-in-java/) is available. It can [integrate with JMySpell](http://achorniy.wordpress.com/2010/01/05/tinymce-jmyspell-jazzy-spellchecker/)

## Requirements

*   Server with PHP support Apache or IIS with PHP module/isapi extension.
*   Serverside technology
*   If you wish to use the PHP integrated PSpell you need to have PSpell/Aspell installed on the server, as well as the dictionaries you wish to use and have this compiled with PHP. Read more about this on the PHP website or use Google to learn more. Use the following script to test that PSpell is working correctly before trying the TinyMCE spellchecker, as the PSpell error messages aren't optimal.

```html
<?php
if (function_exists('pspell_new')) {
	$pspell_link = pspell_new("en");
	if (!pspell_check($pspell_link, "testt")) {
		$suggestions = pspell_suggest($pspell_link, "testt");
		foreach ($suggestions as $suggestion) {
			echo "Possible spelling: $suggestion<br />";
		}
	}
} else {
	echo "pspell is not installed";
}
?>
```

*   If you wish to use the exec version, that is you have PSpell/ASpell installed on the server, but not compiled with PHP, you need to make sure the correct dictionaries are installed and working.
*   If you wish to use the Google version, make sure that your PHP version is above 4.3.0 or that you have the PHP [CURL](http://nl3.php.net/curl/) extension installed and enabled (IIS:php_curl.dll). This is required since the Google Spell Checking service is only available through SSL/HTTPS. Multibyte string function extensions also need to be enabled (IIS:php_mbstring.dll).
*   A functioning TinyMCE implementation.
*   Access to the server to edit configuration and uploading files.

## Installation Instructions

1.  Download the latest version of the TinyMCE Spellchecker plugin, available on our [download page](/download/download.php).
2.  Unzip the "spellchecker" directory into the "tiny_mce/plugins" dir, path should be "tiny_mce/plugins/spellchecker".
3.  Open up the config.php file you just unziped in the spellchecker folder.
4.  Uncomment the spellchecker engine that you wish to use for example "GoogleSpell".
5.  If you use the command line PSpell/ASpell class, you may need to configure the following paths "PSpellShell.aspell" and "PSpellShell.tmp".
6.  Edit your TinyMCE configuration. Add "spellchecker" to the list of plugins.
7.  Add "spellchecker" as a button some where on your toolbar.

## Google Spellchecker configuration example

```html
// General settings
$config['general.engine'] = 'GoogleSpell';
//$config['general.engine'] = 'PSpell';
//$config['general.engine'] = 'PSpellShell';

// PSpell settings
$config['PSpell.mode'] = PSPELL_FAST;
$config['PSpell.spelling'] = "";
$config['PSpell.jargon'] = "";
$config['PSpell.encoding'] = "";

// PSpellShell settings
$config['PSpellShell.mode'] = PSPELL_FAST;
$config['PSpellShell.aspell'] = '/usr/bin/aspell';
$config['PSpellShell.tmp'] = '/tmp';

// Windows PSpellShell settings
//$config['PSpellShell.aspell'] = 'aspell.exe';
//$config['PSpellShell.tmp'] = 'c:/temp';
```

## Spellchecker engines

There are 3 types of spellchecker implementations, that needs to be required/included individually.

| Name | Summary |
| --- | --- |
| PSpellShell | Uses the command line/shell executable version of PSpell. If this option is to be used in Windows it is necessary to add the path to the "aspell.exe" file to the Windows Path environment variable. In Windows XP this is done by going to Start > Control Panel > System. Select the Advanced tab and click on the "Environment Variables" button. Under "System Variables" add to the Path variable the path: "C:Program FilesAspellbin." Do not include this path in $config['PSpellShell.aspell'] because everything after the space between "Program" and "Files" will be ignored. |
| GoogleSpell | Uses a remote google service. Remember this service might be unavailable if google decides to make it non public. |
| PSpell | Uses the built in PSpell module in PHP. (Needs to be compiled in) |

## Spellchecker PHP options

| Name | Summary |
| --- | --- |
| PSpell.mode | Default spelling mode, this is a PSpell specific option. PSpell has various modes that makes it more or less exact it has a impact on performance. |
| PSpell.spelling | PSpell specific setting. Enables you to control the spelling parameter of PSpell. (Advanced users only) |
| PSpell.jargon | PSpell specific setting. Enables you to control the jargon parameter of PSpell. (Advanced users only) |
| PSpell.encoding | PSpell specific setting. Enables you to control the encoding parameter of PSpell. (Advanced users only) |
| PSpellShell.aspell | Location of PSpell executable file this option is only used if the TinyPspellShell.class.php file is required/included. |
| PSpellShell.tmp | Location of a writable temp directory. |

## Initialization Example

```html
tinyMCE.init({
	theme : "advanced",
	mode : "textareas",
	plugins : "spellchecker",
	theme_advanced_buttons3_add : "spellchecker",
	spellchecker_languages : "+English=en,Swedish=sv"
});
```

## Plugin JavaScript options

| Name | Summary |
| --- | --- |
| [spellchecker_languages] | Enables you to specify what languages your pspell installation can handle. The value of this option should be a comma separated name value list in the following format name1=value1,name2=value,name3=value where name is the string to present in the menu and the value is a ISO language code like sv or en. If you add a + character infront of the name it will be the default value for the spellchecker. The default value for this option is: +English=en. |
| [spellchecker_word_separator_chars] | This option enables you to specify the word separator characters. The default value for this option is: s!"#$%&()*+,-./:;<=>?@[]^_{|}§©«®±¶·¸»¼½¾¿×÷¤u201du201c. |
| [spellchecker_report_misspellings] | This option enables you to get an alert box with the number of misspelled words, this option is set to false by default. |
| [spellchecker_rpc_url] | URL to back end for example the PHP rpc service document or some custom spellchecker service. This option doesn't need to be specified if you downloaded the PHP Spellchecker package. |