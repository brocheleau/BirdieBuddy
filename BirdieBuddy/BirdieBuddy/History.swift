//
//  History.swift
//  BirdieBuddy
//
//  Created by Blake Rocheleau on 6/25/20.
//  Copyright © 2020 Blake Rocheleau. All rights reserved.
//

import SwiftUI

struct History: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Player History").font(.largeTitle)
            }.navigationBarTitle("History")
            
        }
    }
}

struct History_Previews: PreviewProvider {
    static var previews: some View {
        History()
    }
}
