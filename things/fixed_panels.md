## Fixed Panel Scaling

Enter a root shell:

```
adb shell
su
```

Enable Panel Scaling
![com oculus vrshell-20250831-110316](https://github.com/user-attachments/assets/24ea4683-dd91-4322-a826-915068ae2557)

```
oculuspreferences --setc panel_scaling true
am force-stop com.oculus.vrshell
```

Disable Panel Scaling
![com oculus vrshell-20250831-110035](https://github.com/user-attachments/assets/aee629e5-62ca-46b9-89ed-35816d572c2a)

```
oculuspreferences --setc panel_scaling false
am force-stop com.oculus.vrshell
```
This persists across reboots and is safe to use.
