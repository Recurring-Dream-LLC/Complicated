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
    var imageProvider:String = ""
    var abbreviation:String = ""
    var image:UIImage?
    
    
    init(familyName: String,
         complicationFamily: String,
         abbreviation: String,
         imageName: String) {
        self.familyName = familyName
        self.complicationFamily = complicationFamily
        self.abbreviation = abbreviation
        self.image = UIImage(named: imageName)
    }

}
