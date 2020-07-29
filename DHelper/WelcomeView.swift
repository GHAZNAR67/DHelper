//
//  WelcomeView.swift
//  DHelper
//
//  Created by 123 on 22.07.2020.
//  Copyright © 2020 123. All rights reserved.
//

import UIKit

class WelcomeView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.backgroundColor = .black
        
        for i in userNameArray{
            let welcomeView = UILabel()
            welcomeView.frame = CGRect(x: 0.05*self.bounds.width, y: 0.35*self.bounds.height, width: 0.9*self.bounds.width, height: 0.2*self.bounds.height)
            welcomeView.textAlignment = .center
            welcomeView.text = "Welcome,\n" + i
            welcomeView.numberOfLines = 2
            welcomeView.font = UIFont(name: "Helvetica", size: FontHelper.getFontSize(strings: [welcomeView.text!], font: "Helvetica", maxFontSize: 120, width: 0.9*welcomeView.bounds.width, height: 0.9*welcomeView.bounds.height))
            welcomeView.textColor = .white
            welcomeView.backgroundColor = .clear
            self.addSubview(welcomeView)
            
        }
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
