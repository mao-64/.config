# Copyright (c) 2010 Aldo Cortesi
# Copyright (c) 2010, 2014 dequis
# Copyright (c) 2012 Randall Ma
# Copyright (c) 2012-2014 Tycho Andersen
# Copyright (c) 2012 Craig Barnes
# Copyright (c) 2013 horsik
# Copyright (c) 2013 Tao Sauvage
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in
# all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.

from typing import List  # noqa: F401

from libqtile import bar, layout, widget 
from libqtile.config import Click, Drag, Group, Key, Match, Screen 
from libqtile.lazy import lazy 
from libqtile.utils import guess_terminal

mod = "mod4"
terminal = guess_terminal()

color = [["#3b4252"], # 0  black
         ["#bf616a"], # 1  red
         ["#a3be8c"], # 2  green
         ["#ebcb8b"], # 3  yellow
         ["#81a1c1"], # 4  blue
         ["#b48ead"], # 5  magenta
         ["#88c0d0"], # 6  cyan
         ["#e5e9f0"], # 7  white
         ["#4c566a"], # 8  black
         ["#bf616a"], # 9  red
         ["#a3be8c"], # 10 green
         ["#ebcb8b"], # 11 yellow
         ["#81a1c1"], # 12 blue
         ["#b48ead"], # 13 magenta
         ["#8fbcbb"], # 14 cyan
         ["#eceff4"], # 15 white
         ["#2e3440"], # 16 background
         ["#d8dee9"]] # 17 foreground

keys = [
    Key([mod], "h", lazy.layout.shrink_main()),
    Key([mod], "l", lazy.layout.grow_main()),
    Key([mod], "j", lazy.layout.down(), desc="Move focus down"),
    Key([mod], "k", lazy.layout.up(), desc="Move focus up"),

    Key([mod, "shift"], "j", lazy.layout.shuffle_down(), desc="Move window down"),
    Key([mod, "shift"], "k", lazy.layout.shuffle_up(), desc="Move window up"),

    Key([mod], "Tab", lazy.next_layout(), desc="Toggle between layouts"),
    Key([mod, "shift"], "q", lazy.window.kill(), desc="Kill focused window"),

    Key([mod, "control"], "r", lazy.restart(), desc="Restart Qtile"),
    Key([mod, "control"], "q", lazy.shutdown(), desc="Shutdown Qtile"),
]

groups = [Group(i) for i in "123456789"]

for i in groups:
    keys.extend([
        # mod1 + letter of group = switch to group
        Key([mod], i.name, lazy.group[i.name].toscreen(),
            desc="Switch to group {}".format(i.name)),

        # mod1 + shift + letter of group = switch to & move focused window to group
        Key([mod, "shift"], i.name, lazy.window.togroup(i.name, switch_group=True),
            desc="Switch to & move focused window to group {}".format(i.name)),
        # Or, use below if you prefer not to switch to that group.
        # # mod1 + shift + letter of group = move focused window to group
        # Key([mod, "shift"], i.name, lazy.window.togroup(i.name),
        #     desc="move focused window to group {}".format(i.name)),
    ])

layouts = [
    layout.MonadTall(
            margin=10,
            change_size=30,
            border_focus="#81a1c1",
            border_normal="#2e3440",
            new_client_position="top",
            ),
    layout.Tile(margin=5, ratio=0.5, ratio_increment=0.05),
    layout.Columns(border_focus_stack='#d75f5f', num_columns=2),
    layout.Max(),
    # Try more layouts by unleashing below layouts.
     layout.Stack(num_stacks=2),
    # layout.Bsp(),
    # layout.Matrix(),
     #layout.MonadTall(margin=10),
    # layout.MonadWide(),
    # layout.RatioTile(),
    # layout.Tile(),
    # layout.TreeTab(),
    # layout.VerticalTile(),
    # layout.Zoomy(),
]

widget_defaults = dict(
    font='Source Code Pro',
    fontsize=18,
    padding=5,
    background = color[16],
)
extension_defaults = widget_defaults.copy()

screens = [
    Screen(
        top=bar.Bar(
            [
                widget.TextBox(
                        "",
                        fontsize=20,
                        background = color[6],
                    ),
                widget.TextBox(
                        "",
                        foreground = color[6],
                        fontsize=22,
                        padding=0,
                    ),
                widget.GroupBox(
                        highlight_method = "line",
                        highlight_color="#4c566a"
                    ),
                widget.Prompt(),
                widget.WindowName(),
                widget.Chord(
                    chords_colors={
                        'launch': ("#ff0000", "#2e3440"),
                    },
                    name_transform=lambda name: name.upper(),
                ),
#                widget.TextBox("default config", name="default"),
#                widget.TextBox("Press &lt;M-r&gt; to spawn", foreground="#d75f5f"),
                widget.TextBox(
                        "",
                        foreground = color[6],
                        fontsize=22,
                        padding=0,
                    ),
                widget.CurrentLayout(
                        background = color[6],
                    ),
                widget.TextBox(
                        "",
                        foreground = color[12],
                        background = color[6],
                        fontsize=22,
                        padding=0,
                    ),
                widget.Clock(
                        format='%Y-%m-%d %a %I:%M %p',
                        background = color[12],
                    ),
                widget.TextBox(
                        "",
                        foreground = color[6],
                        background = color[12],
                        fontsize=22,
                        padding=0,
                    ),
                widget.Systray(
                        background = color[6],
                    ),
                widget.TextBox(
                        "",
                        foreground = color[12],
                        background = color[6],
                        fontsize=22,
                        padding=0,
                    ),
                widget.Clock(
                        format='%I:%M',
                        background = color[12],
                    ),
            ],
            24,
        ),
    ),
]

# Drag floating layouts.
mouse = [
    Drag([mod], "Button1", lazy.window.set_position_floating(),
         start=lazy.window.get_position()),
    Drag([mod], "Button3", lazy.window.set_size_floating(),
         start=lazy.window.get_size()),
    Click([mod], "Button2", lazy.window.bring_to_front())
]

dgroups_key_binder = None
dgroups_app_rules = []  # type: List
main = None  # WARNING: this is deprecated and will be removed soon
follow_mouse_focus = True
bring_front_click = False
cursor_warp = False
floating_layout = layout.Floating(float_rules=[
    # Run the utility of `xprop` to see the wm class and name of an X client.
    *layout.Floating.default_float_rules,
    Match(wm_class='confirmreset'),  # gitk
    Match(wm_class='makebranch'),  # gitk
    Match(wm_class='maketag'),  # gitk
    Match(wm_class='ssh-askpass'),  # ssh-askpass
    Match(title='branchdialog'),  # gitk
    Match(title='pinentry'),  # GPG key password entry
])
auto_fullscreen = True
focus_on_window_activation = "smart"

# XXX: Gasp! We're lying here. In fact, nobody really uses or cares about this
# string besides java UI toolkits; you can see several discussions on the
# mailing lists, GitHub issues, and other WM documentation that suggest setting
# this string if your java app doesn't work correctly. We may as well just lie
# and say that we're a working one by default.
#
# We choose LG3D to maximize irony: it is a 3D non-reparenting WM written in
# java that happens to be on java's whitelist.
wmname = "LG3D"
