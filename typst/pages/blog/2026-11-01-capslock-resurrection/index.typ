#let metadata = (
	title: [CapsLock Resurrection],
	author: "Lancy",
	description: [Make CapsLock great again],
	keywords: (""),
	date: datetime(year: 2026, month: 11, day: 1),
)

== CapsLock is dead

I have almost never used the `<Caps>` key in my entire history of using keyboards.
The reason is simple: whenever I want to type uppercases, I have `<Shift>`.
Actually, it takes less keystrokes for `<Shift>` to type uppercases than `<Caps>`.
Suppose you are to type a uppercase string with length $n$, where $n in NN_+$.
For `<Caps>`, you need to tap it, type the string, then tap it again. That's $n + 2$ keystrokes.
But for `<Shift>`, you only need to press it down, hold it while you type the whole string,
then release, which is $n + 1$ keystrokes.
So yes, `<Caps>` is dead for me.

== The key formerly known as Ctrl

But things weren't always like this.
In the 80s, what `<Caps>` is today was actually `<Ctrl>`.
And right above `<Ctrl>`, there was `<Esc>`, as shown in the photo below.

#figure(
	caption: [A photo of ADM-3A],
	image("assets/adm-3a.jpg", width: 100%),
)

This explains why text editors like Vim and Emacs have their keybinds orchestrated with these keys.
They can be easily reached with you left hand's pinky finger, which have basically no other use.
For someone like me who uses NeoVim a lot, the old keyboard layout is much better than current ones.

There is a way, actually, to remap the `<Caps>` key on your keyboard
to `<Esc>` when tapped alone and `<Ctrl>` when held with other keys.
This trick have existed for a long time.
I personally, have been using it also for a long time, with a bit of my own flavor:
There is no legal escape sequencee for `<Ctrl> + <;>`,
so I remapped `<Caps> + <;>` to `<Ctrl> + <A>` on top of all those.
Why `<A>`? One may ask. Because `<A>` is the only key you can't easily press together with `<Caps>`.
Also because I use tmux and have the prefix key set as `<Ctrl> + <A>`.

At first, I had it set up on my Linux only, since Linux is the best OS for customizations.
Then I got used to it and later set it up on my dual-booted Windows.
Then again I bought a MacBook, and I had to come up with a macOS setup as well.

== The actual guide

Here's the steps to set this up on all three platforms.

=== For Linux

The setup for Linux is the easiest.
I used a tool called #link("https://github.com/rvaiya/keyd")[keyd].
To set up our magic `<Caps>` with keyd, follow these steps:
+ Install keyd following its #link("https://github.com/rvaiya/keyd#packages")[installation guide].
+ Perform the steps in its #link("https://github.com/rvaiya/keyd#quickstart")[quickstart guide],
	but with following config file instead:

```conf
[ids]

*

[main]

# Make <Caps> behave like <Esc> when tapped and <Ctrl> when held.
capslock = overload(capslock, esc)

[capslock:C]

# Make <Caps-;> behave like <Ctrl-a> (for GNU screen and tmux).
; = C-a
```

=== For Windows

TODO

=== For macOS

TODO
