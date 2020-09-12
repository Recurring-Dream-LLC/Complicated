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


//╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍
//
//╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍
struct Complication
{
    var familyName:String = ""
    var complicationFamily:String = ""
    var template:String = ""
    var imageProvider:String = ""
    var abbreviation:String = ""
    var image:UIImage?
    
    
    init(familyName: String,
         complicationFamily: String,
         template:String,
         imageProvider: String,
         abbreviation: String) {
        self.familyName = familyName
        self.complicationFamily = complicationFamily
        self.template = template
        self.imageProvider = imageProvider
        self.abbreviation = abbreviation
        self.image = UIImage(named: abbreviation)
    }

}
