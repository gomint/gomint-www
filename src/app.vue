<template>
  <router-view/>
</template>

<style lang="scss">
html, body, div, span, object, iframe,
h1, h2, h3, h4, h5, h6, p, blockquote, pre,
abbr, address, cite, code,
del, dfn, em, img, ins, kbd, q, samp,
small, strong, sub, sup, var,
b, i,
dl, dt, dd, ol, ul, li,
fieldset, form, label, legend,
table, caption, tbody, tfoot, thead, tr, th, td,
article, aside, canvas, details, figcaption, figure,
footer, header, hgroup, menu, nav, section, summary,
time, mark, audio, video {
    margin: 0; padding: 0;
    border: 0;
    outline: 0;
    font-size: 100%;
    vertical-align: baseline;
}

body {
    line-height: 1;
}

article,aside,details,figcaption,figure,
footer,header,hgroup,menu,nav,section {
    display: block;
}

nav ul {
    list-style: none;
}

blockquote, q {
    quotes: none;
}

blockquote:before, blockquote:after,
q:before, q:after {
    content: '';
    content: none;
}

a {
    margin: 0; padding: 0;
    font-size: 100%;
    vertical-align: baseline;
    text-decoration: none;
}

ins {
    text-decoration: none;
}

mark {
    font-style: italic;
}

del {
    text-decoration: line-through;
}

abbr[title], dfn[title] {
    border-bottom: 1px dotted;
    cursor: help;
}

table {
    border-collapse: collapse;
    border-spacing: 0;
}

hr {
    display: block;
    height: 1px;
    border: 0;
    border-top: 1px solid #cccccc;
    margin: 1em 0;
    padding: 0;
}

input, select {
    vertical-align: middle;
}

@import url('https://fonts.googleapis.com/css2?family=Manrope:wght@200;300;400;500;600;700;800&display=swap');

html {
  --color-deep-ocean:          #00091F;
  --color-deep-ocean-brighter: #000C26;
  --color-ocean:               #001138;
  --color-ocean-brighter:      #00184D;
  --color-ocean-bright:        #001B55;
  --color-ocean-brightest:     #002064;
  --color-deep-navy:           #0F62FE;
  --color-navy:                #00AFFF;
  --color-seasalt-dark:        #408FBC;
  --color-seasalt-darker:      #66B0DA;
  --color-seasalt:             #7BCFFF;
  --color-bliss:               #00E1FF;
  --color-success:             #00CA4E;
  --color-attention:           #FFBD44;
  --color-danger:              #FF605C;

  --ui-title-font: 'Museo', -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif;
  --ui-text-font:  'Manrope', -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif;
  --ui-code-font:  'IBM Plex Mono', -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif;

  --ui-background-color:                  #00061F;
  --ui-dark-background-foreground-color:  #eeeeee; 
  --ui-light-background-foreground-color: #111111;
}

html, body {
  font-family: var(--ui-text-font);
}

body {
  background-color: var(--ui-background-color);
  color:            var(--ui-dark-background-foreground-color);
}
</style>
