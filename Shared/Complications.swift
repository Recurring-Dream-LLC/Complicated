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

//#if os(iOS)
//import UIKit
//#endif

let complications:[Complication] = loadComplications()

//——————————————————————————————————————————————————————————————————————————————
//
//——————————————————————————————————————————————————————————————————————————————
func loadComplications()->[Complication]
{
    var complications: [Complication] = []
    complications.append(Complication(familyName:"Circular Small",
                         complicationFamily:".circularSmall",
                         template: "CLKComplicationTemplateCircularSmallSimpleImage",
                         imageProvider: "CLKImageProvider",
                         abbreviation:"Cs"))
    
    complications.append(Complication(familyName:"Graphic Corner",
                           complicationFamily:".graphicCorner",
                           template: "CLKComplicationTemplateGraphicCornerCircularImage",
                           imageProvider: "CLKFullColorImageProvider",
                           abbreviation:"Gco"))
    
    complications.append(Complication(familyName:"Graphic Circular",
                           complicationFamily:".graphicCircular",
                           template: "CLKComplicationTemplateGraphicCircularImage",
                           imageProvider: "CLKFullColorImageProvider",
                           abbreviation:"Gci"))
    
    complications.append(Complication(familyName:"Modular Small",
                          complicationFamily:".modularSmall",
                          template: "CLKComplicationTemplateModularSmallSimpleImage",
                          imageProvider: "CLKImageProvider",
                          abbreviation:"Ms"))
    
    complications.append(Complication(familyName:"Utilitarian Small",
                           complicationFamily:".utilitarianSmall",
                           template: "CLKComplicationTemplateUtilitarianSmallSquare",
                           imageProvider: "CLKImageProvider",
                           abbreviation:"Us"))
    return complications
}

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
                             template: "CLKComplicationTemplateCircularSmallSimpleImage",
                             imageProvider: "CLKImageProvider",
                             abbreviation:"Cs")
        complications.append(C)
        
        let Gcc = Complication(familyName:"Graphic Corner",
                               complicationFamily:".graphicCorner",
                               template: "CLKComplicationTemplateGraphicCornerCircularImage",
                               imageProvider: "CLKFullColorImageProvider",
                               abbreviation:"Gco")
        complications.append(Gcc)
        
        let GCi = Complication(familyName:"Graphic Circular",
                               complicationFamily:".graphicCircular",
                               template: "CLKComplicationTemplateGraphicCircularImage",
                               imageProvider: "CLKFullColorImageProvider",
                               abbreviation:"Gci")
        complications.append(GCi)
        
        let Ms = Complication(familyName:"Modular Small",
                              complicationFamily:".modularSmall",
                              template: "CLKComplicationTemplateModularSmallSimpleImage",
                              imageProvider: "CLKImageProvider",
                              abbreviation:"Ms")
        complications.append(Ms)

        let Uss = Complication(familyName:"Utilitarian Small",
                               complicationFamily:".utilitarianSmall",
                               template: "CLKComplicationTemplateUtilitarianSmallSquare",
                               imageProvider: "CLKImageProvider",
                               abbreviation:"Us")
        complications.append(Uss)

    }
}

