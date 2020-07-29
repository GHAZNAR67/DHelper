//
//  FirstHelloV iew.swift
//  DHelper
//
//  Created by 123 on 22.07.2020.
//  Copyright © 2020 123. All rights reserved.
//

import UIKit


class FirstHelloView: UIView {
    
    var nextButton: UIButton!
    var moreInfoLabel, HelloLabel: UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .black
        
            HelloLabel = UILabel()
            HelloLabel.textAlignment = .center
            HelloLabel.textColor = .white
            HelloLabel.text = "Welcom to the DHelper"
            HelloLabel.font = UIFont(name: "Helvetica", size: 30)
            HelloLabel.frame = CGRect(x: 0.05*self.bounds.width, y: 0.2*self.bounds.height, width: 0.9*self.bounds.width, height: 0.15*self.bounds.height)
            self.addSubview(HelloLabel)
        
            moreInfoLabel = UILabel()
            moreInfoLabel.frame = CGRect(x: 0.1*self.bounds.width, y: 0.37*self.bounds.height, width: 0.8*self.bounds.width, height: 0.5*self.bounds.height)
            moreInfoLabel.text = "In this app you will learn new information that can be useful for you in your life. There is the biggest library with information about XXX"
            moreInfoLabel.numberOfLines = 7
            moreInfoLabel.font = UIFont(name: "Helvetica", size: 20)
            moreInfoLabel.textColor = .white
            moreInfoLabel.textAlignment = .center
            moreInfoLabel.backgroundColor = .clear
            self.addSubview(moreInfoLabel)
        
            nextButton = UIButton()
            nextButton.backgroundColor = .clear
            nextButton.layer.cornerRadius = 30
            nextButton.layer.borderWidth = 1
            nextButton.layer.borderColor = UIColor.white.cgColor
            nextButton.setTitle("Next", for: .normal)
            nextButton.setTitleColor(.white, for: .normal)
            nextButton.frame = CGRect(x: 0.2*self.bounds.width, y: 0.9*self.bounds.height, width: 0.6*self.bounds.width, height: 0.09*self.bounds.height)
            nextButton.titleLabel?.font = UIFont(name: "Helvetica", size: FontHelper.getFontSize(strings: ["Helvetica"], font: "Helvetica", maxFontSize: 120, width: 0.7*nextButton.bounds.width, height: 0.6*nextButton.bounds.height))
            self.addSubview(nextButton)
}
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
       }
    
}
