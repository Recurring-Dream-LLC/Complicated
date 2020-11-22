//
//  ComplicationDetail.swift
//  ComplicatedUI
//
//  Created by Jeff Hokit on 9/13/20.
//  Copyright © 2020 Recurring Dream LLC. All rights reserved.
//

import SwiftUI

struct DetailRow: View{
    var title:String
    var detail:String
    
    var body: some View {
        HStack{
            Text(title)
                .font(.body)
                .foregroundColor(Color(.secondaryLabel))
            Spacer()
            Text(detail)
                .font(.body)
                .foregroundColor(Color(.label))
                .minimumScaleFactor(0.5)
                .lineLimit(1)
        }.padding()
        Divider()
    }
}


struct DetailRowLinked: View{
    var title:String
    var linkTitle:String
    var link:URL
    
    var body: some View {
        HStack{
            Text(title)
                .font(.body)
                .foregroundColor(Color(.secondaryLabel))
            Spacer()
            Link(linkTitle, destination: link)
                .font(.body)
                .minimumScaleFactor(0.5)
                .lineLimit(1)
            
        }.padding()
        Divider()
    }
}

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
            
            DetailRow(title: "Family Name", detail: complication.familyName)
            
            DetailRowLinked(title: "ImageProvider",linkTitle: complication.imageProvider,link: complication.imageProviderDocumentation)
            
            Group{
                VStack(alignment: .leading){
                    Text("Template")
                        .font(.body)
                        .foregroundColor(Color(.secondaryLabel))
                        .multilineTextAlignment(.leading)
                    Link(complication.template, destination: complication.templateDocumentation)
                        .font(.body)
                        .minimumScaleFactor(0.5)
                        .lineLimit(1)
                       .multilineTextAlignment(.trailing)
                        
                    
                }.padding()
                Divider()
            }
            
            DetailRow(title: "Tintable", detail: "Yes")
            
            Spacer()
        }.navigationBarTitleDisplayMode(.inline)
    }
}

struct ComplicationDetail_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ComplicationDetail(complication: complications[0])
                .preferredColorScheme(.dark)
                .previewDevice(PreviewDevice(rawValue: "iPhone 12 mini"))
//            ComplicationDetail(complication: complications[0])
//                .previewDevice(PreviewDevice(rawValue: "iPhone XS Max"))
            

        }
    }
}
