import XCTest

class FastBikeUITests: XCTestCase {

    override func setUp() {
        continueAfterFailure = false
        let app = XCUIApplication()
        setupSnapshot(app)
        app.launch()
        snapshot("01LoginScreen")
    }
}
