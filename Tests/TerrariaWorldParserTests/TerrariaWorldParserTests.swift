import XCTest
@testable import TerrariaWorldParser

final class TerrariaWorldParserTests: XCTestCase {
    func testParse() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        let path: String = "test2.wld"
        let nsData = try Data(contentsOf: URL(fileURLWithPath: path))
        let world: WorldFile = WorldFile(data: nsData)
        try world.parseWorldFile()
        XCTAssertEqual(world.version, 194)
    }

    static var allTests = [
        ("testParse", testParse),
    ]
}
