import XCTest
@testable import FileSystemStats

final class FileSystemStatsTests: XCTestCase {
  func testGetTotalSize() {
    let result = getTotalSize()
    XCTAssertNotNil(result)
  }
  
  func testGetAvailableSize() {
    let result = getAvailableSize()
    XCTAssertNotNil(result)
  }
  
  func testGetRelativeUsage() {
    let result = getRelativeUsage()
    XCTAssertNotNil(result)
    XCTAssertGreaterThan(result, 0.0)
    XCTAssertLessThan(result, 100.0)
  }
  
  static var allTests = [
    ("testGetTotalSize", testGetTotalSize),
    ("testGetAvailableSize", testGetAvailableSize),
    ("testGetRelativeUsage", testGetRelativeUsage)
  ]
}
