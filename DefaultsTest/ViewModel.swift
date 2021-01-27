//
//  ViewModel.swift
//  DefaultsTest
//
//  Created by Konstantin Malyshev on 1/27/21.
//

import Combine
import Foundation
import Defaults

class ViewModel: ObservableObject {
    
    @Published var totalCount = 0
    
    init() {
        Defaults.publisher(keys: .proMode)
            .map { _ in () } // just to make it similar to my production code. Shouldn't affect anything
            .sink { [weak self] _ in
                self?.totalCount += 1
            }
            .store(in: &subscriptions)
    }
    
    private var subscriptions = [AnyCancellable]()
    
}
