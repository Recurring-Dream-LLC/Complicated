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

// the commonly used prefix to apple dev documentation URLs
fileprivate let docsPath = "https://developer.apple.com/documentation/clockkit/"

// family constants
fileprivate enum CKFamily{
    static let CircularSmallDocumentation = URL(string: docsPath + "circular_small")!
    static let GraphicCornerDocumentation = URL(string: docsPath + "graphic")!
    static let GraphicCircularDocumentation = URL(string: docsPath + "graphic")!
    static let ModularSmallDocumentation = URL(string: docsPath + "modular_small")!
    static let UtilitarianSmallDocumentation = URL(string: docsPath + "modular_small")!
}

// template constants
fileprivate enum CKTemplate
{
    static let CircularSmallSimpleImageName = "CLKComplicationTemplateCircularSmallSimpleImage"
    static let CircularSmallSimpleImageDocumentation = URL(string: docsPath + "clkcomplicationtemplatecircularsmallsimpleimage")!
    
    static let GraphicCornerCircularImageName = "CLKComplicationTemplateGraphicCornerCircularImage"
    static let GraphicCornerCircularImageDocumentation = URL(string: docsPath + "clkcomplicationtemplategraphiccornercircularimage")!
    
    static let GraphicCircularImageName = "CLKComplicationTemplateGraphicCircularImage"
    static let GraphicCircularImageDocumentation = URL(string: docsPath + "clkcomplicationtemplategraphiccircularimage")!
    
    static let ModularSmallImageName = "CLKComplicationTemplateModularSmallSimpleImage"
    static let ModularSmallImageDocumentation = URL(string: docsPath + "clkcomplicationtemplatemodularsmallsimpleimage")!

    static let UtilitarianSmallSquareName = "CLKComplicationTemplateUtilitarianSmallSquare"
    static let UtilitarianSmallSquareDocumentation = URL(string: docsPath +  "clkcomplicationtemplateutilitariansmallsquare")!
}

// image provider constants
fileprivate let CLKImageProviderName = "CLKImageProvider"
fileprivate let CLKImageProviderDocumentation = URL(string: docsPath + "clkimageprovider")!

fileprivate let CLKFullColorImageProviderName = "CLKFullColorImageProvider"
fileprivate let CLKFullColorImageProviderDocumentation = URL(string: docsPath + "clkfullcolorimageprovider")!

//——————————————————————————————————————————————————————————————————————————————
//
//——————————————————————————————————————————————————————————————————————————————
func loadComplications()->[Complication]
{
    var complications: [Complication] = []
    
    complications.append(Complication(familyName:"Circular Small",
                         complicationFamily:".circularSmall",
                         template: CKTemplate.CircularSmallSimpleImageName,
                         templateDocumentation:CKTemplate.CircularSmallSimpleImageDocumentation,
                         imageProvider: CLKImageProviderName,
                         imageProviderDocumentation: CLKImageProviderDocumentation,
                         abbreviation:"Cs",
                         notes:"Artwork should not include the circular background, it's added by watchOS.",
                         faceNames:[
                            WatchFace(imageName: "Cs-Activity Analog-Red", displayName:"Activity Analog (Red)"),
                            WatchFace(imageName:"Cs-Color-Spearmint",displayName: "Color (Spearmint)")]))

    complications.append(Complication(familyName:"Graphic Corner",
                           complicationFamily:".graphicCorner",
                           template: CKTemplate.GraphicCornerCircularImageName,
                           templateDocumentation: CKTemplate.GraphicCornerCircularImageDocumentation,
                           imageProvider: CLKFullColorImageProviderName,
                           imageProviderDocumentation: CLKFullColorImageProviderDocumentation,
                           abbreviation:"Gco",
                           notes:"Artwork should include a background if desired. It's not added by watchOS, but it is clipped to a circle. A solid black backround on the Artboard works best.",
                           faceNames:[
                            WatchFace(imageName: "Gco-Solar Dial", displayName:"Solar Dial"),
                              WatchFace(imageName: "Gco-Infograph-Black", displayName:"Infograph (Black)"),
                              WatchFace(imageName:"Gco-Infograph-Peach",displayName: "Infograph (Peach)")]))

    complications.append(Complication(familyName:"Graphic Circular",
                           complicationFamily:".graphicCircular",
                           template: CKTemplate.GraphicCircularImageName,
                           templateDocumentation: CKTemplate.GraphicCircularImageDocumentation,
                           imageProvider: CLKFullColorImageProviderName,
                           imageProviderDocumentation:CLKFullColorImageProviderDocumentation,
                           abbreviation:"Gci",
                           notes:"Artwork should include a background if desired. It's not added by watchOS, but it is clipped to a circle. A background layer of #191919 works best. Foreground and background images can be used to create a partially tinted complication.",
                           faceNames:[
                              WatchFace(imageName: "Gci-Infograph Modular-Multicolor", displayName:"Infograph Modular (Multicolor)"),
                              WatchFace(imageName:"Gci-Infograph Modular-Peach",displayName: "Infograph Modular (Peach)"),
                              WatchFace(imageName: "Gci-California-Mango", displayName:"California (Mango)")]))

    complications.append(Complication(familyName:"Modular Small",
                          complicationFamily:".modularSmall",
                          template: CKTemplate.ModularSmallImageName,
                          templateDocumentation: CKTemplate.ModularSmallImageDocumentation,
                          imageProvider: CLKImageProviderName,
                          imageProviderDocumentation: CLKImageProviderDocumentation,
                          abbreviation:"Ms",
                          notes:"Multicolor faces seem to tint full color images with their dominant color, still investigating this.",
                          faceNames:[
                             WatchFace(imageName: "Ms-Modular-Multicolor", displayName:"Modular (Multicolor)"),
                             WatchFace(imageName: "Ms-Modular-Pink", displayName:"Modular (Pink)")]))

    complications.append(Complication(familyName:"Utilitarian Small",
                           complicationFamily:".utilitarianSmall",
                           template: CKTemplate.UtilitarianSmallSquareName,
                           templateDocumentation: CKTemplate.UtilitarianSmallSquareDocumentation,
                           imageProvider: CLKImageProviderName,
                           imageProviderDocumentation: CLKImageProviderDocumentation,
                           abbreviation:"Us",
                           notes:"",
                           faceNames:[
                              WatchFace(imageName: "Us-Simple-Red", displayName:"Simple (Red)"),
                              WatchFace(imageName:"Us-Numerals-Apricot",displayName: "Numerals (Apricot)")]))
    return complications
}
