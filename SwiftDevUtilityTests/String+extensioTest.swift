//
//  String+extension.swift
//  SwiftDevUtilityTests
//
//  Created by jaipee on 09/09/20.
//  Copyright © 2020 JaiPrakashYadav. All rights reserved.
//

import XCTest
import UIKit

class StringExtensionTest: XCTestCase {

    let width: CGFloat = 375
    let height: CGFloat = 200
    var font: UIFont?
    var text = "I've also run into this problem myself today. It seems that custom fonts are not accessible from the Tests. I even tried to add them to the Test targets to no success. My suspicion is that this might be a bug, but I think it can also be a planned restriction from Apple."
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    func testHeightOfTextByWidthAndFont() {
        font = UIFont.systemFont(ofSize: 25.0)
        
        let height = text.height(withConstrainedWidth: width, font: font!)
        //print(height)
        XCTAssertEqual(height, 239)
        XCTAssertNotEqual(height, 230)
    }
    
    func testWidthWithGivenHeightandFont() {
        font = UIFont.systemFont(ofSize: 25.0)
        
        let width = text.width(withConstrainedHeight: height, font: font!)
        //print(width)
        XCTAssertEqual(width, 2767.0)
        XCTAssertNotEqual(width, 230)
    }
    
    func testRemoveWhiteSpaces() {
        let checkText = "I'vealsorunintothisproblemmyselftoday.ItseemsthatcustomfontsarenotaccessiblefromtheTests.IeventriedtoaddthemtotheTesttargetstonosuccess.Mysuspicionisthatthismightbeabug,butIthinkitcanalsobeaplannedrestrictionfromApple."
        
        XCTAssertEqual(text.removeWhiteSpaces(), checkText)
    }
    
    func testStringTrimmingByWhitespace() {
        var testText: String? = "   I'vealsorunintothisproblemmyselftoday.       "
        let a = testText?.stringByTrimmingWhitespace()
        //print(a)
        XCTAssertEqual(a, "I'vealsorunintothisproblemmyselftoday.")
        
        testText = nil
        XCTAssertNil(testText?.stringByTrimmingWhitespace())
    }
    
    func testStringByTrimmingWhitespaceAndNewlines() {
        var testText: String? = "   I'vealsorunintothisproblemmyselftoday.\n       "
        let a = testText?.stringByTrimmingWhitespaceAndNewlines()
        //print(a)
        XCTAssertEqual(a, "I'vealsorunintothisproblemmyselftoday.")
        
        testText = nil
        XCTAssertNil(testText?.stringByTrimmingWhitespaceAndNewlines())
        
    }

}
