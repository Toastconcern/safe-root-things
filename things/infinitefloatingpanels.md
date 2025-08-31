## Infinite Floating Panels


Enter a root shell:

```
adb shell
su
```

Enable Infinite Floating Panels:

```
oculuspreferences --setc debug_infinite_spatial_panels_enabled true
am force-stop com.oculus.vrshell
```

Disable Infinite Floating Panels:

```
oculuspreferences --setc debug_infinite_spatial_panels_enabled false
am force-stop com.oculus.vrshell
```
This persists across reboots and is safe to use.
