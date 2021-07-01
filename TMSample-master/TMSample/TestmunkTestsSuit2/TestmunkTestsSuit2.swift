

import XCTest

//Need to create number of different Test Case..

class TestmunkTestsSuit2: XCTestCase {
    
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
    func testSignIn() {
        let app = XCUIApplication(bundleIdentifier: "com.pcloudy.TestmunkDemo")
        app.buttons["SIGN IN"].tap()
        app.buttons["Ok"].tap()
        
        app.textFields["Email"].tap()
        app.textFields["Email"].typeText("test@testname.com")
        app.secureTextFields["Password"].tap()
        app.secureTextFields["Password"].typeText("testmunkdemo")
        app.buttons["SIGN IN"].tap()
        app.buttons["Ok"].tap()
        
        app.textFields["Email"].tap()
        
        for _ in 0...16 {
            app.keys["delete"].tap()
        }
        
        /*
         app.keys["delete"].tap()
         */
        app.typeText("test@pcloudy.com")
        // or use app.keys["delete"].tap() if you have keyboard enabled
        
        // app.textFields["Email"].typeText("test@testname.com")
        app.secureTextFields["Password"].tap()
        app.secureTextFields["Password"].typeText("testmunk")
        app.buttons["SIGN IN"].tap()
        app.buttons["Skip"].tap()
    }
    
    func testSegments() {
        let app = XCUIApplication(bundleIdentifier: "com.pcloudy.TestmunkDemo")
        app.textFields["Email"].tap()
        app.textFields["Email"].typeText("test@testname.com")
        app.secureTextFields["Password"].tap()
        app.secureTextFields["Password"].typeText("testmunk")
        //app.buttons["SIGN IN"].tap()
        app.buttons["Skip"].tap()
        
        app/*@START_MENU_TOKEN@*/.buttons["Second"]/*[[".segmentedControls.buttons[\"Second\"]",".buttons[\"Second\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app/*@START_MENU_TOKEN@*/.buttons["Third"]/*[[".segmentedControls.buttons[\"Third\"]",".buttons[\"Third\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app.buttons["First"].tap()
        
        app.buttons["First"].tap()
        app.buttons["Third"].tap()
        app.buttons["Second"].tap()
        
        app/*@START_MENU_TOKEN@*/.buttons["Second"]/*[[".segmentedControls.buttons[\"Second\"]",".buttons[\"Second\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app/*@START_MENU_TOKEN@*/.buttons["Third"]/*[[".segmentedControls.buttons[\"Third\"]",".buttons[\"Third\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app.buttons["First"].tap()
        
        app.buttons["First"].tap()
        app/*@START_MENU_TOKEN@*/.buttons["Second"]/*[[".segmentedControls.buttons[\"Second\"]",".buttons[\"Second\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app.buttons["Third"].tap()
        
    }
    
    func testSwitchTest() {
        
        let app = XCUIApplication(bundleIdentifier: "com.pcloudy.TestmunkDemo")
        app.textFields["Email"].tap()
        app.textFields["Email"].typeText("test@testname.com")
        app.secureTextFields["Password"].tap()
        app.secureTextFields["Password"].typeText("testmunk")
        app.buttons["SIGN IN"].tap()
        app.buttons["Skip"].tap()
        
        let onStaticText = app/*@START_MENU_TOKEN@*/.staticTexts["ON"]/*[[".scrollViews.staticTexts[\"ON\"]",".staticTexts[\"ON\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        onStaticText.tap()
        app/*@START_MENU_TOKEN@*/.staticTexts["OFF"]/*[[".scrollViews.staticTexts[\"OFF\"]",".staticTexts[\"OFF\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        onStaticText.tap()
        
        let secondButton = app/*@START_MENU_TOKEN@*/.buttons["Second"]/*[[".segmentedControls.buttons[\"Second\"]",".buttons[\"Second\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        secondButton.tap()
        
        let firstButton = app/*@START_MENU_TOKEN@*/.buttons["First"]/*[[".segmentedControls.buttons[\"First\"]",".buttons[\"First\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        firstButton.tap()
        app/*@START_MENU_TOKEN@*/.buttons["Third"]/*[[".segmentedControls.buttons[\"Third\"]",".buttons[\"Third\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        secondButton.tap()
        firstButton.tap()
        
    }
    
    
    func testAlertTest() {
        let app = XCUIApplication(bundleIdentifier: "com.pcloudy.TestmunkDemo")
        app.textFields["Email"].tap()
        app.textFields["Email"].typeText("test@testname.com")
        app.secureTextFields["Password"].tap()
        app.secureTextFields["Password"].typeText("testmunk")
        app.buttons["SIGN IN"].tap()
        app.buttons["Skip"].tap()
        
        app.steppers.buttons["Increment"].tap()
        let showAlertViewButton = app.buttons["SHOW ALERT VIEW"]
        showAlertViewButton.tap()
        app.buttons["Do Something"].tap()
        showAlertViewButton.tap()
        app.buttons["Dismiss"].tap()
    }
    
}
