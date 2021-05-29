//
//  AppColors.swift
//  Complicated
//
//  Created by Jeff Hokit on 5/31/19.
//  Copyright © 2019 Recurring Dream LLC. All rights reserved.
//

#if os(watchOS)
import WatchKit
#endif

#if os(iOS)
import UIKit
#endif

extension UIColor
{
    static var complicationTint:UIColor
    {
        return UIColor.init(red: 51.0/255.0, green: 204.0/255.0, blue: 204.0/255.0, alpha: 1.0)
    }
    
    
}
