# `Terraria World Parser`
Terraria 1.4.0.5 world parser in the Swift programing language

#### NOTE: Only Terraria 1.3.5.3 -1.4.0.5 is supported!

## Usage
This is a swift package. Add as a dependency in your project to use it. There is an experimental windows version available in the windows branch.
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

- [SwiftyBytes 0.2.1](https://github.com/Xenoxiluna/SwiftyBytes)

## References

- [TEdit World Parser](https://github.com/TEdit/Terraria-Map-Editor/blob/master/TEditXna/Terraria/World.FileV2.cs), an excellent source of data!
- [JS World Parser](https://github.com/cokolele/terraria-world-parser/)

## License

`Terraria World Parser` is licensed under the [MIT License](LICENSE)
