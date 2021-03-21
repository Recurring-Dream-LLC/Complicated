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
//
let complications:[Complication] = loadComplications()

// family constants
let circularSmallDocumentation = URL(string: "https://developer.apple.com/documentation/clockkit/circular_small")!
let graphicCornerDocumentation = URL(string: "https://developer.apple.com/documentation/clockkit/graphic")!
let graphicCircularDocumentation = URL(string: "https://developer.apple.com/documentation/clockkit/graphic")!
let modularSmallDocumentation = URL(string: "https://developer.apple.com/documentation/clockkit/modular_small")!
let utilitarianSmallDocumentation = URL(string: "https://developer.apple.com/documentation/clockkit/modular_small")!


// template constants
let CLKComplicationTemplateCircularSmallSimpleImageName = "CLKComplicationTemplateCircularSmallSimpleImage"
let CLKComplicationTemplateCircularSmallSimpleImageDocumentation = URL(string: "https://developer.apple.com/documentation/clockkit/clkcomplicationtemplatecircularsmallsimpleimage")!

let CLKComplicationTemplateGraphicCornerCircularImageName = "CLKComplicationTemplateGraphicCornerCircularImage"
let CLKComplicationTemplateGraphicCornerCircularImageDocumentation = URL(string: "https://developer.apple.com/documentation/clockkit/clkcomplicationtemplategraphiccornercircularimage")!

let CLKComplicationTemplateGraphicCircularImageName = "CLKComplicationTemplateGraphicCircularImage"
let CLKComplicationTemplateGraphicCircularImageDocumentation = URL(string: "https://developer.apple.com/documentation/clockkit/clkcomplicationtemplategraphiccircularimage")!

let CLKComplicationTemplateUtilitarianSmallSquareName = "CLKComplicationTemplateUtilitarianSmallSquare"
let CLKComplicationTemplateUtilitarianSmallSquareDocumentation = URL(string: "https://developer.apple.com/documentation/clockkit/clkcomplicationtemplateutilitariansmallsquare")!

// image provider constants
let CLKImageProviderName = "CLKImageProvider"
let CLKImageProviderDocumentation = URL(string: "https://developer.apple.com/documentation/clockkit/clkimageprovider")!

let CLKFullColorImageProviderName = "CLKFullColorImageProvider"
let CLKFullColorImageProviderDocumentation = URL(string: "https://developer.apple.com/documentation/clockkit/clkfullcolorimageprovider")!

//——————————————————————————————————————————————————————————————————————————————
//
//——————————————————————————————————————————————————————————————————————————————
func loadComplications()->[Complication]
{
    var complications: [Complication] = []
    
    complications.append(Complication(familyName:"Circular Small",
                         complicationFamily:".circularSmall",
                         template: CLKComplicationTemplateCircularSmallSimpleImageName,
                         templateDocumentation: CLKComplicationTemplateCircularSmallSimpleImageDocumentation,
                         imageProvider: CLKImageProviderName,
                         imageProviderDocumentation: CLKImageProviderDocumentation,
                         abbreviation:"Cs",
                         faceNames:["Gci-Infograph Modular-Multicolor","Gci-Infograph Modular-Peach","Gci-California-Mango"]))

    complications.append(Complication(familyName:"Graphic Corner",
                           complicationFamily:".graphicCorner",
                           template: CLKComplicationTemplateGraphicCornerCircularImageName,
                           templateDocumentation: CLKComplicationTemplateGraphicCornerCircularImageDocumentation,
                           imageProvider: CLKFullColorImageProviderName,
                           imageProviderDocumentation: CLKFullColorImageProviderDocumentation,
                           abbreviation:"Gco",
                           faceNames:["Gci-Infograph Modular-Multicolor","Gci-Infograph Modular-Peach","Gci-California-Mango"]))

    complications.append(Complication(familyName:"Graphic Circular",
                           complicationFamily:".graphicCircular",
                           template: CLKComplicationTemplateGraphicCircularImageName,
                           templateDocumentation: CLKComplicationTemplateGraphicCircularImageDocumentation,
                           imageProvider: CLKFullColorImageProviderName,
                           imageProviderDocumentation:CLKFullColorImageProviderDocumentation,
                           abbreviation:"Gci",
                           faceNames:["Gci-Infograph Modular-Multicolor","Gci-Infograph Modular-Peach","Gci-California-Mango"]))

    complications.append(Complication(familyName:"Modular Small",
                          complicationFamily:".modularSmall",
                          template: CLKComplicationTemplateCircularSmallSimpleImageName,
                          templateDocumentation: CLKComplicationTemplateCircularSmallSimpleImageDocumentation,
                          imageProvider: CLKImageProviderName,
                          imageProviderDocumentation: CLKImageProviderDocumentation,
                          abbreviation:"Ms",
                          faceNames:["Gci-Infograph Modular-Multicolor","Gci-Infograph Modular-Peach","Gci-California-Mango"]))

    complications.append(Complication(familyName:"Utilitarian Small",
                           complicationFamily:".utilitarianSmall",
                           template: CLKComplicationTemplateUtilitarianSmallSquareName,
                           templateDocumentation: CLKComplicationTemplateUtilitarianSmallSquareDocumentation,
                           imageProvider: CLKImageProviderName,
                           imageProviderDocumentation: CLKImageProviderDocumentation,
                           abbreviation:"Us",
                           faceNames:["Gci-Infograph Modular-Multicolor","Gci-Infograph Modular-Peach","Gci-California-Mango"]))
    return complications
}
