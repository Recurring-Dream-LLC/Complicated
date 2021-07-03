//
//  AboutView.swift
//  Complicated
//
//  Created by Jeff Hokit on 5/16/21.
//  Copyright © 2021 Recurring Dream LLC. All rights reserved.
//

import SwiftUI

struct TextBody: View{
    var title:String

    var body: some View {
        HStack{
            Text(title)
                .font(.body)
        }.padding()
    }
}


struct ResourcesView: View {
    var body: some View {
        
        ScrollView(.vertical)
        {
            VStack(spacing: -5){

                // Resources Section
                SectionHeader(title: "Resources")
                DetailRow(title: "Source Code", detail: "GitHub", link: URL(string: "https://github.com/jhokit/Complicated"))
                DetailRow(title: "Image Source", detail: "Sketch Cloud", link: URL(string: "https://www.sketch.com/s/546deabc-b998-46b0-a635-6eccb00d820b"))
                
                Spacer().frame(height:30)
                
                // About Section
                SectionHeader(title: "About Complicated")
                TextBody(title: "  There's almost no way to say it without making a bad pun... Apple Watch complications are complicated.\n\n  The programmatic documentation is fairly complete, but creating artwork that works well with various faces and tint modes is a bit of a puzzle, as is identifying which complication family is used on each face.\n\n  I created Complicated as a way to understand and experiment with complications. Each complication family displays unique initials, to clarify which is in use.\n\n  Complicated is open source, as is the image source Sketch document, which serves as further documentation of sizing and styling.")
                
                // Version String
                let version = Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString") as! String
                let build = Bundle.main.object(forInfoDictionaryKey: "CFBundleVersion") as! String
                let versionString = "Version " + version + " (" + build + ")"
                TextBody(title:versionString)

            }.padding()
        }.frame(maxWidth: 600)
    }
}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        ResourcesView()
            
    }
}
