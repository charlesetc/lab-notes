

# Charles' lab notes

Welcome! This is a place for me to publish less polished thoughts and findings as they come up, research-related or otherwise. See [#motivation](#motivation) for more details.

---

# 2022-05-29

I added links on each header here! Had to use pandoc's gfm_auto_identifiers extension and then used a [lua filter](https://pandoc.org/lua-filters.html) to add the actual links to the header. This was an updated version of [the filter](https://github.com/jgm/pandoc-website/blob/master/tools/anchor-links.lua) pandoc uses for its own documentation.

```lua
function Header(h)
  if h.identifier ~= '' then
    local anchor_link = pandoc.Link(
      h.content,                        -- content
      '#' .. h.identifier,              -- href
      '',                               -- title
      { class = 'header-anchor' }       -- attributes
    )
    h.content = anchor_link
    return h
  end
end
```

---

# 2022-05-28

I've added an RSS feed for these notes! I'm using pandoc to render a single markdown file into html, so had to figure out some way to get an rss feed as well. I went with a ruby script to parse the markdown and generate the xml on build. Turned out to be easier than I was expecting!

See the feed here: [./rss.xml](./rss.xml)

---

# 2022-05-27

## Motivation

Well I've been doing some long-form writing on my [blog](https://inclouds.space/blog) and I've enjoyed it. But the format necessitates a lot of editing and care, at least in my mind. This can be good for me—practicing writing long form pieces and the editing that goes with that—but it's not easy and often either prevents me from getting content out or seriously delays it. I'd like to be able to share spure of the moment insights and snippets easily and quickly, in the hopes that I end up getting a larger amount of content out and in public. That too is good practice!

So please bear with me; thoughts might not be as fully-formed, spelling might not be well-checked, grammer will be mid at best. This is an experiment! I'm hoping the content itself can earn its keep despite these potential pitfalls.

Also I like exclamation points and will probably use more of them here than my normal blog! No more censorship!


## Forest

As I add these lab notes to the nav of my main site, they are replacing a link to my "forest" — an attempt at a digital garden I made a few months ago. Recently it has become less of a garden and more of a small, static grove of trees. So instead of pointing to it so directly, I'm moving the link here. Please enjoy! [forest.inclouds.space](https://forest.inclouds.space/)

---

<a class='end-star' href="https://inclouds.space">★</a>
