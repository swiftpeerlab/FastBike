import XCTest

class FastBikeUITests: XCTestCase {
    
    let app = XCUIApplication()

    override func setUp() {
        continueAfterFailure = false
        setupSnapshot(app)
        app.launch()
        addUIInterruptionMonitor(withDescription: "System Dialog") {
          (alert) -> Bool in
          alert.buttons["Allow Once"].tap()
          return true
        }
    }
    
        func testScreenshot() {
            app.tap()
            snapshot("01LoginScreen")
    }
}
