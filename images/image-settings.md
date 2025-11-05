# Image Settings

Commands to facilitate the creation of [GIFs](https://en.wikipedia.org/wiki/GIF) (Graphics Interchange Format) and other images.

## NetLogo General Settings

- Theme: Light
- Screen resolution: 1920x1080

- **Turn off Night Light mode**!
- Resize the window (see *Window Size* settings)
- No scrollbars (horizontal or vertical)
- Command center: closed
- No `nls` script visible
- *View updates* enabled
- Maintain default settings

## Window Size

1. Install `wmctrl` to manage windows (if not already installed).
2. Run:

LogoClim:

```bash
#gravity,x,y,width,height
wmctrl -r NetLogo -e 0,112,75,1696,807
```

Logônia:

```bash
# gravity, x, y, width, and height
wmctrl -r NetLogo -e 0,240,120,1440,726
```

## GIF Settings

Use [GIMP](https://www.gimp.org/) to edit GIFs.

### MP4 to GIF

See: <https://gist.github.com/danielvartan/80b5261572f0f4d4a660f830178695f2>.

1. Install `FFMEG` (if not already installed).
2. Run:

```bash
ffmpeg -i input.mp4 -r 10 -loop 0 output.gif
```

### PNG to GIF

1. Install `ImageMagick` (if not already installed).
2. Run:

```bash
magick -delay 60 -loop 0 *.png output.gif
```
