
add_subdirectory(Data)
add_subdirectory(Exceptions)

add_library(TerrariaWorldParser
  Data/Types/BrickStyle.swift
  Data/Types/FileType.swift
  Data/Types/LiquidType.swift
  Data/Types/TileType.swift
  Data/Types/CreativePower.swift
  Data/TownManager.swift
  Data/TileEntity.swift
  Data/Chest.swift
  Data/Item.swift
  Data/NPC.swift
  Data/PressurePlate.swift
  Data/Tile.swift
  Data/Sign.swift
  Data/Bestiary.swift
  Exceptions/ParseError.swift
  WorldFile.swift)
target_link_libraries(TerrariaWorldParser PRIVATE
  SwiftyBytes)
target_compile_options(TerrariaWorldParser PRIVATE
  $<$<BOOL:BUILD_TESTING>:-enable-testing>)
set_target_properties(TerrariaWorldParser PROPERTIES
  INTERFACE_INCLUDE_DIRECTORIES ${CMAKE_Swift_MODULE_DIRECTORY})

install(TARGETS TerrariaWorldParser
  ARCHIVE DESTINATION lib
  LIBRARY DESTINATION lib
  RUNTIME DESTINATION bin
  COMPONENT lib)
