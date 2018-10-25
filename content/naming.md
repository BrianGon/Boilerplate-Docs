---
title: Naming Conventions
date: 2018-08-22
menu:
  main:
    weight: 6

---

<p class='lead'>Aliquet enim tortor at auctor urna nunc id cursus metus aliquam eleifend mi in nulla posuere sollicitudin aliquam ultrices sagittis orci a scelerisque purus semper.</p>

------

## Filenames

Camel case for web page names:

> **thisName**.php

Variations or versions of pages:

> thisName**-version**.php

Directory names:

> **folder_name**

Includes are prefixed with an underscore:

> **_includeThisFile**.scss

Or using the legacy prefix: 

> **inc_**thisFile.php

------

## Variables

Use an underscore to separate two word variable names.

> `$this_name` 
<strike>$notThis</strike>

## Functions

Name functions with camel case: 

> `function buildThisFunction($a, $b) { }`

------

## CSS

Class names and ids. Use dashes as per the bootstrap style.

> `.this-style`

> `#or-this-style`