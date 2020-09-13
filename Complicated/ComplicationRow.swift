//
//  ComplicationRow.swift
//  ComplicatedUI
//
//  Created by Jeff Hokit on 9/13/20.
//  Copyright © 2020 Recurring Dream LLC. All rights reserved.
//

import SwiftUI

struct ComplicationRow: View {
    var complication:Complication
    
    var body: some View {
        HStack{
            complication.image
                .resizable()
                .frame(width: 60, height: 60)
            Text(complication.familyName)
            Spacer()
        }
    }
}

struct ComplicationRow_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            ComplicationRow(complication: complications[0])
            ComplicationRow(complication: complications[1])
        }
        .previewLayout(.fixed(width: 300, height: 60))

    }
}
