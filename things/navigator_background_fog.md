## Navigator Background Fog

Enter a root shell:

```
adb shell
su
```

Enable Background Fog
![com oculus vrshell-20250830-193358](https://github.com/user-attachments/assets/47202860-3446-4dc0-864e-3929f499780e)

```
oculuspreferences --setc navigator_background_disabled false
am force-stop com.oculus.vrshell
```

Disable Background Fog
![com oculus vrshell-20250830-192933](https://github.com/user-attachments/assets/817d9256-e9ab-4c66-8efe-afb32359434b)

```
oculuspreferences --setc navigator_background_disabled true
am force-stop com.oculus.vrshell
```
This persists across reboots and is safe to use.
