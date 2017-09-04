---
#
# Use the widgets beneath and the content will be
# inserted automagically in the webpage. To make
# this work, you have to use › layout: frontpage
#
layout: frontpage
header:
  image_fullwidth: header_unsplash_12.jpg
widget1:
  title: "Features"
  url: '/features/'
  image: widget-1-302x182.jpg
  text: 'Feel++ is a poweful, expressive and scalable finite element embedded library in C++. It contains many features<br/>1. DSEL for Galerkin methods :)<br/>2. Seamless parallelism.<br/>3. A toolbox framework: CFD, CSM, FSI, LS, TE.<br/>4. Automated docker deployment.<br/>...'
widget2:
  title: "Portfolio"
  url: 'http://www.cemosis.fr/software/feelpp/'
  text: '<em>Feel++</em> is the flagship software of <a href="http://www.cemosis.fr">Cemosis</a>.<br/>'
  video: '<a href="#" data-reveal-id="videoModal"><img src="/images/toolbox/FlowAroundCylinder-600x300.png" width="302" height="182" alt=""/></a>'
widget3:
  title: "Download Feel++"
  url: '/download'
  image: widget-github-303x182.jpg
  text: '<em>Feel++</em> is free and licensed under a LGPL and GPL License..'
#
# Use the call for action to show a button on the frontpage
#
# To make internal links, just use a permalink like this
# url: /getting-started/
#
# To style the button in different colors, use no value
# to use the main color or success, alert or secondary.
# To change colors see sass/_01_settings_colors.scss
#
#callforaction:
#  url: https://tinyletter.com/feeling-responsive
#  text: Inform me about new updates and features ›
#  style: alert
permalink: /index.html
#
# This is a nasty hack to make the navigation highlight
# this page as active in the topbar navigation
#
homepage: true
---

<div id="videoModal" class="reveal-modal large" data-reveal="">
  <div class="flex-video widescreen vimeo" style="display: block;">
    <iframe width="1280" height="720" src="https://www.youtube.com/watch?v=RzvRS8970_k" frameborder="0" allowfullscreen></iframe>
  </div>
  <a class="close-reveal-modal">&#215;</a>
</div>
