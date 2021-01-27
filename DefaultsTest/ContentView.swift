//
//  ContentView.swift
//  DefaultsTest
//
//  Created by Konstantin Malyshev on 1/27/21.
//

import SwiftUI
import Defaults

struct ContentView: View {
    
    @Default(.proMode) var proMode
    
    @ObservedObject var viewModel: ViewModel
    
    var body: some View {
        
        VStack {
            
            Toggle("Pro mode", isOn: $proMode)
            
            Text("Total count: \(viewModel.totalCount)")
                .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: .init())
    }
}
