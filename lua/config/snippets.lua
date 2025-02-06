local ls = require "luasnip"
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local extras = require("luasnip.extras")
local rep = extras.rep

ls.add_snippets('html', {
    s('itag', {
        t('<'), i(1), t('>'),
        i(0),
        t('</'), rep(1), t('>'),
    })
})

ls.add_snippets('html', {
    s('tag', {
        t('<'), i(1), t('>'),
        t({ '', '\t' }), i(0),
        t({ '', '' }),
        t('</'), rep(1), t('>'),
    })
})
