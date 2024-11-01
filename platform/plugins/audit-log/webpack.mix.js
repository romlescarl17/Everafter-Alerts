const mix = require('laravel-mix')
const path = require('path')

const directory = path.basename(path.resolve(__dirname))
const source = `platform/plugins/${directory}`
const dist = `public/vendor/core/plugins/${directory}`

mix.js(`${source}/resources/js/audit-log.js`, `${dist}/js`)

if (mix.inProduction()) {
    mix.copy(`${dist}/js/audit-log.js`, `${source}/public/js`)
}
