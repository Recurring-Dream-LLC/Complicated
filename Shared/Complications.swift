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

#if os(iOS)
import UIKit
#endif


//╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍
//
//╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍
class Complications
{
    static let sharedInstance = Complications()
    
    var complications = [Complication]()
    
    init() {
        let C = Complication(name:"C",imageName:"C")
        complications.append(C)
        
        let Gcc = Complication(name:"Gcc",imageName:"Gcc")
        complications.append(Gcc)
        
        let GCi = Complication(name:"Gci",imageName:"Gci")
        complications.append(GCi)
        
        let Ms = Complication(name:"Ms",imageName:"Ms")
        complications.append(Ms)

        let Uss = Complication(name:"Uss",imageName:"Uss")
        complications.append(Uss)

    }
}


