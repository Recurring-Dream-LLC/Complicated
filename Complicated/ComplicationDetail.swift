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
    var link:URL?
    
    var body: some View {
        HStack{
            Text(title)
                .font(.body)
                .foregroundColor(Color(.secondaryLabel))
            Spacer()
            if let link = link
            {
                Link(detail, destination: link)
                    .font(.body)
                    .minimumScaleFactor(0.5)
                    .lineLimit(1)
            }
            else
            {
                Text(detail)
                    .font(.body)
                    .foregroundColor(Color(.label))
                    .minimumScaleFactor(0.5)
                    .lineLimit(1)
            }
        }.padding()
        Divider()
    }
}


struct DetailRowMultiline:View {
    var title:String
    var detail:String
    
    var body: some View {
        VStack(alignment: .center){
            HStack {
                Text(title)
                    .font(.body)
                    .foregroundColor(Color(.secondaryLabel))
                Spacer()
            }
            HStack {
                Spacer()
                
                Text(detail)
                    .font(.body)
                    .foregroundColor(Color(.label))
                    .minimumScaleFactor(0.5)
                    .lineLimit(4)
            }
        }.padding()
        Divider()
    }
}

struct DetailRowTwoline: View{
    var title:String
    var detail:String
    var link:URL?
    
    var body: some View {
        VStack(alignment: .center){
            HStack {
                Text(title)
                    .font(.body)
                    .foregroundColor(Color(.secondaryLabel))
                Spacer()
            }
            HStack {
                Spacer()
                if let link = link
                {
                    Link(detail, destination: link)
                        .font(.body)
                        .minimumScaleFactor(0.5)
                        .lineLimit(1)
                }
                else
                {
                    Text(detail)
                        .font(.body)
                        .foregroundColor(Color(.label))
                        .minimumScaleFactor(0.5)
                        .lineLimit(1)
                }
            }
        }.padding()
       Divider()
    }
}


struct SectionHeader: View{
    var title:String

    var body: some View {
        HStack{
            Text(title)
                .font(.title2)
                .fontWeight(.bold)
            Spacer()
        }.padding()
    }
}



struct FaceGallery: View {
    var complication:Complication
    var body: some View {
        ScrollView(.horizontal) {
            HStack{
                ForEach(complication.faceNames, id: \.self) { watchFace in
                    VStack
                    {
                        Image(watchFace.imageName)
                            .resizable()
                            .frame(width: 324/2, height: 394/2)

                        Text(watchFace.displayName)
                            .font(.caption)
                    }.padding()
                }
            }
        }
    }
}



struct ComplicationDetail: View {
    @Environment(\.horizontalSizeClass) var horizontalSizeClass : UserInterfaceSizeClass?

    var complication:Complication
    
    var body: some View {
        ScrollView(.vertical)
        {
        VStack(spacing: -5){
            complication.image
                .resizable()
                .frame(width: 80, height: 80)
                .padding(3.0)
            
            SectionHeader(title: "Information")

            DetailRow(title: "Family Name", detail: complication.familyName)
            
            DetailRow(title: "ImageProvider",detail: complication.imageProvider,link: complication.imageProviderDocumentation)
            
            if horizontalSizeClass == .compact
            {
                DetailRowTwoline(title: "Template", detail: complication.template, link: complication.templateDocumentation)
            }
            else
            {
                DetailRow(title: "Template", detail: complication.template, link: complication.templateDocumentation)
            }
            
            if (complication.notes != "")
            {
                DetailRowMultiline(title: "Notes", detail: complication.notes)

            }
            
            SectionHeader(title: "Examples")
            
            FaceGallery(complication:complication)
            
            Spacer() // Top align the VStack
        }.navigationBarTitleDisplayMode(.inline)
    }
    }
}

struct ComplicationDetail_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ComplicationDetail(complication: complications[0])
                .preferredColorScheme(.dark)
        }
    }
}
