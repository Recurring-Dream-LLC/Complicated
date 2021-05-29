//
//  ComplicatedApp.swift
//  Complicated
//
//  Created by Jeff Hokit on 9/12/20.
//  Copyright © 2020 Recurring Dream LLC. All rights reserved.
//

import SwiftUI

struct ComplicationTabs: View {
    var body: some View {

    TabView{
        ComplicationList()
            .tabItem {
                Image(systemName: "applewatch.watchface")
                Text("Complications")
            }
        ResourcesView()
            .tabItem {
                Image(systemName: "info.circle")
                Text("Resources")
            }
        }
    }
}


@main
struct ComplicatedApp: App {
    var body: some Scene {
        WindowGroup {
            ComplicationTabs()
            
        }
    }
}

struct ComplicatedApp_Previews: PreviewProvider {
    static var previews: some View {
        ComplicationTabs()
        }
}
