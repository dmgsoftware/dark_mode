# Dark Mode Signal
Provides a global DarkMode node which generates a signal when dark mode is turned on or off. Dark mode is checked every 1 second by default.

## Connect to Signal
```gdscript
DarkMode.dark_mode_changed.connect(func(is_dark_mode):
   print("Is dark mode: ", is_dark_mode)
)
```

## Is dark mode enabled?
Also provides an alternative to DisplayServer.is_dark_mode() with:
```gdscript
DarkMode.is_dark_mode()
```

## Altering polling interval
If you would prefer to poll for a change in dark mode more or less often than every 1 second:

```gdscript
# once every 2 seconds
DarkMode.polling_interval = 2.0
```

Alternatively, the interval may be changed via the GUI Inspector on the global DarkMode node.