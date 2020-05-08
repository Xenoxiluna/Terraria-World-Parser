# WORK IN PROGRESS
# `Terraria World Parser`
Terraria 1.3.5.3 world parser in the Swift programing language

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
