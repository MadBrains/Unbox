//
//  Unwrap.swift
//  Unbox-iOS
//
//  Created by Antol Peshkov on 05/03/2018.
//  Copyright © 2018 John Sundell. All rights reserved.
//

import Foundation

internal func unwrapIfNeeded(_ any:Any) -> Any {
    let mirror = Mirror(reflecting: any)
    guard mirror.displayStyle == .optional,
        let first = mirror.children.first
        else {
            return any
    }
    return first.value
}
