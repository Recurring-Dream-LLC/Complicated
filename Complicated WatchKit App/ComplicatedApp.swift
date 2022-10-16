//
//  ComplicatedApp.swift
//  Complicated WatchKit Extension
//
//  Created by Jeff Hokit on 12/6/20.
//  Copyright © 2020 Recurring Dream LLC. All rights reserved.
//


import SwiftUI

@main
struct ComplicatedApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ComplicationList()
            }
        }
    }
}
