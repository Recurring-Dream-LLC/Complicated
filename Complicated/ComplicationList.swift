//
//  ComplicationList.swift
//  ComplicatedUI
//
//  Created by Jeff Hokit on 9/13/20.
//  Copyright © 2020 Recurring Dream LLC. All rights reserved.
//

import SwiftUI

struct ComplicationList: View {
    var body: some View {
            NavigationView{
            List(complications) { complication in
                NavigationLink(destination: ComplicationDetail(complication: complication)) {

                    ComplicationRow(complication:complication)
                }
            }.navigationBarTitle(Text("Complications"))
            .listStyle(PlainListStyle())
                
        // This causes the list to take on "Sidebar Style" unless overidden by .listStyle above
        Text("Select a Complication")
        }
    
    }
}

struct ComplicationList_Previews: PreviewProvider {
    static var previews: some View {
        ComplicationList()
//            .previewDevice(PreviewDevice(rawValue: "iPhone 12 Pro"))
    }
}
