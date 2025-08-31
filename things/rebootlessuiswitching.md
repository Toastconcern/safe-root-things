## Rebootless UI Switching

Enter a root shell:

```
adb shell
su
```

Enable Dock UI
![com oculus vrshell-20250831-120856](https://github.com/user-attachments/assets/535fd9f1-a420-4ea7-a94b-c64dcdce324f)

```
oculuspreferences --setc debug_navigator_state 0
am force-stop com.oculus.vrshell
```

Enable Navigator UI
![com oculus vrshell-20250830-192933](https://github.com/user-attachments/assets/817d9256-e9ab-4c66-8efe-afb32359434b)

```
oculuspreferences --setc debug_navigator_state 1
am force-stop com.oculus.vrshell
```
This persists across reboots and is safe to use.
