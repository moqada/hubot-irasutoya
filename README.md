# hubot-irasutoya

[![NPM version][npm-image]][npm-url]
[![Build Status][travis-image]][travis-url]
[![Dependency Status][daviddm-image]][daviddm-url]
[![DevDependency Status][daviddm-dev-image]][daviddm-dev-url]
[![License][license-image]][license-url]

Search irasuto from irasutoya

## Installation

```
npm install hubot-irasutoya --save
```

Then add **hubot-irasutoya** to your `external-scripts.json`:

```json
["hubot-irasutoya"]
```

## Sample Interaction

```
Hubot> hubot irasutoya
Hubot> http://4.bp.blogspot.com/-vEUAevNqP6I/UPyIxuAUcBI/AAAAAAAAKxI/FcVWNj6Vjwk/s400/muddler.png

Hubot> hubot irasutoya スーパー日本人
Hubot> https://3.bp.blogspot.com/-c3e8Wrl2bHg/VtuvVVIWcJI/AAAAAAAA4eg/_cxpr3M07hE/s600/supuer_nihonjin.png
```

## Commands

```
hubot irasutoya - Fetch random irasuto
hubot irasutoya <keyword> - Search irasuto
```

## Configurations

```
HUBOT_IRASUTOYA_MESSAGE_NO_RESULT - Message for no result
HUBOT_IRASUTOYA_MESSAGE_ERROR - Message for error
```

## Related

Greatly inspired from [ruboty-irasutoya](https://github.com/june29/ruboty-irasutoya).


[npm-url]: https://www.npmjs.com/package/hubot-irasutoya
[npm-image]: https://img.shields.io/npm/v/hubot-irasutoya.svg?style=flat-square
[travis-url]: https://travis-ci.org/moqada/hubot-irasutoya
[travis-image]: https://img.shields.io/travis/moqada/hubot-irasutoya.svg?style=flat-square
[daviddm-url]: https://david-dm.org/moqada/hubot-irasutoya
[daviddm-image]: https://img.shields.io/david/moqada/hubot-irasutoya.svg?style=flat-square
[daviddm-dev-url]: https://david-dm.org/moqada/hubot-irasutoya#info=devDependencies
[daviddm-dev-image]: https://img.shields.io/david/dev/moqada/hubot-irasutoya.svg?style=flat-square
[license-url]: http://opensource.org/licenses/MIT
[license-image]: https://img.shields.io/github/license/moqada/hubot-irasutoya.svg?style=flat-square
