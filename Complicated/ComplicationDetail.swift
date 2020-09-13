//
//  ComplicationDetail.swift
//  ComplicatedUI
//
//  Created by Jeff Hokit on 9/13/20.
//  Copyright © 2020 Recurring Dream LLC. All rights reserved.
//

import SwiftUI

struct ComplicationDetail: View {
    var complication:Complication
    
    var body: some View {
        VStack{
            complication.image
                .resizable()
                .frame(width: 80, height: 80)
                .padding()
            HStack{
                Text("Family Name")
                    .font(.body)
                    .foregroundColor(Color.gray)
                Spacer()
                Text(complication.familyName)
                    .font(.system(.body, design: .monospaced))
                    .foregroundColor(Color.blue)
            }.padding()
            
            HStack{
                Text("Image Provider")
                    .font(.body)
                    .foregroundColor(Color.gray)
                Spacer()
                Text(complication.imageProvider)
                    .font(.system(.body, design: .monospaced))
                    .foregroundColor(Color.blue)

            }.padding()

            HStack{
                Text("Template")
                    .font(.body)
                    .foregroundColor(Color.gray)
                Spacer()
                Text(complication.template)
                    .font(.system(.body, design: .monospaced))
                    .foregroundColor(Color.blue)

            }.padding()

            Spacer()
        }.navigationBarTitleDisplayMode(.inline)
    }
}

struct ComplicationDetail_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ComplicationDetail(complication: complications[0])
                .preferredColorScheme(.dark)
                .previewDevice(PreviewDevice(rawValue: "iPhone SE"))
            ComplicationDetail(complication: complications[0])
                .previewDevice(PreviewDevice(rawValue: "iPhone XS Max"))
            

        }
    }
}
