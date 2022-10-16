//
//  ComplicationController.swift
//  Complicated WatchKit Extension
//
//  Created by Jeff Hokit on 5/26/19.
//  Copyright © 2019 Recurring Dream LLC. All rights reserved.
//

import ClockKit
import WatchKit

//╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍
//
//╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍
class ComplicationController: NSObject, CLKComplicationDataSource {
    
    let complicationTint = UIColor(named: "ComplicationTintColor")

    // use these identifiers to differentiate two styles of Graphic Corner
    let textIdentifer = "text"
    let graphicIdentifiter = "graphics"

    override init() {
        super.init()
    }


    func circularSmallImage()->UIImage
    {
        var image:UIImage
        let resolution = WKInterfaceDevice.currentResolution()
        
        switch resolution {
        case .Watch38mm:
            image = UIImage(named: "Circular Small 16")!
        case .Watch40mm, .Watch42mm:
            image = UIImage(named: "Circular Small 18")!
        case .Watch41mm:
            image = UIImage(named: "Circular Small 19")!
        case .Watch44mm:
            image = UIImage(named: "Circular Small 20")!
        case .Watch45mm:
            image = UIImage(named: "Circular Small 21.5")!
        default:
            image = UIImage(named: "Circular Small 16")!
        }
        return image
    }

    func circularSmallTemplate()->CLKComplicationTemplate
    {
        let image = circularSmallImage()
        let template = CLKComplicationTemplateCircularSmallSimpleImage(imageProvider: CLKImageProvider(onePieceImage:image))
        template.imageProvider.tintColor = complicationTint
        return template
    }
    
    func modularSmallImage()->UIImage
    {
        var image:UIImage
        let resolution = WKInterfaceDevice.currentResolution()
        
        switch resolution {
        case .Watch38mm:
            image = UIImage(named: "Modular Small 26")!
        case .Watch40mm, .Watch42mm:
            image = UIImage(named: "Modular Small 29")!
        case .Watch41mm:
            image = UIImage(named: "Modular Small 30.5")!
        case .Watch44mm:
            image = UIImage(named: "Modular Small 32")!
        case .Watch45mm:
            image = UIImage(named: "Modular Small 34.5")!
        default:
            image = UIImage(named: "Modular Small 26")!
        }
        return image
    }

    func modularSmallTemplate()->CLKComplicationTemplate
    {
        let image = modularSmallImage()
        let template = CLKComplicationTemplateModularSmallSimpleImage(imageProvider: CLKImageProvider(onePieceImage:image))
        template.imageProvider.tintColor = complicationTint
        return template
    }
    
    func graphicCircularImage()->UIImage
    {
        var image:UIImage
        let resolution = WKInterfaceDevice.currentResolution()
        
        switch resolution {
        case .Watch40mm:
            image = UIImage(named: "Graphic Circular 42")!
        case .Watch41mm:
            image = UIImage(named: "Graphic Circular 44.5")!
        case .Watch44mm:
            image = UIImage(named: "Graphic Circular 47")!
        case .Watch45mm:
            image = UIImage(named: "Graphic Circular 50")!
        default:
            image = UIImage(named: "Graphic Circular 42")!
        }
        return image
    }

    func graphicCircularForegroundImage()->UIImage
    {
        var image:UIImage
        let resolution = WKInterfaceDevice.currentResolution()
        
        switch resolution {
        case .Watch40mm:
            image = UIImage(named: "Graphic Circular Foreground 42")!
        case .Watch41mm:
            image = UIImage(named: "Graphic Circular Foreground 44.5")!
        case .Watch44mm:
            image = UIImage(named: "Graphic Circular Foreground 47")!
        case .Watch45mm:
            image = UIImage(named: "Graphic Circular Foreground 50")!
        default:
            image = UIImage(named: "Graphic Circular Foreground 42")!
        }
        return image
    }
    
    
    func graphicCircularBackgroundImage()->UIImage
    {
        var image:UIImage
        let resolution = WKInterfaceDevice.currentResolution()
        
        switch resolution {
        case .Watch40mm:
            image = UIImage(named: "Graphic Circular Background 42")!
        case .Watch41mm:
            image = UIImage(named: "Graphic Circular Background 44.5")!
        case .Watch44mm:
            image = UIImage(named: "Graphic Circular Background 47")!
        case .Watch45mm:
            image = UIImage(named: "Graphic Circular Background 50")!
        default:
            image = UIImage(named: "Graphic Circular Background 42")!
        }
        return image
    }

    func graphicCircularTemplate()->CLKComplicationTemplate
    {
        let fullColorImage = graphicCircularImage()
        let twoPieceImageForeground = graphicCircularForegroundImage()
        let twoPieceImageBackground = graphicCircularBackgroundImage()
        let tintedImageProvider = CLKImageProvider(onePieceImage: fullColorImage, twoPieceImageBackground: twoPieceImageBackground, twoPieceImageForeground: twoPieceImageForeground)
        let imageProvider = CLKFullColorImageProvider(fullColorImage: fullColorImage, tintedImageProvider: tintedImageProvider)
        let template = CLKComplicationTemplateGraphicCircularImage(imageProvider:imageProvider)
        return template
    }


    func graphicCornerCircularImage()->UIImage
    {
        var image:UIImage
        let resolution = WKInterfaceDevice.currentResolution()
        
        switch resolution {
        case .Watch40mm:
            image = UIImage(named: "Graphic Corner Circular 32")!
        case .Watch41mm:
            image = UIImage(named: "Graphic Corner Circular 34")!
        case .Watch44mm:
            image = UIImage(named: "Graphic Corner Circular 36")!
        case .Watch45mm:
            image = UIImage(named: "Graphic Corner Circular 39")!
        default:
            image = UIImage(named: "Graphic Corner Circular 32")!
        }
        return image
    }
    
    func graphicCornerCircularTemplate()->CLKComplicationTemplate
    {
        let image = graphicCornerCircularImage()
        let template = CLKComplicationTemplateGraphicCornerCircularImage(imageProvider: CLKFullColorImageProvider(fullColorImage:image))
        return template
    }

    
    func graphicCornerTextImage()->UIImage
    {
        var image:UIImage
        let resolution = WKInterfaceDevice.currentResolution()
        
        switch resolution {
        case .Watch40mm:
            image = UIImage(named: "Graphic Corner Text 20")!
        case .Watch41mm:
            image = UIImage(named: "Graphic Corner Text 21")!
        case .Watch44mm:
            image = UIImage(named: "Graphic Corner Text 22")!
        case .Watch45mm:
            image = UIImage(named: "Graphic Corner Text 24")!
        default:
            image = UIImage(named: "Graphic Corner Text 20")!
        }
        return image
    }
    
    func graphicCornerTextTemplate()->CLKComplicationTemplate
    {
        let image = graphicCornerTextImage()
        let template = CLKComplicationTemplateGraphicCornerTextImage(textProvider: CLKSimpleTextProvider(text: "Complicated"), imageProvider: CLKFullColorImageProvider(fullColorImage: image))
        return template
    }
    
    func utilitarianSmallImage()->UIImage
    {
        var image:UIImage
        let resolution = WKInterfaceDevice.currentResolution()
        
        switch resolution {
        case .Watch38mm:
            image = UIImage(named: "Utilitarian Small 20")!
        case .Watch40mm, .Watch42mm:
            image = UIImage(named: "Utilitarian Small 22")!
        case .Watch41mm:
            image = UIImage(named: "Utilitarian Small 23.5")!
        case .Watch44mm:
            image = UIImage(named: "Utilitarian Small 25")!
        case .Watch45mm:
            image = UIImage(named: "Utilitarian Small 26")!
        default:
            image = UIImage(named: "Utilitarian Small 20")!
        }
        return image
    }

    func utilitarianSmallTemplate()->CLKComplicationTemplate
    {
        let image = utilitarianSmallImage()
        let template = CLKComplicationTemplateUtilitarianSmallSquare(imageProvider: CLKImageProvider(onePieceImage:image))
        template.imageProvider.tintColor = complicationTint
        return template
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
            let timelineEntry = CLKComplicationTimelineEntry(date: Date(), complicationTemplate: circularSmallTemplate())
            handler(timelineEntry)
        }
        else if complication.family == .modularSmall
        {
            let timelineEntry = CLKComplicationTimelineEntry(date: Date(), complicationTemplate: modularSmallTemplate())
            handler(timelineEntry)
        }
        else if complication.family == .graphicCircular
        {
            let timelineEntry = CLKComplicationTimelineEntry(date: Date(), complicationTemplate: graphicCircularTemplate())
            handler(timelineEntry)
        }
        else if complication.family == .utilitarianSmall
        {
            let timelineEntry = CLKComplicationTimelineEntry(date: Date(), complicationTemplate: utilitarianSmallTemplate())
            handler(timelineEntry)
        }
        else if complication.family == .graphicCorner
        {
            // Offer two styles for Graphic Corner, with or without a text label
            if (complication.identifier == textIdentifer)
            {
                let timelineEntry = CLKComplicationTimelineEntry(date: Date(), complicationTemplate: graphicCornerTextTemplate())
                handler(timelineEntry)
            }
            else if (complication.identifier == graphicIdentifiter)
            {
                let timelineEntry = CLKComplicationTimelineEntry(date: Date(), complicationTemplate: graphicCornerCircularTemplate())
                handler(timelineEntry)
            }
        }
        else {
            handler(nil) // there may be a .graphicCorner complication without an ID from a previous install
        }
    }
    
    
    func getLocalizableSampleTemplate(for complication: CLKComplication, withHandler handler: @escaping (CLKComplicationTemplate?) -> Void)
    {
        switch complication.family
        {
        case .circularSmall:
            handler(circularSmallTemplate())
        case .modularSmall:
            handler(modularSmallTemplate())
        case .graphicCircular:
            handler(graphicCircularTemplate())
        case .utilitarianSmall:
            handler(utilitarianSmallTemplate())
        case .graphicCorner:
            if (complication.identifier == textIdentifer)
            {
                handler(graphicCornerTextTemplate())
            }
            else if (complication.identifier == graphicIdentifiter)
            {
                handler(graphicCornerCircularTemplate())
            }
            else
            {
                handler(nil) // there may be a .graphicCorner complication without an ID from a previous install
            }
        default:
            handler(nil)
        }
    }
}
