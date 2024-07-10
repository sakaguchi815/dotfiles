import XMonad
import XMonad.Util.EZConfig
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.StatusBar
import XMonad.Hooks.StatusBar.PP

main :: IO()
main = xmonad . xmobarProp $ myConfig

myConfig = def
	{ terminal = myTerminal
	, startupHook = myStartupHook
	, modMask = myModMask
	}


myTerminal = "alacritty"
myModMask = mod4Mask
myBorderWidth = 3
myStartupHook = do
    spawn "feh --bg-scale ~/Pictures/wallpaper.jpg"
