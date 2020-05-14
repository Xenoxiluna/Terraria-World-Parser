# WORK IN PROGRESS
# `Terraria World Parser`
Terraria 1.3.5.3 world parser in the Swift programing language. This is the windows branch. You can find binaries within the Repo.

## Building on Windows using CMake and Ninja!
Install the required software [here](https://github.com/compnerd/swift-build/blob/master/docs/GettingStartedWindows.md)

Run the following:

set SDKROOT=%SystemDrive%/Library/Developer/Platforms/Windows.platform/Developer/SDKs/Windows.sdk
set SWIFTFLAGS=-sdk %SDKROOT% -I %SDKROOT%/usr/lib/swift -L %SDKROOT%/usr/lib/swift/windows

"%ProgramFiles%/CMake/bin/cmake.exe"  ^
  -B /BinaryCache/TWPRun          ^
  -D BUILD_SHARED_LIBS=YES            ^
  -D CMAKE_BUILD_TYPE=Release         ^
  -D CMAKE_Swift_FLAGS="%SWIFTFLAGS%" ^
  -G Ninja                            ^
  -S /SourceCache/TerrariaWorldParser

cmake --build /BinaryCache/TWPRun

## Usage
This is a swift package. Add as a dependency in your project to use it.
An example can be found in example.swift

`import TerrariaWorldParser`

You can then open a world file by the following:

```
let path: String = "/Users/Xenoxiluna1/Desktop/test2.wld"
let nsData = try Data(contentsOf: URL(fileURLWithPath: path))
var world: WorldFile = WorldFile(data: nsData)
```
## Dependencies

- [SwiftyBytes 0.2.0](https://github.com/Xenoxiluna/SwiftyBytes)

## References

- [TEdit World Parser](https://github.com/TEdit/Terraria-Map-Editor/blob/master/TEditXna/Terraria/World.FileV2.cs), an excellent source of data!
- [JS World Parser](https://github.com/cokolele/terraria-world-parser/)

## License

`Terraria World Parser` is licensed under the [MIT License](LICENSE)
