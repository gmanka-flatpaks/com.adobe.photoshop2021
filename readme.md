### adobe photoshop flatpak

by default, the virtual desktop mode is disabled, if you have graphical bugs, you can enable the virtual desktop using the environment variable:

```bash
flatpak run --env=DESKTOP_SIZE=1920x1080 com.adobe.photoshop2021
sudo flatpak override --env=DESKTOP_SIZE=1920x1080 com.adobe.photoshop2021
```

### special thanks to

- @grisha765 for writing [manifest](https://github.com/grisha765/my_flatpak_repo/tree/main/io.github.grisha765.Photoshop)
- https://github.com/LinSoftWin/Photoshop-CC2022-Linux

