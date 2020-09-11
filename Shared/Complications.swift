//
//  Complications.swift
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
class Complications
{
    static let sharedInstance = Complications()
    
    var complications = [Complication]()
    
    init() {
        let C = Complication(familyName:"Circular Small",
                             complicationFamily:".circularSmall",
                             abbreviation:"Cs",
                             imageName:"Cs")
        complications.append(C)
        
        let Gcc = Complication(familyName:"Graphic Corner",
                               complicationFamily:"..graphicCorner",
                               abbreviation:"Gco",
                               imageName:"Gco")
        complications.append(Gcc)
        
        let GCi = Complication(familyName:"Graphic Circular",
                               complicationFamily:"..graphicCircular",
                               abbreviation:"Gci",
                               imageName:"Gci")
        complications.append(GCi)
        
        let Ms = Complication(familyName:"Modular Small",
                              complicationFamily:".modularSmall",
                              abbreviation:"Ms",
                              imageName:"Ms")
        complications.append(Ms)

        let Uss = Complication(familyName:"Utilitarian Small",
                               complicationFamily:".utilitarianSmall",
                               abbreviation:"Us",
                               imageName:"Us")
        complications.append(Uss)

    }
}


