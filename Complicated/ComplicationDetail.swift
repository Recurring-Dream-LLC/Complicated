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
        VStack(spacing: -5){
            complication.image
                .resizable()
                .frame(width: 80, height: 80)
                .padding()
            
            HStack{
                Text("Information")
                    .font(.title2)
                    .fontWeight(.bold)
                Spacer()
            }.padding()
            
            Group {
                HStack{
                    Text("Family Name")
                        .font(.body)
                        .foregroundColor(Color(.secondaryLabel))
                    Spacer()
                    Text(complication.familyName)
                        .font(.body)
                        .foregroundColor(Color(.label))
                }.padding()
                Divider()
            }
            
            Group{
                HStack{
                    Text("Image Provider")
                        .font(.body)
                        .foregroundColor(Color(.secondaryLabel))
                    Spacer()
                    Text(complication.imageProvider)
                        .font(.body)
                        .foregroundColor(Color(.link))
                    
                }.padding()
                Divider()
            }
            
            Group{
                VStack(alignment: .leading){
                    Text("Template")
                        .font(.body)
                        .foregroundColor(Color(.secondaryLabel))
                        .multilineTextAlignment(.leading)
                    
                    Text(complication.template)
                        .font(.body)
                        .foregroundColor(Color(.link))
                        .multilineTextAlignment(.trailing)
                        
                    
                }.padding()
                Divider()
            }
            
            Group{
                HStack{
                    Text("Tintable")
                        .font(.body)
                        .foregroundColor(Color(.secondaryLabel))
                    Spacer()
                    Text("Yes")
                        .font(.body)
                        .foregroundColor(Color(.label))
                    
                }.padding()
                Divider()
            }
            
//            
//            HStack{
//                Text("Sample Faces")
//                    .font(.title2)
//                    .fontWeight(.bold)
//                Spacer()
//            }.padding()
//

            
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
