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
        let C = Complication(name:"Circular Small", abbreviation:"C",imageName:"C")
        complications.append(C)
        
        let Gcc = Complication(name:"Graphic Corner", abbreviation:"Gcc",imageName:"Gcc")
        complications.append(Gcc)
        
        let GCi = Complication(name:"Graphic Circular", abbreviation:"Gci",imageName:"Gci")
        complications.append(GCi)
        
        let Ms = Complication(name:"Modular Small", abbreviation:"Ms",imageName:"Ms")
        complications.append(Ms)

        let Uss = Complication(name:"Utilitarian Small", abbreviation:"Uss",imageName:"Uss")
        complications.append(Uss)

    }
}


