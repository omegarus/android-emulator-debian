# android-emulator-debian

```sh
$ docker pull mdholloway/android-emulator-debian:latest
$ cd <project root>
$ docker run --privileged -d -P -v `pwd`:/workspace --name android mdholloway/android-emulator-debian
$ docker exec android <your commands here>
```

## Notes
* Uses Debian Jessie
* Includes only SDK platform levels 24 & 25
* Includes only the API 24 x86 and armeabi-v7a system images
* Currently hard-coded to run the armeabi-v7a one for cross-platform compatibility
