//
//  CurrencyInput.swift
//  hourIOSApp
//
//  Created by Aakarsh Yadav on 03/10/20.
//

import UIKit

@IBDesignable
class CurrencyInput: UITextField {

    override func awakeFromNib() {
        super.awakeFromNib()
        customizeView()
    }
    override func prepareForInterfaceBuilder() {
        customizeView()
    }
    func customizeView(){
        backgroundColor = #colorLiteral(red: 0.9999126792, green: 1, blue: 0.9998814464, alpha: 1)
        layer.opacity = 0.75
        layer.cornerRadius = 5
        textAlignment = .center
        
        if let p = placeholder {
            let place = NSAttributedString(string: p,
                                           attributes: [.foregroundColor: UIColor.gray])
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        }

    }

}
