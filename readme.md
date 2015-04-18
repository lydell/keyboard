Overview
========

This is my personal keyboard layout. It is made for the TECK. I hope it may be
of inspiration to someone.

    ins f1  f2  f3  f4    f5  f6  f7  f8    f9  f10 f11 f12 prt
                            cl  ml  ql
     ◰  men f*  alt ctl sft sup f13 sup sft ctl alt  å  f14  ◳
     é  ”“  <q  >l  {u  }c  *j  cmp #k  7p  8m  9w  ^-_  ’‘  ◲
    tab═&══ >a  ]n  (i  )s  @v  del +b  4h  5t  6r  =o  |═══esc
    ═══ä═══ ~/\ `?! 'y  "g  —x  bs  –z  1f  2d  3.: %,; ═══ö═══
    ══agr══ ↞←  ↡↓  ↠→  ══$e═══ ent ══0␣═══ ↞←  ↟↑  ↠→  ══agr══
                ↟↑                              ↡↓

                      Mouse Lock:   ··×  ↖   ↑   ↗   ↧
                                    ·×·  ←   ➀   →   ❶
                                    ×··  ↙   ↓   ↘   ↥
                                    ═══➁═══

                      f* layer:         f7  f8  f9  f12
                                        f4  f5  f6  f11
                                        f1  f2  f3  f10

([How to read the above diagram.](diagrams.md))


Concepts
========

Modifiers on the number row
---------------------------

The idea here is to have one modifier per finger. This has two benefits. First
off, it doesn’t punish a single finger but spreads the work among all fingers.
Secondly, and more importantly, it makes it significantly easier to press
several modifiers at once.

So, how do you achiveve this?

My first idea was to make the home keys [dual-role]: They should produce letters
as usual when pressed alone, but turned into modifiers when held. So I wrote
[dual] to achieve it.

Modifiers on the home row is crazy cool when you first try it. It feels like you
can type without moving your fingers! However, after a while I did not work out
anymore. A side effect of dual-role keys is that they have to send their keys on
keyup instead of keydown. It doesn’t sound like a big deal, but in the end it
made my typing feel very laggy, even though I used it for a few months. Worse,
the dual-role nature often made letters appear in the wrong order, or not at
all. The letter became more and more noticeable as my typing speed improved. The
cause might very well be a buggy dual-role implementation (it’s actually a lot
trickier than it sounds at first). In the end it wasn’t usable anymore.

As a side note, dual-role keys can still be useful. However, I think they need
to be implemented in firmware in order to be stable enough. Moreover, only
already existing modifiers and more seldomly used keys should be turned into
dual-role keys. See the [TMK] firmware and the [geekhack thread][gh-dr] about
dual-role keys for more information.

I solved the above problem by moving the modifiers two rows up, to the number
row. At first I made the numbers into dual-role keys, which worked about pretty
well. After some time, though, I wanted to move to GNU/Linux, but my dual script
was made for Windows. This was one of the biggest hurdles for me when migrating,
as I couldn’t find any existing tools to do the same on GNU/Linux. In the end I
decided to keep it simple and simply just move the modifiers into the number
row, without any dual-role. But then, where should the numbers go? My solution
was to implement a symbol layer.

Symbol layer
------------

Inspired by the [arensito] layout (and several others), I’ve put most symbols in
its own layer. Why cram them into the distant number row and at far-to-reach
pinky keys when you can have them at the home row?

This requires an easily accessible dedicated symbol layer key. Or rather two—one
for each hand. I chose the bottom left and right keys of the TECK. I press these
by letting the sides of my hands fall onto them. Some call this “ninja-chopping.”

Laying out the keys of a symbol layer is rather easy. Unlike letters, which are
part of a “flow” when typing, each character is rather independent from the
others. Moreover, you can place the characters in a simple to remember and easy
to learn logical way. While it might feel easy and logical to put the letters in
alphabetical order, it is not the most confortable arrangement to type on.
Symbols, however, do not suffer from such constraints (that much), because
usually you type symbols one by one.

I’ve always disliked the number row for typing numbers. Even though you get one
number per finger—which sounds as a really good idea—I’ve always found it very
cumbersome to type longer numbers, such as social sequrity numbers or dates.
Worst of all, the numbers that I type the most when programming—0 and 1—have the
worst positions.

On the other hand, I’ve always liked the numpad. Therefore, I started by
arranging the numbers like the numpad at the home keys of the right hand. The
number 0 got the right thumb key. The most common number I type deserves such a
good position.

Moving on to the rest of the keys. Some of the symbols come in pairs: `() {} []
<>`. I usually type them both in one go, and then move the cursor once to the
left to fill in the content between them (the left–and right–arrow keys are
conveniently accessible by the thumbs). Therefore I put those pairs next to each
other, allowing me to “roll” my fingers to type them really quickly. All of
those are very common as well, so I gave them really good positions on the left
side home keys.

To me, it felt logical to group the three “quote-like” characters together:
`` ` ' " ``. It has always bothered me that in a sinle-quote is so much simpler
to type than a double-quote. I gave both good positions. Most of the time you’re
not in charge of the coding style of projects. Some prefer single-quotes, some
double-quotes. Sometimes they have different semantics. The difficulty of typing
them should not be an argument when choosing between the two.

Some symbols were very convienient to put on the same side as the numbers, such
as `# + – %`. The rest I simply tried to rank how much I type them, giving the
less frequently used worse positions. `$` was given one of the best
positions—the left thumb. If you program a lot of bash scripts, php, JavaScript
with jQuery or Sass it is a really common character.

Not _all_ symbols are in the symbol layer, though. Some are in the main layer.
That’s because all of them cannot fit in the symbol layer, and some are so
commonly used when typing text that they need to be in the best layer.

The idea was to use “text-symbols” in the main layer and “programming-symbols”
in the symbol layer. `. , ? !` are obvious candidates for the main layer. The
dash is arguably also a “text-symbol” (though less common), but that’s not the
main reason I put in the main layer. The dash is extremely common when using the
command line. For the same reason, I left the slash in the main layer, too,
which also is very convenient when typing URLs.

Both the period and the comma are frequently used together with numbers; to mark
the fractional part of a number or separate numbers from each other (such as in
an array when programming). That’s the reason I put them on the same side as the
numbers (apart from being used having them on that side from the QWERTY layout).
I actually tried putting the comma on the right side (to be symmetrical with the
period), but that didn’t work out at all when typing thing like `[1,2,3]`.
Alternating between the symbol layer switch and the bottom row ring finger key
on the same hand is close to impossible.

Another thing that always bothered me was that typing `?` and `!` was so
different. They both end a sentence just like a period, in two special ways.
Especially the `!` was in such a bad position (`shift+1`). Initially I put them
on the period and comma, where they feel more like they belong, but in the end
I put both of them on their own key, and kept colon on period and semi-colon on
comma, just like in the Swedish QWERTY layout. I’ve never had a problem with
that, and it is acutally a quite logical arrangement. Putting `?` and `!` is
also quite logical. The biggest reason, though, is that it makes it easier for
me to switch between a regular keyboard with the Swedish QWERTY layout and the
TECK.

I also decided to put “real,” typographic quotes in the main layer, while
keeping the standard, straight ones (some call them dumb) in the symbol layer
for programming reasons.


Function key layer
------------------

I bought a TECK with blank key caps. Why? I knew that I wanted to rebind all (or
most) keys, so the labels would be out of sync anyway. Moreover, I touch type.
Why have labels if you don’t look at them? Lastly, it just super stylish and
very hackerish.

The only drawback is the keys that I do not touch type: The function keys. They
are too far away from the home keys to find by touch (at least for me). Many
times I’ve ended up counting them from the left to find that pesky F7.

In the previous section, I made it really easy to type numbers. Why should it be
so difficult to do the same but with an F in front of it? So I added a f\* key
at the left side of the keyboard, that puts the F1–F9 keys on the same ones as
1–9. The pinky was given the last three function keys.

This makes it much easier and more convenient to use the function keys. My ideal
keyboard wouldn’t have a function key row at all.

The anishtro letter layout
--------------------------

See [anishtro].


Embracing the Compose key
-------------------------

Designing keyboard layouts is fun. It is easy to go over the top, though. In one
of my first own layouts (when I still used Windows), I added lots of cool
characters, such as subscripted and superscripted numbers, the degree sign,
extra currency signs, math symbols, you name it. In the end, it was impossible
to remember. And the number of modifiers that needed to be help was pretty
awkward.

Instead, embrace the Compose key! Punch it, and then press two keys that
together form what you’re looking for. For example, `Compose / =` gives `≠` and
`Compose ^ 2` gives `²`.

I’ve still included a few special keys—ones that I use a lot: `“ ” ‘ ’ — –`. But
no more than that.


Installation
============

I’ve implemented the layout using a mixture of custom firmware for the TECK and
an XKB keyboard layout, designed both to achieve a layout I really like for the
TECK while at the same time largely make my Swedish QWERTY laptop keys do what
their labels say. I don’t expect anyone else to find this particular
implementation useful.

Upgrade your Truly Ergonomic Keyboard with the firmware in `teck_se.hex`. That
file was generated using the layout designer on Truly Ergonomic’s website.
There is a URL to it in `teck_se.url`.

To use the layout, run the `teck_se` file.

You can autorun that file when logging in. If you’re using Gnome, you can copy
`teck_se.desktop` into `~/.config/autostart`. You need to adjust the path to
`teck_se` in that file first, though. You might also need to adjust the delay
in it.

Run `setxkbmap` to return to your regular layout.

I don’t know a good way to use the layout in the login screen. That’s not
important for me though.

When I first made this XKB layout, I autoran the about command, and it worked
great. After a while, it didn’t. Then I came up with a different (and a bit
more complex) installation method. When I upgraded my operating system, though,
that method stopped working, and the original method started working again.
Odd.

A note about Num Lock and plugging in and out the TECK
------------------------------------------------------

The new firmware adds numpad keys here and there. The XKB layout then remaps
those to symbols and such. When pressing such keys, the TECK might send both
the desired key and Num Lock. That extra Num Lock usually makes no difference,
but it might break some keyboard shortcuts. If you’re using Gnome, here’s how
you can prevent the TECK from sending that extra Num Lock.

1. Run `gsettings set org.gnome.settings-daemon.peripherals.keyboard numlock-state on`.
2. Log out and log in again.

If you plug the TECK in after you have logged in, it doesn’t matter if you have
autorun `teck_se` when logging in. It will have no effect. Then you either need
to run `teck_se` again, or log out and log in. The latter option is better,
because otherwise the TECK will start to send that extra Num Lock.


[anishtro]: https://github.com/lydell/anishtro
[arensito]: http://www.pvv.org/~hakonhal/main.cgi/keyboard
[dual]: https://github.com/lydell/dual
[dual-role]: http://en.wikipedia.org/wiki/Modifier_key#Dual-role_keys
[gh-dr]: https://geekhack.org/index.php?topic=41685.0
[TMK]: https://github.com/tmk/tmk_keyboard
