#!/usr/bin/env livescript
http = require \http
ss = require \socketstream

ss.client.define \app,
  view: \index.html
  css: ['app.css','bootstrap.css']
  code: ['libs', 'app']
  tmpl: ['partials']

ss.http.router.on \/, (req, res)->
  res.serve \app

ss.client.templateEngine.use 'angular', '/partials'
ss.client.formatters.add require \ss-livescript

server = http.Server ss.http.middleware
server.listen 4000
ss.start server
console.log 'server on http://localhost:4000'
