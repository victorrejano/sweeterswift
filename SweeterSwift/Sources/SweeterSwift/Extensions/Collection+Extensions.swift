//
//  Collection+Extensions.swift
//  
//
//  Created by Victor Rejano on 19/6/22.
//

import Foundation

public extension Collection {
    /// Evaluates the given closure and returns a `Bool` if any of the values present in the collection satifies given expression
    ///
    /// - Parameter predicate: A closure that takes any value
    ///   of the collection and evaluates it.
    /// - Returns: Boolean that indicates if any of the values present in collection satifiy given predicate
    ///
    func any(_ predicate: (Self.Element) throws -> Bool) rethrows -> Bool {
        try first(where: predicate).isNotNil
    }
}
