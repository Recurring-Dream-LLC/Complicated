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
    
    override init() {
        super.init()
    }
    
    // MARK: - Complication Configuration
      func getComplicationDescriptors(handler: @escaping ([CLKComplicationDescriptor]) -> Void) {
        
        let supportedFamilies = [CLKComplicationFamily.circularSmall,CLKComplicationFamily.graphicCircular,CLKComplicationFamily.graphicCorner,CLKComplicationFamily.modularSmall,CLKComplicationFamily.utilitarianSmall]

        
          let descriptors = [
              CLKComplicationDescriptor(identifier: "complication", displayName: "Complicated", supportedFamilies: supportedFamilies)
              // Multiple complication support can be added here with more descriptors
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
            template.imageProvider.tintColor = UIColor.complicatedBlue
            let timelineEntry = CLKComplicationTimelineEntry(date: Date(), complicationTemplate: template)
            handler(timelineEntry)
        }
        else if complication.family == .modularSmall
        {
            let template = CLKComplicationTemplateModularSmallSimpleImage(imageProvider: CLKImageProvider(onePieceImage: UIImage(named: "Complication/Modular")!))
            template.imageProvider.tintColor = UIColor.complicatedBlue
            let timelineEntry = CLKComplicationTimelineEntry(date: Date(), complicationTemplate: template)
            handler(timelineEntry)
        }
        else if complication.family == .graphicCircular
        {
            let template = CLKComplicationTemplateGraphicCircularImage(imageProvider: CLKFullColorImageProvider(fullColorImage: UIImage(named: "Complication/Graphic Circular")!))
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
            let template = CLKComplicationTemplateGraphicCornerCircularImage(imageProvider: CLKFullColorImageProvider(fullColorImage: UIImage(named: "Graphic Corner Circular")!))
            // Note that "Complications/Graphics Corner" is for CLKComplicationTemplateGraphicCornerTextImage.
            // We have created "Graphic Corner Circular", which is not in the Complications group in the Assets file.
            // xCode complains if the "Graphic Corner Circular" image set is placed within the Complications group
            let timelineEntry = CLKComplicationTimelineEntry(date: Date(), complicationTemplate: template)
            handler(timelineEntry)
        }
        else {
            
            handler(nil)
            
        }
        
    }
    
    
    func getLocalizableSampleTemplate(for complication: CLKComplication, withHandler handler: @escaping (CLKComplicationTemplate?) -> Void)
    {
        switch complication.family
        {
        case .circularSmall:
            let template = CLKComplicationTemplateCircularSmallSimpleImage(imageProvider: CLKImageProvider(onePieceImage: UIImage(named: "Complication/Circular")!))
            template.imageProvider.tintColor = UIColor.complicatedBlue
            handler(template)
        case .modularSmall:
            let template = CLKComplicationTemplateModularSmallSimpleImage(imageProvider: CLKImageProvider(onePieceImage: UIImage(named: "Complication/Modular")!))
            template.imageProvider.tintColor = UIColor.complicatedBlue
            handler(template)
        case .graphicCircular:
            let template = CLKComplicationTemplateGraphicCircularImage(imageProvider: CLKFullColorImageProvider(fullColorImage: UIImage(named: "Complication/Graphic Circular")!))
            handler(template)
        case .utilitarianSmall:
            let template = CLKComplicationTemplateUtilitarianSmallSquare(imageProvider: CLKImageProvider(onePieceImage: UIImage(named: "Complication/Utilitarian")!))
            handler(template)
        case .graphicCorner:
            let template = CLKComplicationTemplateGraphicCornerCircularImage(imageProvider: CLKFullColorImageProvider(fullColorImage: UIImage(named: "Graphic Corner Circular")!))
            // Note that "Complications/Graphics Corner" is for CLKComplicationTemplateGraphicCornerTextImage.
            // We have created "Graphic Corner Circular", which is not in the Complications group in the Assets file.
            // xCode complains if the "Graphic Corner Circular" image set is placed within the Complications group
            handler(template)
        default:
            handler(nil)
        }
    }
}
