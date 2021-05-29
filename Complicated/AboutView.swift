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


struct AboutView: View {
    var body: some View {
        
        ScrollView(.vertical)
        {
            VStack(spacing: -5){
                SectionHeader(title: "About Complicated")
                Spacer()
                TextBody(title: "This is the body of the text that explains Complicated")
                
                SectionHeader(title: "Resources")
                DetailRow(title: "Source Code", detail: "GitHub", link: URL(string: "https://github.com/jhokit/Complicated"))
                
                DetailRow(title: "Image Source", detail: "Sketch Cloud", link: URL(string: "https://www.sketch.com/s/546deabc-b998-46b0-a635-6eccb00d820b"))
            }.padding()
        }.frame(maxWidth: 600)
    }
}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView()
    }
}
