# Rename multiple files

[![MIT License](https://img.shields.io/github/license/peter-stuhlmann/RenameFiles.svg)](https://github.com/peter-stuhlmann/RenameFiles/blob/master/LICENSE)
![Code size](https://img.shields.io/github/languages/code-size/peter-stuhlmann/RenameFiles.svg)
[![open issues](https://img.shields.io/github/issues/peter-stuhlmann/RenameFiles.svg)](https://github.com/peter-stuhlmann/RenameFiles/issues?q=is%3Aopen+is%3Aissue)
[![closed issues](https://img.shields.io/github/issues-closed/peter-stuhlmann/RenameFiles.svg)](https://github.com/peter-stuhlmann/RenameFiles/issues?q=is%3Aissue+is%3Aclosed)

---

With this script you can give multiple files a common name. They will be numbered automatically. You can only change the file name, not the file extension.

**Syntax:** Script file, followed by the file extension and the new name.

```
./rename extension new-name [-flag]
```

## Example

You can rename all pictures from your last holiday:

- \_DSC0001.jpg
- \_DSC0002.jpg
- \_DSC0003.jpg
- \_DSC0004.jpg

Now give all jpg files in the current directory the name "Barcelona".

```
./rename jpg Barcelona
```

- Barcelona-0001.jpg
- Barcelona-0002.jpg
- Barcelona-0003.jpg
- Barcelona-0004.jpg

Before you rename the files, you can sort them, e.g. by date. To do this, add the corresponding flag to the command's third position.

```
./rename jpg Barcelona -t
```

Other sorting options:
`-1` : by name (default value)
`-S` : by size
`-t` : by date
`-Ut` : by date of creation
`-ut` : by last access time
`-X` : by extension

Add an _r_ to the flags to reverse the order, e.g. `-tr` - sort by date in reverse order.

**Caution!** If you want to rename more than 9,999 files at the same time, you have to adapt the script. Otherwise, excess files will be irretrievably deleted.

You can also prefix the original title with the new name by appending the -e flag to the command.
In this case, a previous sorting does not make sense since no numbering is added. Therefore, please do not combine the flags `-e` and e.g. `-t`, as this leads to conflicts.

```
./rename jpg Barcelona -e
```

- Barcelona-\_DSC0001.jpg
- Barcelona-\_DSC0002.jpg
- Barcelona-\_DSC0003.jpg
- Barcelona-\_DSC0004.jpg

---

Licensed under [MIT license](https://github.com/peter-stuhlmann/RenameFiles/blob/master/LICENSE) by [Peter R. Stuhlmann](https://peter-stuhlmann-webentwicklung.de).
