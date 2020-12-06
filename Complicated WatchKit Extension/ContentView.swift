//
//  ContentView.swift
//  Complicated WatchKit Extension
//
//  Created by Jeff Hokit on 12/6/20.
//  Copyright © 2020 Recurring Dream LLC. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Complicated")
                .font(.title3)
            HStack {
                Image("Cs")
                Image("Ms")
                Image("Gci")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
