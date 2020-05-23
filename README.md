# Mustaside
An extension of Seaside rendering engine for supporting Mustache template

## Features

Mustaside enables you to combine Mustache-template-based rendering and traditional Seaside-component-based rendering.

```smalltalk
html div class: 'must1'; with: [
html mustache:
 '{{time}}{{#subSection}}{{/subSection}}{{#address}}some address{{/address}}' values: {
    'time'->[Time now].
    'subSection'->[self renderSubOn: html].
    'address'->true.
}
].
```

## Installation

```smalltalk
Metacello new
 baseline:'Mustaside';
 repository: 'github://mumez/Mustaside/repository';
 load.
```

## Prereqisites
- [Seaside](https://github.com/seasidest/seaside)
- [Mustache for Smalltalk](https://github.com/noha/mustache)

## Is it useful?
You can embed template-based renderings in normal seaside rendering methods. Moreover, you can also embed normal rendering block in Mustache (See the [self renderSubOn: html] part in the above example). It is actually powerful.

Especially when you already have a bunch of draft HTMLs from a designer, you can save lots of time. With Mustaside, you can avoid translating such HTMLs to rendering message sends.