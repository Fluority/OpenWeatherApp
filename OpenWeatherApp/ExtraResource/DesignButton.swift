//
//  DesignButton.swift
//  OpenWeatherApp
//
//  Created by liene.krista.neimane on 19/05/2023.
//

import UIKit

@IBDesignable class DesignButton: BounceButton {
    
    @IBInspectable var borderWidth: CGFloat = 0 {
        didSet{
            self.layer.borderWidth = borderWidth
        }
    }
    
    @IBInspectable var borderColor: UIColor = UIColor.clear {
        didSet{
            self.layer.borderColor = borderColor.cgColor
        }
    }
    
    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet{
            self.layer.cornerRadius = cornerRadius
        }
    }
    
}
