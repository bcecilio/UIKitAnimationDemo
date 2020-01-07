//
//  ViewController.swift
//  BreakDemo
//
//  Created by Brendon Cecilio on 1/5/20.
//  Copyright © 2020 Brendon Cecilio. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startAnimation()
        startMoreAnimation()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        startAnimation()
        startMoreAnimation() 
    }
    
    func startAnimation() {
        let view = UIView()
        view.alpha = 0
        view.backgroundColor = .systemBlue
        view.frame = CGRect(x: 100, y: 400, width: 200, height: 200)
        self.view.addSubview(view)
        
        UIView.animate(withDuration: 2.3) {
            view.alpha = 1
        }
    }
    
    func startMoreAnimation() {
        let shape1 = UIView()
        let shape2 = UIView()
        let shape3 = UIView()
        
        shape1.alpha = 0
        shape2.alpha = 0
        shape3.alpha = 0
        
        shape1.backgroundColor = .systemRed
        shape2.backgroundColor = .yellow
        shape3.backgroundColor = .green
        
        shape1.frame = CGRect(x: 20, y: 200, width: 50, height: 150)
        shape2.frame = CGRect(x: 160, y: 300, width: 100, height: 200)
        shape3.frame = CGRect(x: 70, y: 670, width: 50, height: 50)
        
        self.view.addSubview(shape1)
        self.view.addSubview(shape2)
        self.view.addSubview(shape3)
        
        UIView.animate(withDuration: 3.0) {
            shape3.alpha = 1
        }
        
        UIView.animate(withDuration: 5.0) {
            shape1.alpha = 1
        }
        
        UIView.animate(withDuration: 4.6) {
            shape2.alpha = 0.7
        }
    }
}
