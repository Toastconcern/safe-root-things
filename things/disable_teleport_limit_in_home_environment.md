## Disable teleport limit in home environment


Enter a root shell:

```
adb shell
su
```

disable teleporting limit with the following command as root:

```
oculuspreferences --setc shell_teleport_anywhere false
am force-stop com.oculus.vrshell
```

re-enable teleporting limit with the following command as root:

```
oculuspreferences --setc shell_teleport_anywhere true
am force-stop com.oculus.vrshell
```
This persists across reboots and is safe to use.
