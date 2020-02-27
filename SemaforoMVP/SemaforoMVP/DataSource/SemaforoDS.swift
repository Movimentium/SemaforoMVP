//
//  SemaforoDS.swift
//  SemaforoMVP
//
//  Created by Miguel on 27/02/2020.
//  Copyright © 2020 Miguel Gallego Martín. All rights reserved.
//

import Foundation

class SemaforoDS {
    
    let defaultDescription: String = "Pulsa un color para saber su significado"
    
     // without @escaping because is NOT an async callback
    func description(forSemaforoColor semaColor: SemaforoColor, callBack:(String)->Void) {
        callBack(semaColor.description)
    }
    
}
