
add_subdirectory(Exceptions)
add_subdirectory(Extensions)

add_library(SwiftyBytes
  Exceptions/SwiftyBytesExceptions.swift
  Extensions/DataExtensions.swift
  Extensions/NumberExtensions.swift
  Extensions/StringExtensions.swift
  BinaryReadableData.swift
  BinaryReader.swift
  BinaryWriter.swift)
target_compile_options(SwiftyBytes PRIVATE
  $<$<BOOL:BUILD_TESTING>:-enable-testing>)
set_target_properties(SwiftyBytes PROPERTIES
  INTERFACE_INCLUDE_DIRECTORIES ${CMAKE_Swift_MODULE_DIRECTORY})

install(TARGETS SwiftyBytes
  ARCHIVE DESTINATION lib
  LIBRARY DESTINATION lib
  RUNTIME DESTINATION bin
  COMPONENT lib)
