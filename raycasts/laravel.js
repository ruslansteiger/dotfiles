#!/usr/bin/env node

import Algolia from 'algoliasearch'
import open from 'open'

// Required parameters:
// @raycast.schemaVersion 1
// @raycast.title Laravel
// @raycast.mode fullOutput

// Optional parameters:
// @raycast.icon 🤖
// @raycast.argument1 { "type": "text", "placeholder": "Search..." }

// Documentation:
// @raycast.description Search the Laravel documentation.
// @raycast.author Ryan Chandler
// @raycast.authorURL https://github.com/ryangjchandler

const client = Algolia('BH4D9OD16A', '7dc4fe97e150304d1bf34f5043f178c4')
const index = client.initIndex('laravel')

const results = await index.search(process.argv.slice(2)[0], {
    facetFilters: ['version:8.x'],
    hitsPerPage: 5
})

console.log(`Found ${results.nbHits} results.`)
console.log(`Opening ${results.hits[0].url}...`)

open(results.hits[0].url)
