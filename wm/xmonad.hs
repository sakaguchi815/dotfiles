import XMonad
import XMonad.Util.EZConfig
import XMonad.Util.SpawnOnce
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.StatusBar
import XMonad.Hooks.StatusBar.PP
import XMonad.Layout.Spacing

main :: IO()
main = xmonad . xmobarProp $ myConfig

myConfig = def
	{ terminal = myTerminal
	, layoutHook = myLayout
	, startupHook = myStartupHook
	, modMask = myModMask
	}
	`additionalKeysP`
        [ ("M-p", spawn "rofi -show drun")
        , ("M-S-p", spawn "rofi -show p -modi p:~/.config/rofi/rofi-power-menu")
        , ("M-<Return>", spawn "alacritty")
        , ("M-q", kill)
        ]


myTerminal = "alacritty"
myModMask = mod4Mask
myBorderWidth = 3
myLayout = spacing 7 $ Tall 1 (3/100) (1/2) ||| Mirror (Tall 1 (3/100) (1/2)) ||| Full
myStartupHook = do
    spawnOnce "feh --bg-scale ~/Pictures/wallpaper.jpg"
    spawnOnce "xrandr --output HDMI-0 --mode 1920x1080 --rate 143.86"
    spawnOnce "dunst"
    spawnOnce "picom -b"
