
# Charles' lab notes

Welcome! This is a place for me to publish less polished thoughts and findings as they come up, research-related or otherwise. See [#motivation](#motivation) for details.

---

# 2022-06-08


Smoke and (AR) mirrors in New York City.

I'm happy to see a hype shift towards more HCI-related topics
and away from all AI all the time. AR relates more to my interests and,
while surely it has some distopian futures embedded in the discourse, it's at
  least not entirely centered around them.

A quick note on hype: I think people lose their minds when it comes to new
technology. New tech is cool and fun and often genuinely transformative! But at
any given time period those transformations are finite. Some things change, some
things don't. And we are bad at knowing what will and won't change `n` months
out. I try to be careful of claims with absolute certainty. We all need some
humility in times like these.

Anyways!

Apple's headset is cool — especially the eye tracking!
We've never seen it in mainstream tech hardware before. I'm really excited
for the possibilities. Though I don't think I'll rush to build an app for it.
I'm much more excited about projectors! The ability for tech to actually
*augment* the world without taking away my ability to engage with the people
therein is so important.

This brings me to [Folk](https://folk.computer). I've been volunteering a little
with the team, getting a home instance set up, and it's finally working!

1. It's much faster than I was expecting. Very satisfying to play with. I think
   I'm getting around 30 frames per second. I don't think 60 is that far away
   and that's even more exciting.
2. I've been experimenting with different paper types and sizes. I was very
   pleasantly surprised by newsprint! Mine has a great kind of soft-glossy
   texture, stacks well since it's so thin, and has more of an e-ink color compared to
   normal bright white paper. Also, suprisingly durable! I've been cutting it to
   approximately A6 size for now and I like that much better than letter or
   half-letter: there's room for more cards to fit under the relatively small
   projection space on my desk.
3. I've been thinking about what I would want to build with this sort of
   interface. There's the question of "are the papers cenceptualized as *the
   thing* you are manipulating or are they handles to an explicitely virtual
   object?". Maybe the answer has to be: both depending on the context, but
   favor *the thing* when possible.
4. I'm torn about the english-like regex pattern matching syntax, which is used to read
   and write from the Folk in-memory reactive database. On the one
   hand, I do like the idea that things are extensible, self-documenting,
   accessible, etc. But it is a bit verbose at times and there is very little
   error information when you mistype something. 
   Better tooling might help!
5. It's interesting that I already want *finer* inputs to the things that I'm
   manipulating. I want to have a relative small circle drawn and then be able
   to attach small things to it and so on. This is not really easy to do given
   the size of April tags. There's some thought of switching to Bullseye
   feducials to get smaller feducial tracking, but you'll still
   have to worry about occluding tags with your hand. Electrical engineering to the rescue?
6. It's hard to know how much time to spend on the system itself or
learning how to build apps on top of it.

I also spent a good amount of time researching in-air (transparent) displays.
Been thinking about how to create a folk-like experience by positioning one
between the table and my head, using cameras for head-tracking.

There are two ways I was thinking of doing this:

1. Find an LCD display, peel of the backing, and then hopefully get a
   transparent LCD display panel.
2. Project onto a piece of glass with a film on it that is suspended between you
   and a table with objects.

Turns out that LCDs are quite dark even with the backing peeled off and need a
backlight to really shine, making projection still the way to go.

So I got some samples of the film shipped to me, bought a glass panel,
some brass rods, and another ikea task lamp! Maybe this will turn into somethign
very cool!

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
