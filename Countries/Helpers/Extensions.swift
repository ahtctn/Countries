//
//  Extensions.swift
//  Countries
//
//  Created by Ahmet Ali ÇETİN on 29.05.2023.
//

import UIKit

extension NSLayoutConstraint {
    static func activateMultiple(_ constraints: [NSLayoutConstraint]...) {
        NSLayoutConstraint.activate(constraints.flatMap({ $0 }))
    }
}
