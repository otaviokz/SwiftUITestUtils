//
//  XCUIElementQuery+Utils.swift
//  
//
//  Created by Otávio Zabaleta on 04/06/2023.
//

import Foundation
import XCTest

extension XCUIElementQuery {
    func matching(label: String) -> XCUIElement {
        element(matching: .label(label))
    }
}
 
