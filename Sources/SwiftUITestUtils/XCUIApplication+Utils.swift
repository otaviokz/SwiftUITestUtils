//
//  XCUIApplication+Utils.swift
//  
//
//  Created by Otávio Zabaleta on 04/06/2023.
//

import XCTest

extension XCUIApplication {
    func images(label: String) -> XCUIElement {
        images.element(matching: .label(label))
    }
    
    func textFields(identifier: String) -> XCUIElement {
        textFields.matching(identifier: identifier).element
    }
    
    func staticTexts(label: String) -> XCUIElement {
        staticTexts.matching(.label(label)).element
    }
    
    func swipeVertical(relativeStart: SwipePoint, relativeEnd: SwipePoint) {
        swipeVertical(from: relativeStart.rawValue, to: relativeEnd.rawValue)
    }
    
    func swipeVertical(from: CGFloat, to: CGFloat) {
        let relativeTouchPoint = coordinate(withNormalizedOffset: CGVector(dx: 0.5, dy: from))
        let relativeOffset = coordinate(withNormalizedOffset: CGVector(dx: 0, dy: to))
        relativeTouchPoint.press(forDuration: 0, thenDragTo: relativeOffset)
    }
    
    func swipeHorizontal(from: CGFloat, to: CGFloat) {
        let relativeTouchPoint = coordinate(withNormalizedOffset: CGVector(dx: from, dy: 0.5))
        let relativeOffset = coordinate(withNormalizedOffset: CGVector(dx: to, dy: 0.5))
        relativeTouchPoint.press(forDuration: 0, thenDragTo: relativeOffset)
    }
    
    func swipeHorizontal(relativeStart: SwipePoint, relativeEnd: SwipePoint) {
        let relativeTouchPoint = coordinate(withNormalizedOffset: CGVector(dx: relativeStart.rawValue, dy: 0.5))
        let relativeOffset = coordinate(withNormalizedOffset: CGVector(dx: relativeEnd.rawValue, dy: 0.5))
        relativeTouchPoint.press(forDuration: 0, thenDragTo: relativeOffset)
    }
    
    enum SwipePoint: CGFloat {
        case top = 0
        case middleTop = 0.25
        case middle = 0.5
        case middleBottom = 0.75
        case bottom = 1
    }
}


