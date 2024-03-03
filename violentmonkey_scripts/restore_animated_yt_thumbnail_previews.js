// ==UserScript==
// @name        Restore animated thumbnail previews - youtube.com
// @namespace   Violentmonkey Scripts seekhare
// @match       http*://www.youtube.com/*
// @run-at      document-start
// @grant       none
// @version     1.0
// @license     MIT
// @author      seekhare
// @description 2023-12-14. To restore animated thumbnail previews, requires inline previews to be disabled in your Youtube settings. Note: not Greasemonkey compatible.
// @downloadURL https://update.greasyfork.org/scripts/482233/Restore%20animated%20thumbnail%20previews%20-%20youtubecom.user.js
// @updateURL https://update.greasyfork.org/scripts/482233/Restore%20animated%20thumbnail%20previews%20-%20youtubecom.meta.js
// ==/UserScript==

Object.defineProperties(Object.prototype,{isPreviewDisabled:{get:function(){return false}, set:function(){}}})
