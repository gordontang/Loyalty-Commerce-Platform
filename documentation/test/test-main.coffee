'use strict'

tests = []
for file of window.__karma__.files
    tests.push file if /Spec\.js$/.test(file)

require.config
  baseUrl: '/base/app/static/scripts'
  waitSeconds: 30

  shim:
    # jQuery plugins (non-amd compliant) need this shim config
    'bootstrap.scrollspy' : deps: ['jquery']
    'jquery.fixto'        : deps: ['jquery']
    'nprogress'           : deps: ['jquery']
    'Handlebars'          : exports: 'Handlebars'

  paths:
    # Libraries
    'jquery'              : '../components/jquery/jquery'
    'Handlebars'          : '../components/handlebars.js/dist/handlebars'

    # Third Party Plugins
    'prettify'            : '../components/google-code-prettify/src/prettify'
    'showdown'            : '../components/showdown/src/showdown'
    'nprogress'           : '../components/nprogress/nprogress'

    # jQuery Plugins
    'jquery.fixto'        : '../components/fixto/dist/fixto'
    'bootstrap.scrollspy' : '../components/bootstrap/js/scrollspy'

    # RequireJS Plugins
    # 'font'                : '../components/requirejs-plugins/src/font'
    # 'goog'                : '../components/requirejs-plugins/src/goog'
    # 'image'               : '../components/requirejs-plugins/src/image'
    # 'noext'               : '../components/requirejs-plugins/src/noext'
    'async'               : '../components/requirejs-plugins/src/async'
    'json'                : '../components/requirejs-plugins/src/json'
    'mdown'               : '../components/requirejs-plugins/src/mdown'
    'text'                : '../components/requirejs-plugins/lib/text'
    'markdownConverter'   : '../components/requirejs-plugins/lib/Markdown.Converter'
    'hbars'               : '../components/requirejs-handlebars/hbars'


    # Global Mediator
    'global'              : 'mediators/global'

  deps: tests
  callback: window.__karma__.start
