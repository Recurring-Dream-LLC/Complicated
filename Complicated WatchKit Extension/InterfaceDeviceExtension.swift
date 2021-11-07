//
//  InterfaceDeviceExtension.swift
//  Complicated WatchKit Extension
//
//  Created by Jeff Hokit on 9/24/18.
//  Copyright © 2018 Recurring Dream LLC. All rights reserved.
//



import WatchKit

enum WatchResolution {
    case Watch38mm,Watch40mm,Watch41mm,Watch42mm,Watch44mm,Watch45mm,Unknown
}

extension WKInterfaceDevice {
    class func currentResolution() -> WatchResolution {
        let watch38mmRect = CGRect(x: 0, y: 0, width: 136, height: 170)
        let watch40mmRect = CGRect(x: 0, y: 0, width: 162, height: 197)
        let watch41mmRect = CGRect(x: 0, y: 0, width: 176, height: 215)
        let watch42mmRect = CGRect(x: 0, y: 0, width: 156, height: 195)
        let watch44mmRect = CGRect(x: 0, y: 0, width: 184, height: 224)
        let watch45mmRect = CGRect(x: 0, y: 0, width: 198, height: 242)

        let currentBounds = WKInterfaceDevice.current().screenBounds
        
        switch currentBounds {
        case watch38mmRect:
            return .Watch38mm
        case watch40mmRect:
            return .Watch40mm
        case watch41mmRect:
            return .Watch41mm
        case watch42mmRect:
            return .Watch42mm
        case watch44mmRect:
            return .Watch44mm
        case watch45mmRect:
            return .Watch45mm
        default:
            return .Unknown
        }
    }
}
