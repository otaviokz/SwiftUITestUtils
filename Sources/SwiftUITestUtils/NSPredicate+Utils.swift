//
//  NSPredicate+Utils.swift
//  
//
//  Created by Otávio Zabaleta on 04/06/2023.
//

import Foundation

public extension NSPredicate {
    static func label(_ label: String) -> NSPredicate {
        NSPredicate(format: "label == %@", label)
    }
}
