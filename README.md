# extract-apks 📦

Simple utility to extract [APK](https://developer.android.com/guide/components/fundamentals) files from your Android device.

## Features 🧰

- Extract installed third-party packages
- Specify which packages to extract

## Installation ⬇

Clone this repo:

```console
git clone https://github.com/harmony5/extract-apks.git
```

Then add the `extract-apks` directory to your PATH:

```console
echo "export PATH=$(pwd)/extract-apks:\$PATH >> ~/.bashrc"
```

## Usage 🛠

First, make sure your device is **connected through USB** to the computer.

Then, call the script without any arguments to extract all third-party packages installed on the device:

```console
$ extract_apk
Extracting com.package1 files
/path/to/com.package1/c.... 40.1 MB/s (40100037 bytes in 1.001s)
Extracting com.package2 files
/path/to/com.package2/c.... 53.8 MB/s (53800172 bytes in 1.031s)
...
Extracting com.packageN files
/path/to/com.packageN/c.... 37.4 MB/s (37400098 bytes in 0.996s)
```

Or specify which packages you want to extract:

```console
$ extract_apk discord whatsapp
Extracting com.whatsapp files
/data/app/~~s0m3g1bb3r15h==/c.... 33.9 MB/s (35585326 bytes in 1.001s)
Extracting com.discord files
/data/app/~~s0m30th3rg1bb3r15h==/c... 35.9 MB/s (104040041 bytes in 2.762s)
```

The script will create a directory for every extracted package, inside which will be saved the extracted APK files.

## Contributing ✍

[Pull requests](https://github.com/harmony5/extract-apks/pulls/new) are welcome. For major changes, [bug fixes](https://github.com/harmony5/extract-apks/issues/new) or [feature requests](https://github.com/harmony5/extract-apks/issues/new), please open an issue first to discuss what you would like to change.

## License 📜⚖

This project uses the [GNU AGPLv3](https://choosealicense.com/licenses/agpl-3.0/) license.
