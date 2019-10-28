import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(network_combine_stackTests.allTests),
    ]
}
#endif
