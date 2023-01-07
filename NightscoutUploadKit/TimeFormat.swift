//
//  TimeFormat.swift
//  RileyLink
//
//  Created by Pete Schwamb on 3/8/16.
//  Copyright © 2016 Pete Schwamb. All rights reserved.
//

import Foundation

class TimeFormat: NSObject {
    private static var formatterISO8601 = DateFormatter.ISO8601DateFormatter()
    
    static func timestampStrFromDate(_ date: Date) -> String {
        return formatterISO8601.string(from: date)
    }

    static func dateFromTimestamp(_ string: String) -> Date? {
        if let result = formatterISO8601.date(from: string) {
            return result
        }
            
        //Nightscout is returning this format in some cases...  needs more research
        return DateFormatter.ISO8601DateWithFractionalSecondsFormatter().date(from: string)
    }
}
