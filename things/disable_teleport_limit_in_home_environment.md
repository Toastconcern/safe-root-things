## Disable teleport limit in home environment


Enter a root shell:

```
adb shell
su
```

disable teleporting limit with the following command as root:

```
oculuspreferences shell_teleport_anywhere true
```

re-enable teleporting limit with the following command as root:

```
oculuspreferences shell_teleport_anywhere false
```
This persists across reboots and is safe to use.
