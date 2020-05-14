
add_executable(TestTerrariaWorldParser
  TerrariaWorldParserTests.swift
  XCTestManifests.swift)
target_link_libraries(TestTerrariaWorldParser PRIVATE
  TerrariaWorldParser)

add_test(NAME TestTerrariaWorldParser
  COMMAND TestTerrariaWorldParser)

