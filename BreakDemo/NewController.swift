//
//  NewController.swift
//  BreakDemo
//
//  Created by Brendon Cecilio on 1/7/20.
//  Copyright © 2020 Brendon Cecilio. All rights reserved.
//

import UIKit

class NewController: UIViewController {
    
    @IBOutlet weak var avatarImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        avatarImage.isUserInteractionEnabled = true
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(NewController.addPulse))
        tapGestureRecognizer.numberOfTapsRequired = 1
        avatarImage.addGestureRecognizer(tapGestureRecognizer)
    }
    
    @objc func addPulse(){
        let pulse = Pulsing(numberOfPulses: 1, radius: 110, position: avatarImage.center)
        pulse.animationDuration = 0.8
        pulse.backgroundColor = UIColor.blue.cgColor
        
        self.view.layer.insertSublayer(pulse, below: avatarImage.layer)
    }

}
