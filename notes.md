This file is mainly for myself, to aid my memory. I doubt it being interesting
or useful to anyone else.

The laptop layout:

```
esc f1 f2 f3 f4  f5 f6 f7 f8  f9 f10 f11 f12  ↞ ↠ cmp del
 é   1! @2" £3# $4¤ €5%  6& {7/ [8( ]9) }0= \+?  `´ ══bs═
═tab  q   w  €e   r   t   y   u   i   o   p   å  ~–^ ═ent
═esc═  a   s   d   f   g   h   j   k   l   ö   ä   '* ╚═╝
sft |<>  z   x   c   v   b   n   m   ,;  .:  -_ ═══sft═══
ctl fn  sup alt ═════════␣═════════ agr men ctl  ↟  ↑  ↡
                                                 ←  ↓  →
```

`é` replaces the useless `§½` key. Since `´` is no longer dead, another way to
easily input `é` is needed. This specific key is very similar in location
compared to the TECK layout.

The key to the right of `å` is en-dash. The default `"` diaresis is useless; the
en dash is not. I’ve also added em-dash on `altgr+shift`.

The `'` key has been enhanced with `’` and `‘` on `altgr` and `altgr+shift`,
respectively. Similarly, `1` has `”` and `“` (I wanted to put them on `2`
because that’s where `"` is, but `altgr+2` is already taken for `@`).

The reason I use the TECK’s function layer for the symbol layer instead of AltGr
is that it is more reliable. Some programs don’t recognize keyboard shortcuts
such as `ctrl+]` if you have to type `]` with AltGr. And putting something on
AltGr on the spacebar broke `shift+space` shortcuts. The same thing for the
arrow keys: Putting Home/End/PageUp/PageDown in their AltGr layers broke
shift+arrow, preventing text to be selected usinge the keyboard. Putting the
function keys in the AltGr layer seems to work fine, though.

Using the TECK’s function layer for symbols meant that I had to customize the
firmware. The firmware only supports rearranging the standard keys, making it
impossible to implement the symbol layer _only_ in firmware. All I could do was
putting _some_ (any) keys there, and then rebind them with software.

It turned out that there weren’t that many spare keys to put in it. F13–F24 are
available, but not enough. This meant that I had to sacrifice the Numpad keys. I
don’t have a numpad on neither the TECK nor the laptop anyway. However, if I
ever connect a regular keyboard with a numpad, I made sure that the numpad could
be at least potentially useful:

```
nl   /   *   ”“
 {   }   ^  ╔═╗
 (   )   |  ╚’‘
 [   ]   %  ╔═╗
═══$═══ f14 f13
```

`’‘` is on the same row as `'`, and `”“` is one the same row as `"`, which is
one way of remembering them.

`/` is `/` and `*` is `*` just because that makes `/` and `*` work
out-of-the-box on the TECK if I connected to any other computer.

`0`–`9` are symbols. I made sure to put all parentheses there, since they suck
to type on a Swedish keyboard. The remaining three symbols are the three
right-most symbols in the TECK symbol layer, from top to bottom.

I wanted both my TECK and my laptop keyboard to just work. I didn’t want to
switch layout each time I switched keyboard. I also wanted to be able to type on
my TECK on the rare occasions that I boot Windows, and don’t have access to my
XKB layout. Or when entering the BIOS. Or when my XKB layout isn’t activated in
login screen…

In previous attempts, I tried to change as little as possible in the firmware,
and do the most in XKB. Now, however, I try to do as much as possible in the
firmware.

In an earlier version, I took the liberty to add a second alt key, because it
always drives me insane only having one. However, now I’ve opted for making all
keys do exactly what their labels say. That’s because it has become important
for me that other people can use the laptop keyboard as well. The only
differences are:

- The `§½` key. Almost nobody ever use that key anyway, so it doesn’t matter.
- The `` ´` `` key. The two characters have been swapped. They are also no
  longer dead keys. I think that’s acceptable. People usually only use the dead
  acute accent to type é.
- The `^"~` (diaresis) key. Almost nobody ever use the dead diaresis. The keys
  are also no longer dead. I think that’s acceptable, too. People usually only
  use those symbols on their own, and almost never to put them above other
  letters.
- The Caps Lock key. I sometimes press it by mistake, which is annoying. Instead
  I’ve moved Escape there. It really helps when using Vim. Should anyone need
  Caps Lock I’ve replaced Scroll Lock with it. Who uses Scroll Lock? The laptop
  keyboard lacks a Scroll Lock key, so holding AltGr while pressing the former
  Caps Lock (now Escape) key also produces Caps Lock.
- The Print Screen key. On the laptop keyboard, at the usual Menu key spot there
  is a Print Screen key instead. I use the Menu key somewhat regularly, so I've
  rebound Print Screen to Menu. Ctrl+Menu, Shift+Menu and Super+Menu are used
  for the different Print Screen commands instead. (Requiring a modifier has the
  benefit of not taking screen shots by mistake.)
- The Insert key. I never use it. I've set it to the Compose key instead.
