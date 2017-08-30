//
//  ViewController.swift
//  calayer
//
//  Created by Kleinsche on 2017/8/30.
//  Copyright © 2017年 Kleinsche. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let img = UIImageView()
        img.frame = self.view.frame
        img.image = #imageLiteral(resourceName: "house3")
        view.addSubview(img)
        
        let gradientLayer = CAGradientLayer.init()
        gradientLayer.frame = img.frame
        gradientLayer.colors = [UIColor.gray.cgColor,UIColor.clear.cgColor,UIColor.clear.cgColor,UIColor.gray.cgColor]
        gradientLayer.startPoint = CGPoint(x: 0, y: 1)
        gradientLayer.endPoint = CGPoint(x: 1, y: 1)
        gradientLayer.locations = [0.1,0.3,0.7,0.9]
        
        img.layer.addSublayer(gradientLayer)
    }

}

