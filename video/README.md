# `video` directory

This directory keeps various video media files and subtitle files.

## Structure

```
.
├── Empty_Angkor_Wat
│   ├── en.ass
│   ├── in.mp4
│   ├── ja.ass
│   └── Makefile
└── Makefile
```

### `in.mp4`

Each sub-directory contains an original video file, `in.mp4`. This is the base
video file without subtitles. When creating `in.mp4`, the better quality the
base file is, the better because when adding subtitles, the video quality will
be degraded.

### `*.ass`

`.ass` file contains subtitles, and their timing. Create a `.ass` file for
each language, including English.

To create `.ass` file, install [aegisub](http://www.aegisub.org/). The process
to create `.ass` file is fairly easy.
[Editing Subtitles](http://docs.aegisub.org/3.2/Editing_Subtitles/) in the
official documentation explains how.

### `Makefile` in each directory

This is the file that _burns_ subtitles to the original movie. To
automatically create video files with subtitles, this file must be there.

## Creating a new video

1. Shoot what you want to film
1. Create a sub-directory with something that describe your video. Say, if
it's about yourself, `About_Me`. Do NOT use spaces in directory name.
1. Create a `.mp4` file. Again, do NOT use spaces in the file name
1. Save the `.mp4` file in the directory
1. Create `Makefile` in the directory. The file content is a single line,
   `.include <video.mk>` only.
1. Create English version of `.ass` file. The file name MUST be `en.ass`.

That's it!
