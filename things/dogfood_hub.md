## Dogfood hub

![screenshot of Dogfood hub app](https://github.com/user-attachments/assets/9844c307-d7f5-4e80-aaab-752b699968a6)

There's not much you can do in this panel, but it's neat to see.

Enter a root shell:

```
adb shell
su
```

First, enable DeviceConfig overrides.

```
magisk resetprop ro.build.type userdebug
stop
start
```

Wait for device to restart, then set override to trusted user:

```
am broadcast -a oculus.intent.action.DC_OVERRIDE --esa config_param_value oculus_systemshell:oculus_is_trusted_user:true
stop
start
```

After the restart, there should be a new app called "Dogfood hub". If it doesn't show up, manually launch it with

```
am start com.oculus.vrshell/com.oculus.panelapp.dogfood.DogfoodMainActivity
```
