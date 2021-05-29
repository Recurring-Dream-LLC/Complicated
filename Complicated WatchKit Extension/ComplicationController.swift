//
//  ComplicationController.swift
//  Complicated WatchKit Extension
//
//  Created by Jeff Hokit on 5/26/19.
//  Copyright © 2019 Recurring Dream LLC. All rights reserved.
//

import ClockKit

//╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍
//
//╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍
class ComplicationController: NSObject, CLKComplicationDataSource {
    
    // use these identifiers to differentiate two styles of Graphic Corner
    let textIdentifer = "text"
    let graphicIdentifiter = "graphics"

    override init() {
        super.init()
    }
    
    
    // MARK: - Complication Configuration
      func getComplicationDescriptors(handler: @escaping ([CLKComplicationDescriptor]) -> Void) {
        
        let supportedFamilies = [CLKComplicationFamily.circularSmall,CLKComplicationFamily.graphicCircular,CLKComplicationFamily.modularSmall,CLKComplicationFamily.utilitarianSmall]

        let graphicCornerSupportedFamilies =
            [
                CLKComplicationFamily.graphicCorner
            ]
        
          let descriptors = [
            CLKComplicationDescriptor(identifier: "complication", displayName: "Complicated", supportedFamilies: supportedFamilies),
            CLKComplicationDescriptor(identifier: textIdentifer, displayName: "Text and Graphic", supportedFamilies: graphicCornerSupportedFamilies),
            CLKComplicationDescriptor(identifier: graphicIdentifiter, displayName: "Graphic", supportedFamilies: graphicCornerSupportedFamilies)
          ]
          
          // Call the handler with the currently supported complication descriptors
          handler(descriptors)
      }
      
      func handleSharedComplicationDescriptors(_ complicationDescriptors: [CLKComplicationDescriptor]) {
          // Do any necessary work to support these newly shared complication descriptors
      }

    
    func getSupportedTimeTravelDirections(for complication: CLKComplication, withHandler handler: @escaping (CLKComplicationTimeTravelDirections) -> Void) {
        handler([.forward, .backward])
    }
    
    func getTimelineStartDate(for complication: CLKComplication, withHandler handler: @escaping (Date?) -> Void) {
        handler(nil)
    }
    
    func getTimelineEndDate(for complication: CLKComplication, withHandler handler: @escaping (Date?) -> Void) {
        handler(nil)
    }
    
    func getPrivacyBehavior(for complication: CLKComplication, withHandler handler: @escaping (CLKComplicationPrivacyBehavior) -> Void) {
        handler(.showOnLockScreen)
    }
    
    // MARK: - Timeline Population
    
    
    func getTimelineEntries(for complication: CLKComplication, before date: Date, limit: Int, withHandler handler: @escaping ([CLKComplicationTimelineEntry]?) -> Void) {
        // Call the handler with the timeline entries prior to the given date
        handler(nil)
    }
    
    func getTimelineEntries(for complication: CLKComplication, after date: Date, limit: Int, withHandler handler: @escaping ([CLKComplicationTimelineEntry]?) -> Void) {
        // Call the handler with the timeline entries after to the given date
        handler(nil)
    }
    
    func getCurrentTimelineEntry(for complication: CLKComplication, withHandler handler: @escaping (CLKComplicationTimelineEntry?) -> Void)
    {
        if complication.family == .circularSmall
        {
            let template = CLKComplicationTemplateCircularSmallSimpleImage(imageProvider: CLKImageProvider(onePieceImage: UIImage(named: "Complication/Circular")!))
            template.imageProvider.tintColor = UIColor.complicationTint
            let timelineEntry = CLKComplicationTimelineEntry(date: Date(), complicationTemplate: template)
            handler(timelineEntry)
        }
        else if complication.family == .modularSmall
        {
            let template = CLKComplicationTemplateModularSmallSimpleImage(imageProvider: CLKImageProvider(onePieceImage: UIImage(named: "Complication/Modular")!))
            template.imageProvider.tintColor = UIColor.complicationTint
            let timelineEntry = CLKComplicationTimelineEntry(date: Date(), complicationTemplate: template)
            handler(timelineEntry)
        }
        else if complication.family == .graphicCircular
        {
            // XCode's Complications group does not have slots for
            // the extra images needed for foreground and background variations.
            // We have created "Graphic Circular Foreground" and "Graphic Circular Background", which are not in the Complications group in the Assets file.
            let fullColorImage = UIImage(named: "Complication/Graphic Circular")!
            let twoPieceImageForeground = UIImage(named: "Graphic Circular Foreground")!
            let twoPieceImageBackground = UIImage(named: "Graphic Circular Background")!

            let tintedImageProvider = CLKImageProvider(onePieceImage: fullColorImage, twoPieceImageBackground: twoPieceImageBackground, twoPieceImageForeground: twoPieceImageForeground)
            let imageProvider = CLKFullColorImageProvider(fullColorImage: fullColorImage, tintedImageProvider: tintedImageProvider)
            let template = CLKComplicationTemplateGraphicCircularImage(imageProvider:imageProvider)
            let timelineEntry = CLKComplicationTimelineEntry(date: Date(), complicationTemplate: template)
            handler(timelineEntry)
        }
        else if complication.family == .utilitarianSmall
        {
            let template = CLKComplicationTemplateUtilitarianSmallSquare(imageProvider: CLKImageProvider(onePieceImage: UIImage(named: "Complication/Utilitarian")!))
            let timelineEntry = CLKComplicationTimelineEntry(date: Date(), complicationTemplate: template)
            handler(timelineEntry)
        }
        else if complication.family == .graphicCorner
        {
            // Offer two styles for Graphic Corner, with or without a text label
            if (complication.identifier == textIdentifer)
            {
                let template = CLKComplicationTemplateGraphicCornerTextImage(textProvider: CLKSimpleTextProvider(text: "Complicated"), imageProvider: CLKFullColorImageProvider(fullColorImage: UIImage(named: "Complication/Graphic Corner")!))
                let timelineEntry = CLKComplicationTimelineEntry(date: Date(), complicationTemplate: template)
                handler(timelineEntry)
            }
            else if (complication.identifier == graphicIdentifiter)
            {
                let fullColorImage = UIImage(named: "Graphic Corner Large")!
                let template = CLKComplicationTemplateGraphicCornerCircularImage(imageProvider: CLKFullColorImageProvider(fullColorImage:fullColorImage))
                
                // Note that "Complications/Graphic Corner" is for CLKComplicationTemplateGraphicCornerTextImage.
                // We have created "Graphic Corner Large", which is not in the Complications group in the Assets file.
                // xCode complains if the "Graphic Corner Large" image set is placed within the Complications group
                let timelineEntry = CLKComplicationTimelineEntry(date: Date(), complicationTemplate: template)
                handler(timelineEntry)
            }
        }
        else {
            handler(nil) // there may be a .graphic corner complication without an ID from a previous install
        }
    }
    
    
    func getLocalizableSampleTemplate(for complication: CLKComplication, withHandler handler: @escaping (CLKComplicationTemplate?) -> Void)
    {
        switch complication.family
        {
        case .circularSmall:
            let template = CLKComplicationTemplateCircularSmallSimpleImage(imageProvider: CLKImageProvider(onePieceImage: UIImage(named: "Complication/Circular")!))
            template.imageProvider.tintColor = UIColor.complicationTint
            handler(template)
        case .modularSmall:
            let template = CLKComplicationTemplateModularSmallSimpleImage(imageProvider: CLKImageProvider(onePieceImage: UIImage(named: "Complication/Modular")!))
            template.imageProvider.tintColor = UIColor.complicationTint
            handler(template)
        case .graphicCircular:
            let template = CLKComplicationTemplateGraphicCircularImage(imageProvider: CLKFullColorImageProvider(fullColorImage: UIImage(named: "Complication/Graphic Circular")!))
            handler(template)
        case .utilitarianSmall:
            let template = CLKComplicationTemplateUtilitarianSmallSquare(imageProvider: CLKImageProvider(onePieceImage: UIImage(named: "Complication/Utilitarian")!))
            handler(template)
        case .graphicCorner:
            if (complication.identifier == textIdentifer)
            {
                let template = CLKComplicationTemplateGraphicCornerTextImage(textProvider: CLKSimpleTextProvider(text: "Complicated"), imageProvider: CLKFullColorImageProvider(fullColorImage: UIImage(named: "Complication/Graphic Corner")!))
                handler(template)
            }
            else if (complication.identifier == graphicIdentifiter)
            {
                let template = CLKComplicationTemplateGraphicCornerCircularImage(imageProvider: CLKFullColorImageProvider(fullColorImage: UIImage(named: "Graphic Corner Large")!))
                // Note that "Complications/Graphic Corner" is for CLKComplicationTemplateGraphicCornerTextImage.
                // We have created "Graphic Corner Large", which is not in the Complications group in the Assets file.
                // xCode complains if the "Graphic Corner Large" image set is placed within the Complications group
                handler(template)
            }
            else
            {
                handler(nil) // there may be a .graphic corner complication without an ID from a previous install
            }
        default:
            handler(nil)
        }
    }
}
