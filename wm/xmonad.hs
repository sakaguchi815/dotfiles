import XMonad
import XMonad.Util.EZConfig
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
        , ("M-<Return>", spawn "alacritty")
        ]


myTerminal = "alacritty"
myModMask = mod4Mask
myBorderWidth = 3
myLayout = spacing 7 $ Tall 1 (3/100) (1/2) ||| Mirror (Tall 1 (3/100) (1/2)) ||| Full
myStartupHook = do
    spawn "feh --bg-scale ~/Pictures/wallpaper.jpg"
