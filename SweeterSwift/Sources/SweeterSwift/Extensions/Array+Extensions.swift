//
//  Array+Extensions.swift
//  
//
//  Created by Victor Rejano on 19/6/22.
//

import Foundation

public extension Array {
    /// Returns an element if exists in given index, otherwise will return `nil`
    ///
    /// - Parameter index: `Int` index
    ///
    /// - Returns: `Optional` element
    ///
    func getOrNull(_ index: Int) -> Element? {
        if count >= index { return self[index] }
        return nil
    }
}
