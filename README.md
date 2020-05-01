# WORK IN PROGRESS
# `Terraria World Parser`
Terraria 1.3.5.3 world parser in the Swift programing language

## Usage
An example can be found in example.swift

`import TerrariaWorldParser`

You can then open a world file by the following:

```
let path: String = "/Users/Xenoxiluna1/Desktop/test2.wld"
var world: WorldFile = WorldFile(path: path)
```
## Dependencies

- [BinarySwift](https://github.com/Szaq/BinarySwift)

## References

- [TEdit World Parser](https://github.com/TEdit/Terraria-Map-Editor/blob/master/TEditXna/Terraria/World.FileV2.cs), an excellent source of data!
- [JS World Parser](https://github.com/cokolele/terraria-world-parser/)

## License

`Terraria World Parser` is licensed under the [MIT License](LICENSE.txt)
