//
//  ComplicationList.swift
//  Complicated WatchKit Extension
//
//  Created by Jeff Hokit on 3/8/21.
//  Copyright © 2021 Recurring Dream LLC. All rights reserved.
//

import SwiftUI

struct ComplicationList: View {
    var body: some View {
        List(complications) { complication in

                ComplicationRow(complication:complication)
        }
    }
}

struct ComplicationList_Previews: PreviewProvider {
    static var previews: some View {
        ComplicationList()
    }
}
