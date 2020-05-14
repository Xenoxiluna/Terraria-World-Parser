
add_executable(TWPRun
  main.swift)
target_link_libraries(TWPRun PRIVATE
  TerrariaWorldParser)
set_target_properties(TWPRun PROPERTIES
  Swift_LANGUAGE_VERSION 5)

install(TARGETS TWPRun
  DESTINATION bin
  COMPONENT exe)

