restman
=======
A Chrome-based Restful Client

Installtion
===========

Development
===========

Install Dependencies
--------------------

```
npm install -g coffee-script testem
npm install
npm test
```

Chrome App Concepts
-------------------

* [tutorial](http://developer.chrome.com/apps/angular_framework.html)

File Structure
--------------

* Modular structure for testability, write everything in CommonJS modules, then ship via [Browserify](https://github.com/substack/node-browserify) or [CJS everywhere](https://github.com/michaelficarra/commonjs-everywhere)
* `/src/**/*.coffee` -> `app/**/*.js`
* bower components at `app/components`

Test Structure
--------------

[Testem](https://github.com/airportyh/testem) in Chrome

run `testem` or `npm test`
