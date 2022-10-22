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
                DetailRow(title: "Image Source", detail: "Sketch Cloud", link: URL(string: "https://www.sketch.com/s/7caffcc0-1a4d-4981-af4e-c5eeed9fdf9a"))
                DetailRow(title: "Complication Sizes", detail: "Human Interface Guidelines", link: URL(string: "https://developer.apple.com/design/human-interface-guidelines/watchos/overview/complications/"))

                Spacer().frame(height:30)
                
                // About Section
                SectionHeader(title: "About Complicated")
                TextBody(title: "  There's almost no way to say it without making a bad pun... Apple Watch complications are complicated.\n\n  The programmatic documentation is often outdated, missing images sizes for new models. The Xcode templates are also out of date. \n\n  Creating artwork that works well with various faces and tint modes is a bit of a puzzle, as is identifying which complication family is used on each face.\n\n  I created Complicated as a way to understand and experiment with complications. Each complication family displays unique initials, to clarify which is in use.\n\n  To work around Xcode's broken templates, I've created a new image naming scheme that can be seen in Complicated's Asset files and ComplicationController.swift.\n\n  Complicated is open source, as is the image source Sketch document, which serves as further documentation of sizing and styling.")
                
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
