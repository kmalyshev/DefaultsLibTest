//
//  DefaultsSettings.swift
//  DefaultsTest
//
//  Created by Konstantin Malyshev on 1/27/21.
//

import Foundation
import Defaults

extension Defaults.Keys {
    static let proMode = Key<Bool>("some.name", default: false)
}
