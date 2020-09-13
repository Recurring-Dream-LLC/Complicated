//
//  ComplicatedApp.swift
//  Complicated
//
//  Created by Jeff Hokit on 9/12/20.
//  Copyright © 2020 Recurring Dream LLC. All rights reserved.
//

import SwiftUI

@main
struct ComplicatedApp: App {
    var body: some Scene {
        WindowGroup {
            ComplicationList()
        }
    }
}

struct ComplicatedApp_Previews: PreviewProvider {
    static var previews: some View {
        ComplicationList()
    }
}
