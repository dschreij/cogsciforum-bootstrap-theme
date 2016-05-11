# Bootstrap theme for forum.cogsci.nl

This repository contains the bootstrap theme for forum.cogsci.nl which runs on [vanilla forums](https://vanillaforums.org). It is based on the work of [Kasper Kronborg Isager](https://github.com/kasperisager) and licensed under the terms of the [MIT License](LICENSE.md)

[![Bootstrap for Vanilla](screenshot.png)](https://github.com/kasperisager/vanilla-bootstrap)

[![Release](http://img.shields.io/github/release/kasperisager/vanilla-bootstrap.svg?style=flat)](https://github.com/kasperisager/vanilla-bootstrap/releases)

To use this theme, simply download or clone it to the themes folder of the forum. You can then activate it in the dashboard and select the desired style set.

## Development

This section is only relevant if you want to make changes to this theme or any of its styles.

The following instructions assume that you have already installed Node.js on your computer. If this is not the case, please download and install the latest stable release from the official [Node.js download page](http://nodejs.org/download/). 

> __Notice__: It is important that you install Node in a way that does not require you to `sudo`.

Once you have Node.js up and running, you will need to install the local dependencies using [npm](http://npmjs.org):

```sh
$ npm install
```

These dependencies are only necessary if you are going to make changes to, and thus need to rebuild, the stylesheets from their LESS source. If you are simply going to use the stylesheets as they are, there is no need to install the node dependencies.

### Tasks

Run these commands from the root theme folder (e.g. the one that contains the gulpfile.js)

#### Build - `npm run build`
Compiles all theme assets using Gulp. LESS stylesheets will be compiled to [`design/style.css`](design/style.css) and Javascripts will be concatenated and output to [`js/custom.js`](js/custom.js).

#### Watch - `npm run watch`
Watches the assets for changes and runs the appropriate Gulp tasks. Also starts a Livereload server that will push the changes to your Vanilla installation automatically.

### Location of important files
To make changes to the cogsci style sheet, the following files are important.

- **views/default.master.tpl**: the template file which determines the spatial layout of the forum pages
- **less/cogsci/***: Contains the basic cogsci style definitions, which are not specific to the forum
- **less/themes/cogsci.less**: Contains the style definitions specific to the forum. From this file, the main stylesheet is compiled and as such it imports the files found at *less/cogsci*

