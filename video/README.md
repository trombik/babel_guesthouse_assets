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

## Translating subtitles

You can help our translation work. This section describes how.

### Requirements

Before translating, the following requirements must be met.

- You have `git` installed on your local machine
  (download `git` from https://git-scm.com/downloads, and follow the
  instruction at [Setting up Git](https://help.github.com/en/github/getting-started-with-github/set-up-git#setting-up-git))
- A text editor (`vim`, `emacs`, `notepad.exe`, etc). If you don't have one,
  [Atom editor](https://flight-manual.atom.io/getting-started/sections/installing-atom/)
  is recommended.
- GitHub account (if you don't have one, [create one](https://github.com/join))

### Workflow of translation

Here is the workflow of translation.

1. Fork the repository ([how?](https://help.github.com/en/github/getting-started-with-github/fork-a-repo))
1. Create a branch for your work ([how?](https://help.github.com/en/desktop/contributing-to-projects/creating-a-branch-for-your-work)).
1. Copy `en.ass` file to `$LANGUAGE.ass`. `$LANGUAGE` should be replaced with
   [ISO 639-1 language code](https://en.wikipedia.org/wiki/List_of_ISO_639-1_codes),
   such as `en` for English, `th` for Thai.
1. Translate subtitles in the file. You should not modify anything other than
   subtitle texts!
1. Commit the file ([how?](https://help.github.com/en/github/managing-files-in-a-repository/adding-a-file-to-a-repository-using-the-command-line)).
1. Push your branch ([how?](https://help.github.com/en/github/using-git/pushing-commits-to-a-remote-repository))
1. Create a PR ([how?](https://help.github.com/en/github/collaborating-with-issues-and-pull-requests/creating-a-pull-request))

That's it! We will contact you after you create a PR.
