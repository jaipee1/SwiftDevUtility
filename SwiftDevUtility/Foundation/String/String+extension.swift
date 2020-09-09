//
//  String+extension.swift
//  SwiftDevUtility
//
//  Created by jaipee on 09/09/20.
//  Copyright © 2020 JaiPrakashYadav. All rights reserved.
//

import Foundation
import UIKit

public extension String {
    func height(withConstrainedWidth width: CGFloat, font: UIFont) -> CGFloat {
        let constraintRect = CGSize(width: width, height: .greatestFiniteMagnitude)
        let boundingBox = self.boundingRect(with: constraintRect, options: .usesLineFragmentOrigin, attributes: [NSAttributedString.Key.font: font], context: nil)
        
        return ceil(boundingBox.height)
    }
    
    func width(withConstrainedHeight height: CGFloat, font: UIFont) -> CGFloat {
        let constraintRect = CGSize(width: .greatestFiniteMagnitude, height: height)
        let boundingBox = self.boundingRect(with: constraintRect, options: .usesLineFragmentOrigin, attributes: [NSAttributedString.Key.font: font], context: nil)
        
        return ceil(boundingBox.width)
    }
}

public extension String {
    func removeWhiteSpaces() -> String {
        let arr = self.components(separatedBy: CharacterSet(charactersIn: " "))
        var concatedString = ""
        
        for word in arr {
            concatedString = concatedString + word
        }
        
        return concatedString
    }
    
    func stringByTrimmingWhitespace() -> String? {
        return trimmingCharacters(in: CharacterSet.whitespaces)
    }

    func stringByTrimmingWhitespaceAndNewlines() -> String? {
        return trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
    }
    
}
