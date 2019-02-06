//
//  Helper.swift
//  VilkenVecka WatchKit Extension
//
//  Created by Glenn Karlsson on 2019-02-06.
//  Copyright © 2019 SuperGlenn. All rights reserved.
//

import Foundation

public struct Helper {
    public static var week: Int {
        return NSCalendar.current.component(.weekOfYear, from: Date())
    }
    
    public static var comingMonday: Date {
        let calendar = Calendar.current
        let mondayWeekDay = 2
        let mondayComponents = DateComponents(calendar: calendar, weekday: mondayWeekDay)
        let comingMonday = calendar.nextDate(after: Date(), matching: mondayComponents, matchingPolicy: .nextTime)!
        return comingMonday
    }
}
