//
//  SemaforoVC.swift
//  SemaforoMVP
//
//  Created by Miguel on 27/02/2020.
//  Copyright © 2020 Miguel Gallego Martín. All rights reserved.
//

import UIKit

class SemaforoVC: UIViewController, SemeforoViewInterface {
 
    @IBOutlet var arrSemaforoBtns: [UIButton]!
    @IBOutlet weak var lblDescrp: UILabel!
    @IBOutlet weak var constrSemaBtnHeight: NSLayoutConstraint!
    
    private let presenter = SemaforoPresenter(SemaforoDS())

    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.viewInterface = self
        setupUI()
    }
    
    private func setupUI() {
        lblDescrp.text = presenter.defaultDescription
        for btn in arrSemaforoBtns {
            btn.layer.cornerRadius = constrSemaBtnHeight.constant / 2.0
        }
    }
    
    
    // MARK: - IBActions
    
    @IBAction func onBtnRojo() {
        presenter.semaforoColorSelected(.rojo)
    }
    
    @IBAction func onBtnNaranja() {
        presenter.semaforoColorSelected(.naranja)
    }
    
    @IBAction func onBtnVerde() {
        presenter.semaforoColorSelected(.verde)
    }
    
    
    // MARK: - SemeforoViewInterface
    
    func showTextualDescription(_ descrip: String) {
        lblDescrp.text = descrip
    }
}
