//
//  TextFieldController.swift
//  BreakDemo
//
//  Created by Brendon Cecilio on 1/7/20.
//  Copyright © 2020 Brendon Cecilio. All rights reserved.
//

import UIKit

class TextFieldController: UITextField {

    func shake() {
        let animation = CABasicAnimation(keyPath: "position")
        animation.duration = 0.05
        animation.repeatCount = 5
        animation.autoreverses = true
        animation.fromValue = NSValue(cgPoint: CGPoint(x: self.center.x - 4, y: self.center.y))
        animation.toValue = NSValue(cgPoint: CGPoint(x: self.center.x + 4, y: self.center.y))
        
        self.layer.add(animation, forKey: "position")
    }
}
