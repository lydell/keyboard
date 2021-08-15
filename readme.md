Overview
========

This is my personal keyboard layout. It is made for the TECK (“Truly Ergonomic
Keyboard”). There’s also a port for the Ergodox EZ. I hope it may be of
inspiration to someone.

```
ins f1  f2  f3  f4    f5  f6  f7  f8    f9  f10 f11 f12 prt
                            cl  gam
 ↞  men  é  alt ctl sft sup f13 sup sft ctl alt  å  men  ↟
 ↠  ”“  <q  >l  {u  }c  *j  cmp #k  7p  8m  9w  ^-_  ’‘  ↡
tab═&══ >a  ]n  (i  )s  @v  del +b  4h  5t  6r  =o  |═══esc
═══ä═══ ~/\ `?! 'y  "g  —x  bs  –z  1f  2d  3.: %,; ═══ö═══
══agr══ ↞←  ↡↓  ↠→  ══$e═══ ent ══0␣═══ ↞←  ↟↑  ↠→  ══agr══
            ↟↑                              ↡↓
```

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

Some symbols were very convenient to put on the same side as the numbers, such
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


Installation explanation
========================

These are my requirements/limitations:

- Must work in Wayland.
- Should be easy to install.
- Should modify as little system files as possible.
- Should work with the laptop keyboard and the TECK simultaneously.
- Is limited by the TECK firmware.

Have a headache yet?

As far as I can tell, the only way to customize your keyboard layout in Wayland
is to implement a proper XKB layout, just like all the other layouts already
available. On the upside, adding a layout this way means that it’ll work very
reliably: It will show up in the GUI and should allow switching to another
layout easily. You also avoid depending on startup/login scripts.

Also as far as I can tell, there’s no way to add a new layout without modifying
system files. To keep the installation as simple and non-intrusive as possible,
I use a few little hacks.

On Ubuntu, the keyboard layouts live in `/usr/share/X11/xkb/symbols`. In there,
there’s basically one file per layout (plus some general files that are used for
all layouts). For example, `us` contains the en-US QWERTY layout (and some
more).

The trick is to modify the `au` layout. This is its entire contents:

```
//
// Default Australian is the same as American
//
default  partial alphanumeric_keys
xkb_symbols "basic" {
    include "us(basic)"

    name[Group1]= "English (Australian)";
};
```

When this was written, [that file was last changed mid-2016][au-commit] with the
following commit message:

> Australians use the 'us' layout but add an alias anyway so it's easy to find
> in the respective configuration tools.

In other words, it is very unlikely to change and as such a golden (pun
intended) candidate for a safe layout to replace. While it is possible to add
your own layout, it’s much easier to replace one of the existing ones that you
never use. And even if you are Australian and _do_ use the `au` layout you could
just use `us` instead. (I used to [modify the `my`
layout](#a-story-on-the-my-layout), but that is no longer a good idea.)

My layout has a lot more keys than regular ones, due to the symbol layer. The
criteria for the keys in the symbol layer are:

- They must not appear in the main layer, so I can rebind them.
- They must be recognized by XKB.
- They must not be overridden by XKB.

The last point can be explained with this command:

```
$ setxkbmap -print
xkb_keymap {
	xkb_keycodes  { include "evdev+aliases(qwerty)"	};
	xkb_types     { include "complete"	};
	xkb_compat    { include "complete"	};
	xkb_symbols   { include "pc+au+inet(evdev)"	};
	xkb_geometry  { include "pc(pc105)"	};
};
```

The interesting part is the `xkb_symbols` line. `pc`, `au` and `inet` are files
in `/usr/share/X11/xkb/symbols/`. `(evdev)` means that the keymap called “evdev”
inside `inet` should be used. (When there’s no name in parentheses, the keymap
named “default” inside a file is used.) The files are applied in order, with
latter ones overriding previous ones.

In our `au` file, we can override `pc` (which defines the base keys for all
layouts, such as modifier keys, arrow keys, enter, backspace, etc.) But we can’t
override `inet` (which defines media keys and F13–F24). So unless we modify
`inet`, all of those keys are basically out of the question to use.

One _could_ use non-standard keys, by defining their key codes in
`/usr/share/X11/xkb/keycodes/evdev`. But I haven’t felt like experimenting with
putting the correct numbers in the TECK firmware and finding the corresponding
XKB numbers. And testing if it actually works out in the end. Also, if I modify
`keycodes/evdev` I could just as well modify `inet`.

So, these limitations combined does not leave an awful lot of keys available.
What I did is taking all the numpad keys and shoving them wherever I need a new
key. I don’t need a classic numpad anyway, so that’s fine. The numpad keys were
not enough, though. So I also use F13-F20 (there’s up to F24 if you need even
more keys). Unfortunately, that meant that I had to comment out F13-F20 in
`inet`, but at least that’s a minor edit to do.


A story on the _my_ layout
--------------------------

The file `my` _used to be_ interesting. This was its entire contents, which was
an exact copy of `bn`:

```
default partial alphanumeric_keys
xkb_symbols "jawi" {
    include "id(jawi)"

    name[Group1]= "Malay (Jawi)";
};
```

This made the aptly named `my` layout a perfect candidate for hacking in our
layout. If you _did_ happen to use `my` you could just switch to `bn` instead.
They were identical, and even named the same in the GUI.

However, the [`my` layout has since been updated][my-commit] to it’s own,
full-blown layout, while `bn` seems to have been removed.

But the most important reason not to use `my` is because of Ubuntu 18.04. When I
upgraded to 18.04 from 17.10, the installation noticed that I had set my
keyboard layout to `my` and tried to be helpful and also set `my` as the layout
used in the full-disk encryption unlock boot screen. But before doing so, the
upgrade replaced the modded `my` with the latest version from the distribution.
This meant that I had a keyboard layout full of characters that I don’t know,
and can’t type my password on.

To be able to use the computer again I had to boot a from a live USB stick,
temporarily change the password to a single character, look up how to type that
character in the `my` layout, and then finally unlock the encryption screen.
Once I had changed the layout back to `us`, I ran `sudo update-initramfs -k all
-u` to update the layout used in the unlock screen.

For the above reason, `au` is a safer bet to hack. Because if it ever gets reset
back to its original contents (or is updated), you end up with the `us` layout,
which most people know.


Installation instructions
-------------------------

Remember that I’ve implemented the layout using a mixture of custom firmware for
the TECK and an XKB keyboard layout, designed both to achieve a layout I really
like for the TECK while at the same time largely make my Swedish QWERTY laptop
keys do what their labels say. I don’t expect anyone else to find this
particular implementation useful.

Upgrade your Truly Ergonomic Keyboard with the firmware in `teck_se.hex`. That
file was generated using the layout designer on Truly Ergonomic’s website.
There is a URL to it in `teck_se.url`. You can do this using [teck-programmer].

Then run `sudo ./setup install` in this repository to “install” the XKB layout.
Running just `./setup` shows what the script will do. There’s also `./setup
uninstall` for reversing the process. (Note that `./setup uninstall` uses
`au-backup` to restore `au`. You might want to grab [the latest `au`
version][au-latest] instead, but it is, as mentioned earlier, not very likely to
change.)

What the setup script does is removing `/usr/share/X11/xkb/symbols/au/` and
replacing it with a symlink to `teck_se` in this repository. It also comments
out a few lines in `inet` in the same folder as `au`.

When that’s done, you can run `setxkbmap au` to try the layout out if you run
Xorg (not Wayland). That’s handy when testing and making adjustments to the
layout. You can use the system settings GUI to make the layout choice more
permanent (and working in Wayland).

When using the system settings GUI, you need to add “English (Australian) _au_”
to your input sources.

If you want the layout to show up as something else other than “English
(Australian)” in the GUI, edit `/usr/share/X11/xkb/rules/evdev.xml`. Look for
this section:

    <name>au</name>
    <shortDescription>en</shortDescription>
    <description>English (Australian)</description>

You can change the short and long descriptions as you like, for example:

    <name>au</name>
    <shortDescription>en</shortDescription>
    <description>My awesome layout</description>

`/usr/share/X11/xkb/rules/base.xml` is a copy of `evdev.xml` on my system, and
as such acting as a backup. I think it’s the easiest to log out and in again to
apply the changes in `evdev.xml`.


A note about Num Lock
---------------------

The new firmware adds numpad keys here and there. The XKB layout then remaps
those to symbols and such. When pressing such keys, the TECK sends both the
desired key and Num Lock. That extra Num Lock usually makes no difference, but
it might break some keyboard shortcuts. For example, trying to enter the `g $`
keyboard shortcut sequence in the Atom text editor results in Atom receiving `g
NumLock $`, which breaks the sequence. To work around this, Num Lock has been
remapped to ctrl. There seems to be no harm sending a ctrl press before symbols,
and Atom allows it to be pressed in the middle of sequences.


Ergodox EZ
----------

With the Ergodox EZ, I’ve taken a new approach. My customized firmware layout is
designed to be used with the _(almost)_ standard sv-SE QWERTY layout _for Mac._
This works on macOS, and on Linux if I use [Kinto.sh], which also gives me
similar keyboard shortcuts. There’s a special mode for Windows that works with
the standard sv-SE QWERTY layout _for PC._

It’s possible to do everything I need in Ergodox EZ’s firmware, except a couple
of things that are done via a custom Swedish layout for Mac (`Swedish -
Custom.keylayout`) and by patching the “Swedish (Macintosh)” layout on Linux
(`se.patch`). Having a custom Mac layout is nice anyway, since it also affects
the MacBook laptop keyboard. These are the changes made:

- Turn `¨` into `’`.
- Not done: Turn `shift-’` into `‘`. I never use “left single quote mark” in
  practice so I didn’t bother solving this one.
- Swap `` ` `` and `´` and make them not dead.
- Make `~` not dead.
- Make `^` not dead.
- The `?`/`!` key.
- The `–` and `—` keys. On Mac these are possible by sending `option--` and
  `option-shift--`, but for Linux’s sake I’ve used separate keys for them.
- On Mac: Make `option-space` type a regular space instead of a non-breaking
  space, to avoid accidentally ending up with non-breaking spaces which can be
  confusing.
- On Linux: Turn the paragraph/degree key into `<`/`>`. (Those keys seem to be
  swapped on Mac.)
- On Linux: Make `altgr-e` into `é` and `altgr-shift-e` into `É`, so that the
  `é`/`É` key works.

Working around dead keys _can_ be done in the Ergodox EZ firmware, by using
macros: Type the dead character followed by a space. But avoiding macros is more
reliable, and makes the keys non-dead on the laptop keyboard. However, I _did_
take this approach in the Windows mode, because I didn’t have the energy to
create a custom Windows keyboard layout. (But maybe I should some day, because
the `?`/`!` and `/`/`\` keys are not possible to do in firmware; as a workaround
I have `?` and `/` keys but `!` and `\` in the function key layer. I don’t use
Windows that much though.)

There’s firmware for the Ergodox EZ in `ergodox-ez.hex` and a link to it in
`ergodox-ez.url`. Go to that URL for installation instructions.

To install the custom macOS keyboard layout:

1. Put `Swedish - Custom.keylayout` in `~/Library/Keyboard Layouts/`.
   (It was made using [Ukelele].)
2. Log out and in again. (Possibly: Restart the computer.)
3. Finally select the layout in System Preferences.

To patch the “Swedish (Macintosh)” layout on Linux:

1. Apply the patch: `sudo patch --backup /usr/share/X11/xkb/symbols/se se.patch`.
   If this fails, you can try copying `se-modified` from this repo (it might be
   outdated, though): `sudo cp se-modified /usr/share/X11/xkb/symbols/se`.
2. Log out and in again.
3. Add the “Swedish (Macintosh)” layout in System Settings (unless you haven’t already).

To unpatch:

1. Restore the `/usr/share/X11/xkb/symbols/se` file in one of the following ways:

   - Use the backup file created by the `patch` command:
     `sudo mv /usr/share/X11/xkb/symbols/se{.orig,}`
   - Use the backup file in this repo (`se-backup`). It might be outdated, though.
   - Apply the patch in reverse: `sudo patch --reverse /usr/share/X11/xkb/symbols/se se.patch`
   - Edit `/usr/share/X11/xkb/symbols/se` by hand. Search for the comments
     marked with `!!!` and swap things back.

2. Log out and in again.

[TMK]: https://github.com/tmk/tmk_keyboard
[anishtro]: https://github.com/lydell/anishtro
[arensito]: http://www.pvv.org/~hakonhal/main.cgi/keyboard
[au-commit]: https://cgit.freedesktop.org/xkeyboard-config/commit/symbols/au?id=8791fd60ca031441fbe5b137d8587e0285490fb1
[au-latest]: https://cgit.freedesktop.org/xkeyboard-config/tree/symbols/au
[dual-role]: http://en.wikipedia.org/wiki/Modifier_key#Dual-role_keys
[dual]: https://github.com/lydell/dual
[gh-dr]: https://geekhack.org/index.php?topic=41685.0
[Kinto.sh]: https://github.com/rbreaves/kinto
[my-commit]: https://cgit.freedesktop.org/xkeyboard-config/commit/symbols/my?id=750db0173a8b25cfb169bb204d97daea393ce412
[teck-programmer]: https://github.com/m-ou-se/teck-programmer
[Ukelele]: https://software.sil.org/ukelele/
