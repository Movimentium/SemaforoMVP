//
//  SemaforPresenter.swift
//  SemaforoMVP
//
//  Created by Miguel on 27/02/2020.
//  Copyright © 2020 Miguel Gallego Martín. All rights reserved.
//

import Foundation

// NOT 'SemaforoView' because a 'xView' is a subclass of UIView
protocol SemeforoViewInterface: AnyObject {
    func showTextualDescription(_ descrip: String)
}

class SemaforoPresenter {
    private let semaforoDS: SemaforoDS
    weak var viewInterface: SemeforoViewInterface?  // NOT 'view' because a 'xView' is a subclass of UIView
    
    var defaultDescription: String {
        return semaforoDS.defaultDescription
    }
    
    init(_ semaforoDS: SemaforoDS) {
        self.semaforoDS = semaforoDS
    }
    
    func semaforoColorSelected(_ color: SemaforoColor) {
        semaforoDS.description(forSemaforoColor: color) { [weak self] (descr:String) in
            self?.viewInterface?.showTextualDescription(descr)
        }
    }
}
