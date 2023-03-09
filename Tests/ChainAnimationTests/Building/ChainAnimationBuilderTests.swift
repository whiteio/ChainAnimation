@testable import ChainAnimation
import XCTest

final class ChainAnimationBuilderTests: XCTestCase {
    func testBuilderEmptyContentShouldReturnEmptyArray() throws {
        let subject = makeChain { }

        XCTAssert(subject.isEmpty)
    }

    func makeChain(@ChainAnimationBuilder _ content: () -> [ChainAnimationBlock]) -> [ChainAnimationBlock] {
        content()
    }
}
