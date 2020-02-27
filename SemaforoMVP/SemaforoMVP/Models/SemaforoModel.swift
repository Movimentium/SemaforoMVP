//
//  SemaforoModel.swift
//  SemaforoMVP
//
//  Created by Miguel on 27/02/2020.
//  Copyright © 2020 Miguel Gallego Martín. All rights reserved.
//

import Foundation

enum SemaforoColor {
    case verde
    case naranja
    case rojo
    
    var description: String {
        switch self {
        case .verde: return "Puede pasar"
        case .naranja: return "Cambiando a rojo"
        case .rojo: return "NO pasar"
        }
    }
}

