import XCTest

class MultiViewCtrlSwiftUITests: XCTestCase {
    let app = XCUIApplication()
    
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testUpperCase() {
        let testText = "Hello World"
        let aidTitlelblTextField = app.textFields["aid_headerTxt"]
        aidTitlelblTextField.doubleTap()
        sleep(1)
        app/*@START_MENU_TOKEN@*/.menuItems["Select All"]/*[[".menus.menuItems[\"Select All\"]",".menuItems[\"Select All\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        aidTitlelblTextField.typeText(testText)
        app/*@START_MENU_TOKEN@*/.buttons["aid_nextBtn"]/*[[".buttons[\"Next\"]",".buttons[\"aid_nextBtn\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app/*@START_MENU_TOKEN@*/.buttons["aid_upperBtn"]/*[[".otherElements[\"aid_headerLbl\"]",".buttons[\"Upper\"]",".buttons[\"aid_upperBtn\"]"],[[[-1,2],[-1,1],[-1,0,1]],[[-1,2],[-1,1]]],[0]]@END_MENU_TOKEN@*/.tap()
        app.navigationBars["MultiViewCtrlSwift.View"].buttons["Back"].tap()
        
        XCTAssert(aidTitlelblTextField.value as! String == testText.uppercased())
    }
    
    func testLowerCase() {
        let testText = "Hello World"
        let aidTitlelblTextField = app.textFields["aid_headerTxt"]
        aidTitlelblTextField.doubleTap()
        sleep(1)
        app/*@START_MENU_TOKEN@*/.menuItems["Select All"]/*[[".menus.menuItems[\"Select All\"]",".menuItems[\"Select All\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        aidTitlelblTextField.typeText(testText)
        app/*@START_MENU_TOKEN@*/.buttons["aid_nextBtn"]/*[[".buttons[\"Next\"]",".buttons[\"aid_nextBtn\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app.buttons["aid_lowerBtn"].tap()
        app.navigationBars["MultiViewCtrlSwift.View"].buttons["Back"].tap()
        
        XCTAssert(aidTitlelblTextField.value as! String == testText.lowercased())
    }
    
}
