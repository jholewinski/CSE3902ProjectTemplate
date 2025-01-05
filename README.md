# CSE 3902 Project Template

This repository contains a skeleton MonoGame project to use for the CSE 3902
group projects. It is a copy of the MonoGame DesktopGL template with some
additions such as VSCode tasks for making it easier to build/edit MonoGame
content on macOS.

> [!IMPORTANT]
> When creating your group project, make sure to replace this file with your
> own `README.md` file with the required contents.

## Using this Template

This template is meant to be forked. To create your own group project, fork
this project into your own GitHub repository. Easy as that!

## Features of this Template

### MonoGame Package Version

This template is locked to MonoGame 3.8.2.1105. All teams will be using this
known-good version of MonoGame to prevent issues and inconsistencies related
to the MonoGame version.

### macOS Support

This template includes helper scripts and VSCode tasks to help edit/build
MonoGame content on macOS.

### Visual Studio Code Scripts

The following VSCode tasks are provided to help work with MonoGame:

- `Build Game`: Build entire game project. This is the default build task.
- `Build Game Content`: Build MonoGame content files. This includes special
  handling for macOS.
- `Edit Game Content`: Open the MonoGame Content Editor. This includes special
  handling for macOS.

In almost all cases, the project can be built by running the `Build Game` task,
which can be started with <kbd>Ctrl</kbd> + <kbd>Shift</kbd> + <kbd>B</kbd> (
or <kbd>Cmd</kbd> + <kbd>Shift</kbd> + <kbd>B</kbd> on macOS). For opening the
content editor, use <kbd>Ctrl</kbd> + <kbd>Shift</kbd> + <kbd>P</kbd> (or
<kbd>Cmd</kbd> + <kbd>Shift</kbd> + <kbd>P</kbd> on macOS), select `Tasks: Run
Task`, then select `Edit Game Content`.