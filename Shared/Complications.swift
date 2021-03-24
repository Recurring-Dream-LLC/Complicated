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
                         faceNames:[
                            WatchFace(imageName: "Cs1", displayName:"Unknown"),
                            WatchFace(imageName:"Cs2",displayName: "Unknown")]))

    complications.append(Complication(familyName:"Graphic Corner",
                           complicationFamily:".graphicCorner",
                           template: CLKComplicationTemplateGraphicCornerCircularImageName,
                           templateDocumentation: CLKComplicationTemplateGraphicCornerCircularImageDocumentation,
                           imageProvider: CLKFullColorImageProviderName,
                           imageProviderDocumentation: CLKFullColorImageProviderDocumentation,
                           abbreviation:"Gco",
                           faceNames:[
                              WatchFace(imageName: "Gci-Infograph Modular-Multicolor", displayName:"Infograph Modular (Multicolor)"),
                              WatchFace(imageName:"Gci-Infograph Modular-Peach",displayName: "Infograph Modular (Peach)"),
                              WatchFace(imageName: "Gci-California-Mango", displayName:"California (Mango)")]))

    complications.append(Complication(familyName:"Graphic Circular",
                           complicationFamily:".graphicCircular",
                           template: CLKComplicationTemplateGraphicCircularImageName,
                           templateDocumentation: CLKComplicationTemplateGraphicCircularImageDocumentation,
                           imageProvider: CLKFullColorImageProviderName,
                           imageProviderDocumentation:CLKFullColorImageProviderDocumentation,
                           abbreviation:"Gci",
                           faceNames:[
                              WatchFace(imageName: "Gci-Infograph Modular-Multicolor", displayName:"Infograph Modular (Multicolor)"),
                              WatchFace(imageName:"Gci-Infograph Modular-Peach",displayName: "Infograph Modular (Peach)"),
                              WatchFace(imageName: "Gci-California-Mango", displayName:"California (Mango)")]))

    complications.append(Complication(familyName:"Modular Small",
                          complicationFamily:".modularSmall",
                          template: CLKComplicationTemplateCircularSmallSimpleImageName,
                          templateDocumentation: CLKComplicationTemplateCircularSmallSimpleImageDocumentation,
                          imageProvider: CLKImageProviderName,
                          imageProviderDocumentation: CLKImageProviderDocumentation,
                          abbreviation:"Ms",
                          faceNames:[
                             WatchFace(imageName: "Gci-Infograph Modular-Multicolor", displayName:"Infograph Modular (Multicolor)"),
                             WatchFace(imageName:"Gci-Infograph Modular-Peach",displayName: "Infograph Modular (Peach)"),
                             WatchFace(imageName: "Gci-California-Mango", displayName:"California (Mango)")]))

    complications.append(Complication(familyName:"Utilitarian Small",
                           complicationFamily:".utilitarianSmall",
                           template: CLKComplicationTemplateUtilitarianSmallSquareName,
                           templateDocumentation: CLKComplicationTemplateUtilitarianSmallSquareDocumentation,
                           imageProvider: CLKImageProviderName,
                           imageProviderDocumentation: CLKImageProviderDocumentation,
                           abbreviation:"Us",
                           faceNames:[
                              WatchFace(imageName: "Gci-Infograph Modular-Multicolor", displayName:"Infograph Modular (Multicolor)"),
                              WatchFace(imageName:"Gci-Infograph Modular-Peach",displayName: "Infograph Modular (Peach)"),
                              WatchFace(imageName: "Gci-California-Mango", displayName:"California (Mango)")]))
    return complications
}
