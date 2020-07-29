//
//  NavigationMenu.swift
//  DHelper
//
//  Created by 123 on 23.07.2020.
//  Copyright © 2020 123. All rights reserved.
//

import UIKit

class NavigationMenu: UIView {
    var menuView: UIView!
    var closeMenuButton, tasksMoveButton, profileButton: UIButton!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .black
        layer.borderWidth = 2
        layer.borderColor = UIColor.white.cgColor
        
        profileButton = UIButton(frame: CGRect(x: 0.05*self.bounds.width, y: 0.35*self.bounds.height, width: 0.9*self.bounds.width, height: 0.1*self.bounds.height))
        profileButton.setTitle("Profile", for: .normal)
        profileButton.titleLabel?.font = UIFont(name: "Helvetica", size: FontHelper.getFontSize(strings: ["Profile"], font: "Helvetica", maxFontSize: 120, width: 0.7*profileButton.bounds.width, height: 0.6*profileButton.bounds.height))
        profileButton.setTitleColor(.white, for: .normal)
        profileButton.backgroundColor = .clear
        let bottomLinefortasButton3 = CALayer()
        bottomLinefortasButton3.frame = CGRect(origin: CGPoint(x: 0.25*profileButton.frame.width, y:profileButton.frame.height - 1), size: CGSize(width: 0.5*profileButton.frame.width , height: 2))
        bottomLinefortasButton3.backgroundColor = UIColor.white.cgColor
        profileButton.layer.addSublayer(bottomLinefortasButton3)
        addSubview(profileButton)
        
        tasksMoveButton = UIButton(frame: CGRect(x: 0.05*self.bounds.width, y: 0.21*self.bounds.height, width: 0.9*self.bounds.width, height: 0.1*self.bounds.height))
        tasksMoveButton.setTitle("Lessons", for: .normal)
        tasksMoveButton.titleLabel?.font = UIFont(name: "Helvetica", size: FontHelper.getFontSize(strings: ["Lessons"], font: "Helvetica", maxFontSize: 120, width: 0.7*tasksMoveButton.bounds.width, height: 0.6*tasksMoveButton.bounds.height))
        tasksMoveButton.setTitleColor(.white, for: .normal)
        tasksMoveButton.backgroundColor = .clear
        let bottomLinefortasButton = CALayer()
        bottomLinefortasButton.frame = CGRect(origin: CGPoint(x: 0.25*tasksMoveButton.frame.width, y:tasksMoveButton.frame.height - 1), size: CGSize(width: 0.5*tasksMoveButton.frame.width , height: 2))
        bottomLinefortasButton.backgroundColor = UIColor.white.cgColor
        tasksMoveButton.layer.addSublayer(bottomLinefortasButton)
        addSubview(tasksMoveButton)
        
        closeMenuButton = UIButton()
        closeMenuButton.frame = CGRect (x: 0.05*self.bounds.width, y: 0.005*self.bounds.height, width: 0.9*self.bounds.width, height: 0.1*self.bounds.height)
        closeMenuButton.setTitle("Back", for: .normal)
        closeMenuButton.titleLabel?.font = UIFont(name: "Helvetica", size: FontHelper.getFontSize(strings: ["Back"], font: "Helvetica", maxFontSize: 120, width: 0.7*closeMenuButton.bounds.width, height: 0.6*closeMenuButton.bounds.height))
        closeMenuButton.setTitleColor(.white, for: .normal)
        closeMenuButton.backgroundColor = .clear
        let bottomLine = CALayer()
        bottomLine.frame = CGRect(origin: CGPoint(x: 0.25*closeMenuButton.frame.width, y:closeMenuButton.frame.height - 1), size: CGSize(width: 0.5*closeMenuButton.frame.width , height: 2))
        bottomLine.backgroundColor = UIColor.white.cgColor
        closeMenuButton.layer.addSublayer(bottomLine)
        closeMenuButton.addTarget(self, action: #selector(closeNavigationMenu(sender:)), for: .touchUpInside)
        addSubview(closeMenuButton)
        
    }
    
    @objc func closeNavigationMenu (sender: UIButton) {
        UIView.animate(withDuration: 0.2, animations: {
            self.frame = CGRect(x: -0.66*self.bounds.width - 2, y: -2, width: 0.66*self.bounds.width, height: self.bounds.height + 4)
        }, completion: {(finished: Bool) in
            self.removeFromSuperview()
        })
        
    }
        
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
