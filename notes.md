This file is mainly for myself, to aid my memory. I doubt it being interesting
or useful to anyone else.

The laptop layout:

    esc f1 f2 f3 f4 f5 f6 f7 f8 f9 f10 f11 f12 prt cmp ins del      /\  –—
     :; `1! @2" £3# $4¤ €5%  6& {7/ [8( ]9) }0= \+?  é  ══bs══  ”“  ◰   ◳
    ═tab  q   w   e   r   t   y   u   i   o   p   å  ~@^ ═╦ent  ↞   #   ↠
    ═cl══  a   s   d   f   g   h   j   k   l   ö   ä   '* ╚══╝  ’‘ f*   ◲
    sft |<>  z   x   c   v   b   n   m   ,!  .?  -_ ════sft═══  ↟  f14  ↡
    ctl fn  sup alt ═════════␣═════════ alt agr ctl ←  ↑  ↓  → men ══f13══

é is where the dead acute would have been (é is the only time I use acute).

’‘ is on the same row as ', and ”“ is one the same row as ", which is one way of
remembering them.

:; should ideally have been on . and , just like the standard Swedish layout,
but I didn’t manage to. The :; had to go somewhere. At least its on the same
hand as on the TECK.

I took the liberty to add a second alt key, because it always drives me insane
only having one. I wanted a second altgr key, too, but you can’t get it all. It
doesn’t matter that the second alt key pushed the altgr key to a worse
position—it sucks anyway. At least I’m able to type symbols on the laptop
keyboard.

The §½ key is missing in my layout, but I don’t care. Such a weird key. So is
the dead '\` key. I’ll use the é key and the compose key instead. \` is also
present on altgr-1, close to the en-US position, for programming.

The key to the right of å just happens to @. No particular reason. I don’t miss
the default " diaresis.

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

It turned out that there weren’t that many spare keys to put in it. Some (such
as high F\* keys) I wasn’t able to rebind in XKB. This meant that I had to
sacrifice the Numpad keys. I dont’t have a numpad on the TECK anyway, but on my
laptop keyboard I do. However, most of the time I flip Num Lock on the laptop
keyboard in order to acces Home and End.

I wanted both my TECK and my laptop keyboard to just work. I didn’t want to
switch layout each time I switched keyboard. I also wanted to be able to type on
my TECK on the rare occasions that I boot Windows, and don’t have access to my
XKB layout. Or when entering the BIOS. Or when my XKB layout isn’t activated in
login screen…

In previous attempts, I tried to change as little as possible in the firmware,
and do the most in XKB. Now, however, I try to do as much as possible in the
firmware.
