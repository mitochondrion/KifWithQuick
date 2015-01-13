import UIKit
import XCTest
//import KIF

extension XCTestCase {
    func tester(_ file : String = __FILE__, _ line : Int = __LINE__) -> KIFUITestActor {
        return KIFUITestActor(inFile: file, atLine: line, delegate: self)
    }
    
    func system(_ file : String = __FILE__, _ line : Int = __LINE__) -> KIFSystemTestActor {
        return KIFSystemTestActor(inFile: file, atLine: line, delegate: self)
    }
}

class Acceptance_Tests: KIFTestCase {
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    
    func testExample() {
        // This is an example of a functional test case.
        XCTAssert(true, "Pass")
//        XCTAssert(false, "DIE!")
        

        tester().waitForViewWithAccessibilityLabel(
            "mySpecialLabel",
            value: "OMGWTFBBQ",
            traits: 0)
    }
}