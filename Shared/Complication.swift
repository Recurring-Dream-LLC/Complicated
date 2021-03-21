//
//  Complication.swift
//  Complicated
//
//  Created by Jeff Hokit on 5/10/20.
//  Copyright © 2020 Recurring Dream LLC. All rights reserved.
//

import Foundation

#if os(watchOS)
import WatchKit
#endif

#if os(iOS)
import UIKit
#endif

import SwiftUI

//╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍
//
//╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍
struct Complication: Identifiable
{
    var id:String = ""
    var familyName:String = ""
    var complicationFamily:String = ""
    var template:String = ""
    var templateDocumentation:URL
    var imageProvider:String = ""
    var imageProviderDocumentation: URL
    fileprivate var abbreviation:String = ""
    var faceNames: [String]
    var image: Image {
        Image(abbreviation)
    }

    init(familyName: String,
         complicationFamily: String,
         template:String,
         templateDocumentation:URL,
         imageProvider: String,
         imageProviderDocumentation:URL,
         abbreviation: String,
         faceNames: [String]) {
        self.id = abbreviation
        self.familyName = familyName
        self.complicationFamily = complicationFamily
        self.template = template
        self.templateDocumentation = templateDocumentation
        self.imageProvider = imageProvider
        self.imageProviderDocumentation = imageProviderDocumentation
        self.abbreviation = abbreviation
        self.faceNames = faceNames
    }

}


