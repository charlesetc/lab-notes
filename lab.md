
# Charles' lab notes

Welcome! This is a place for me to publish less polished thoughts and findings as they come up, research-related or otherwise. See [#motivation](#motivation) for details.

---

# 2022-06-05

Some highlights from the past few days:

1. Continued work on the folk setup. Calibration between the camera and
   projector isn't working, still have to investigate that today. But I got a
   wifi adapter so no hotspotting for me anymore!
2. [HTML energy](https://twitter.com/rsnous/status/1665126377144590341) event
   on saturday. Really fun to see people congregate to make digital art!
3. I've been getting really into lua and hammerspoon recently. Made a
   keybinding to let me quickly open these lab notes, for instance! It's fun to
   think of my computer as a display mechanism underneath a pile of lua.
4. In the course of this lua splurge, I wanted to execute a program in a
   directory *without* using a shell to `cd` there first. It feels like this
   should be a built-in utility! Like how you can set an environment variable
   with `env THIS=THAT`. So I made it! It lets you `exec-in a-directory
   your-executable your-arguments`. Worked great! Maybe there's something else
   that does it? It was kind of fun to write — I wrote the bash first and then
   asked an LLM to convert it to C for me. [github
   ](https://github.com/charlesetc/utils/tree/main/exec-in)
5. I've been with [Justin](https://just-be.dev/) about making an in-air LCD display: completely
   transparent except when you want it to show something. Like an iPad for AR I
   suppose? I'd be interested in combining these with cameras to make a sort of window into the
   augmented world.


<pre>---</pre>

Update: Got calibration working and so the rectangles are now following the
april tags! The automatic calibration still isn't quite working, I had to manually
feed in some of the points that it came up with. And as you can see the
calibration isn't that good. But it's a starting point!

![](./static/IMG_2036.jpeg)

Also, bubble:

![](./static/IMG_2018.jpeg)


---

# 2022-05-31

An awesome day. It started out by installing ubuntu on a small desktop computer:

![](./static/2023-05-31-01.jpeg)

And then progressed to drilling holes into a vesa mount of a monitor arm:

![](./static/2023-05-31-03.jpeg)

Which let me position a webcam and projector in the air:

![](./static/2023-05-31-04.jpeg)

To finally project a blue square on my desk:

![](./static/2023-05-31-02.jpeg)

And what a blue square it is!

There were too many issues to count along the way. The computer I got ended up not having a wifi card built in but it did come with a usb wifi adapter. I spent altogether too much time manually downloading the debian packages needed to compile this adapter's firmware only to find out that it wasn't compatible with the latest linux kernel version. So I'm getting a new wifi adapter shipped, but in the meantime I went to the store to buy an ethernet cable. This got me started but it wouldn't reach to the right desk, so I have ended up tethering my phone's hotspot through a usb connection. Which of course lead to more issues. My printer is configured to work on my home network which this desktop computer doesn't have access to (since it doesn't have a wifi card), so printing out four April tags involved alternating between my phone's hotspot to get a single print job queued and then my home network to actually print it. A wild ride for sure!

But it should all be worth it soon.

---

# 2022-05-30

I'm in the process of setting up a [folk.computer](https://folk.computer) installation! Today involved running to the hardware store to buy clamps, eyewear, power strip, flash drive, etc. Tonight or tomorrow I'll start drilling: have to widen the holes in a monitor arm's VESA mount to let through the 1/4" 20 screws that the projector and webcam use. I'm hoping that the end result will be pretty clean!

Folk is a projector-camera "physical computing" interface and operating system developed by [Andrés](https://cwervo.com/) and [Omar](https://omar.website/). The idea is you position a camera and a projector above your desk and plug them into a computer with access to a printer. This setup lets you:

- use computer vision to track April Tags (kind of like QR codes but faster to recognize) in real time.
- project light onto and around the objects you are tracking, informed by information from the computer vision (position, rotation, skew of tags in space).
- print out sheets of paper with these April Tags, giving you the ability to bring new augmented objects into the world with ease.

I'm extremely excited about this. Last week I witnessed a musical performance where someone with no particular training manipulated 5 pieces of paper to create a musical experience. This is how we seamlessly empower non-technical humans with technology: extraordinarily easy, high-bandwidth interfaces you can **play** with.

Stay posted.

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

I've added an RSS feed for these notes! I'm using pandoc to render a single
markdown file into html, so had to figure out some way to get an rss feed as
well. I went with a ruby script to parse the markdown and generate the xml on
build. Turned out to be easier than I was expecting!

See the feed here: [./rss.xml](./rss.xml)

---

# 2022-05-27

## Motivation

Well I've been doing some long-form writing on my
[blog](https://inclouds.space/blog) and I've enjoyed it. But the format
necessitates a lot of editing and care, at least in my mind. This can be good
for me—practicing writing long form pieces and the editing that goes with
  that—but it's not easy and often either prevents me from getting content out
  or seriously delays it. I'd like to be able to share spur of the moment
  insights and snippets easily and quickly, in the hopes that I end up getting
  a larger amount of content out and in public. That too is good practice!

So please bear with me; thoughts might not be as fully-formed, spelling might
not be well-checked, grammar will be okay at best. This is an experiment! I'm
hoping the content itself can earn its keep despite these potential pitfalls.

Also I like exclamation points and will probably use more of them here than my
normal blog! No more censorship!


## Forest

As I add these lab notes to the nav of my main site, they are replacing a link
to my "forest" — an attempt at a digital garden I made a few months ago.
Recently it has become less of a garden and more of a small, static grove of
trees. So instead of pointing to it so directly, I'm moving the link here.
Please enjoy! [forest.inclouds.space](https://forest.inclouds.space/)

---

<a class='end-star' href="https://inclouds.space">★</a>
