// ==UserScript==
// @name        Genius Full Resolution
// @match       https://t2.genius.com/*
// @grant       none
// @version     1.0
// @author      -
// @description Get full resolution of the cover image from Genius.
// ==/UserScript==

function getFullRes() {
  let originalURL = window.location.href; // get url
  let splitURLDot = originalURL.split("."); // split url by [.]

  let fullResValue = splitURLDot[splitURLDot.length - 2]; // last element will be extension for the file, we need the value right before the extension
  fullResValue = fullResValue.substring(0, fullResValue.length - 2) // delete the last two chars from the full res

  let splitURLSlash = originalURL.split("/"); // split original url by [/]

  if (fullResValue === splitURLSlash[4]) { // if full resolution is already loaded, exit
    return;
  }

  splitURLSlash[4] = fullResValue // swap out lower resolution with full resolution

  const finalURL = splitURLSlash.join("/"); // combine new resolution value to make new url
  window.location.href = finalURL; // redirect to new url
};

getFullRes();
