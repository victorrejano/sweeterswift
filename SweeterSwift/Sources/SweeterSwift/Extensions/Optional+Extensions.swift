//
//  Optional+Extensions.swift
//  
//
//  Created by Victor Rejano on 19/6/22.
//

import Foundation

public extension Optional {
    var isNil: Bool { self == nil }
    var isNotNil: Bool { !isNil }
}

public extension Optional {
    /// Evaluates the given closure when this `Optional` instance is not `nil`,
    /// returning the unwrapped value if both conditions are satisfied.
    ///
    /// - Parameter predicate: A closure that takes the unwrapped value
    ///   of the instance and evaluates it.
    /// - Returns: Wrapped value if is not `nil` and predicate condition is satisfied.
    /// 
    func takeIf(_ predicate: (Wrapped) throws -> Bool) rethrows -> Wrapped? {
        guard let self, try predicate(self) else { return nil }
        return self
    }
}
