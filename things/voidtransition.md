## Transition


Enter a root shell:

```
adb shell
su
```

Enable immersive transition:

```
oculuspreferences --setc shell_immersive_transitions_enabled true
am force-stop com.oculus.vrshell
```

Disable immersive transistion

```
oculuspreferences --setc shell_immersive_transitions_enabled false
am force-stop com.oculus.vrshell
```
This persists across reboots and is safe to use.
