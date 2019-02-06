//
//  ComplicationController.swift
//  VilkenVecka WatchKit Extension
//
//  Created by Glenn Karlsson on 2019-02-02.
//  Copyright © 2019 SuperGlenn. All rights reserved.
//

import ClockKit


class ComplicationController: NSObject, CLKComplicationDataSource {
    
    // MARK: - Timeline Configuration
    
    func getSupportedTimeTravelDirections(for complication: CLKComplication, withHandler handler: @escaping (CLKComplicationTimeTravelDirections) -> Void) {
        handler([])
    }
        
    // MARK: - Timeline Population
    
    func getCurrentTimelineEntry(for complication: CLKComplication, withHandler handler: @escaping (CLKComplicationTimelineEntry?) -> Void) {
        // Call the handler with the current timeline entry
        switch complication.family {
        case .circularSmall:
            let template = CLKComplicationTemplateCircularSmallSimpleText()
            template.textProvider = CLKSimpleTextProvider(text: "v\(week)")
             handler(CLKComplicationTimelineEntry(date: Date(), complicationTemplate: template))
        case .modularSmall:
            let template = CLKComplicationTemplateModularSmallSimpleText()
            template.textProvider = CLKSimpleTextProvider(text: "v\(week)")
            handler(CLKComplicationTimelineEntry(date: Date(), complicationTemplate: template))
        case .utilitarianSmall, .utilitarianSmallFlat:
            let template = CLKComplicationTemplateUtilitarianSmallFlat()
            template.textProvider = CLKSimpleTextProvider(text: "v\(week)")
             handler(CLKComplicationTimelineEntry(date: Date(), complicationTemplate: template))
        case .utilitarianLarge:
            let template = CLKComplicationTemplateUtilitarianLargeFlat()
            template.textProvider = CLKSimpleTextProvider(text: "vecka \(week)")
             handler(CLKComplicationTimelineEntry(date: Date(), complicationTemplate: template))
        case .extraLarge:
            let template = CLKComplicationTemplateExtraLargeSimpleText()
            template.textProvider = CLKSimpleTextProvider(text: "v\(week)")
             handler(CLKComplicationTimelineEntry(date: Date(), complicationTemplate: template))
        default:
            handler(nil)
        }
    }
    
    // MARK: - Placeholder Templates
    
    func getLocalizableSampleTemplate(for complication: CLKComplication, withHandler handler: @escaping (CLKComplicationTemplate?) -> Void) {
        // This method will be called once per supported complication, and the results will be cached
        switch complication.family {
        case .circularSmall:
            let template = CLKComplicationTemplateCircularSmallSimpleText()
            template.textProvider = CLKSimpleTextProvider(text: "v\(week)")
            handler(template)
        case .modularSmall:
            let template = CLKComplicationTemplateModularSmallSimpleText()
            template.textProvider = CLKSimpleTextProvider(text: "v\(week)")
            handler(template)
        case .utilitarianSmall, .utilitarianSmallFlat:
            let template = CLKComplicationTemplateUtilitarianSmallFlat()
            template.textProvider = CLKSimpleTextProvider(text: "v\(week)")
            handler(template)
        case .utilitarianLarge:
            let template = CLKComplicationTemplateUtilitarianLargeFlat()
            template.textProvider = CLKSimpleTextProvider(text: "vecka \(week)")
            handler(template)
        case .extraLarge:
            let template = CLKComplicationTemplateExtraLargeSimpleText()
            template.textProvider = CLKSimpleTextProvider(text: "v\(week)")
            handler(template)
        default:
            handler(nil)
        }
    }
    
    private var week: Int {
        return Helper.week
    }
}
