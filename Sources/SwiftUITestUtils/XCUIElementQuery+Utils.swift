//
//  XCUIElementQuery+Utils.swift
//  
//
//  Created by Otávio Zabaleta on 04/06/2023.
//

import Foundation
import XCTest

public extension XCUIElementQuery {
    func matching(label: String) -> XCUIElement {
        element(matching: .label(label))
    }
    
    func identifier(_ identifier: String) -> XCUIElement {
        matching(identifier: identifier).element
    }
}
 
