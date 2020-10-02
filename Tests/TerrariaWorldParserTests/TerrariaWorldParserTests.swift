import XCTest
@testable import TerrariaWorldParser

// Awaiting swift 5.3+ to utilize tests

final class TerrariaWorldParserTests: XCTestCase {
    func testParseWorldVersion194() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
//        let path: String = "194-t1.wld"
//        let nsData = try Data(contentsOf: URL(fileURLWithPath: path))
//        let world: WorldFile = WorldFile(data: nsData)
//        try world.parseWorldFile()
//        XCTAssertEqual(world.version, 194)
    }
    
    func testParseWorldVersion228() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
//        let path: String = "228.wld"
//        let nsData = try Data(contentsOf: URL(fileURLWithPath: path))
//        let world: WorldFile = WorldFile(data: nsData)
//        try world.parseWorldFile()
//        XCTAssertEqual(world.version, 228)
    }
    
    func testParseWorldVersion230() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
//        let path: String = "230.wld"
//        let nsData = try Data(contentsOf: URL(fileURLWithPath: path))
//        let world: WorldFile = WorldFile(data: nsData)
//        try world.parseWorldFile()
//        XCTAssertEqual(world.version, 230)
    }

    static var allTests = [
        ("testParseWorldVersion194", testParseWorldVersion194),
        ("testParseWorldVersion228", testParseWorldVersion228),
        ("testParseWorldVersion230", testParseWorldVersion230),
    ]
}
