# WORK IN PROGRESS
# `Terraria World Parser`
Terraria 1.4.0.5 world parser in the Swift programing language. This is the windows branch. You can find binaries within the Repo.

#### NOTE: Only Terraria 1.3.5.3 -1.4.0.5 is supported!

## Building on Windows using CMake and Ninja!
Install the required software [here](https://github.com/compnerd/swift-build/blob/master/docs/GettingStartedWindows.md)

Run the following:

```cmd
git clone https://github.com/Xenoxiluna/Terraria-World-Parser.git /SourceCache/Terraria-World-Parser
cd C:\SourceCache\Terraria-World-Parser
git checkout windows
```

```cmd
set SDKROOT=%SystemDrive%/Library/Developer/Platforms/Windows.platform/Developer/SDKs/Windows.sdk
set SWIFTFLAGS=-sdk %SDKROOT% -I %SDKROOT%/usr/lib/swift -L %SDKROOT%/usr/lib/swift/windows
```

```cmd
"%ProgramFiles%/CMake/bin/cmake.exe"  ^
  -B /BinaryCache/TWPRun          ^
  -D BUILD_SHARED_LIBS=YES            ^
  -D CMAKE_BUILD_TYPE=Release         ^
  -D CMAKE_Swift_FLAGS="%SWIFTFLAGS%" ^
  -G Ninja                            ^
  -S /SourceCache/Terraria-World-Parser

cmake --build /BinaryCache/TWPRun
```

## Usage
An example can be found in example.swift

`import TerrariaWorldParser`

You can then open a world file by the following:

```swift
let path: String = "/Users/Xenoxiluna1/Desktop/test2.wld"
let nsData = try Data(contentsOf: URL(fileURLWithPath: path))
var world: WorldFile = WorldFile(data: nsData)
try world.parseWorldFile()
```

#### The world version is expected to be 194 or higher. Please be aware that this parser will fail if the world does not meet that condition.

## Dependencies

- [SwiftyBytes 0.2.X](https://github.com/Xenoxiluna/SwiftyBytes)

## References

- [TEdit World Parser](https://github.com/TEdit/Terraria-Map-Editor/blob/master/TEditXna/Terraria/World.FileV2.cs), an excellent source of data!
- [JS World Parser](https://github.com/cokolele/terraria-world-parser/)

## License

`Terraria World Parser` is licensed under the [MIT License](LICENSE)
