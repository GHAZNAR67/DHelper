//
//  HomeViewForUser.swift
//  DHelper
//
//  Created by 123 on 22.07.2020.
//  Copyright © 2020 123. All rights reserved.
//

import UIKit

class HomeViewForUser: UIView {
    var mainInformationLabeL: UILabel!
    var navigationMenu: NavigationMenu!
    var profileView: ProfileView!
    var openNavigayionMenu: NAvigationButton!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.backgroundColor = .black
            
        openNavigayionMenu = NAvigationButton(frame: CGRect(x: 0.05*self.bounds.width, y: 0.05*self.bounds.height, width: 0.1*self.bounds.width , height: 0.1*self.bounds.width + 4))
        openNavigayionMenu.alpha = 0
        openNavigayionMenu.addTarget(self, action: #selector(showNAvigationMenu(sender:)), for: .touchUpInside)
        self.addSubview(openNavigayionMenu)
        
        navigationMenu = NavigationMenu(frame: CGRect(x: -0.66*self.bounds.width - 2, y: -2, width: 0.66*self.bounds.width, height: self.bounds.height))
        
        mainInformationLabeL = UILabel()
        mainInformationLabeL.frame = CGRect(x: 0.2*self.bounds.width, y: 0.055*self.bounds.height, width: 0.6*self.bounds.width, height: 0.05*self.bounds.height)
        mainInformationLabeL.textAlignment = .center
        mainInformationLabeL.text = "Home page"
        mainInformationLabeL.textColor = .white
        mainInformationLabeL.alpha = 0
        mainInformationLabeL.backgroundColor = .clear
        mainInformationLabeL.font = UIFont(name: "Helvetica", size: FontHelper.getFontSize(strings: ["Home page"], font: "Helvetica", maxFontSize: 50, width: 0.9*mainInformationLabeL.bounds.width, height: 0.9*mainInformationLabeL.bounds.height))
        self.addSubview(mainInformationLabeL)
        
        profileView = ProfileView(frame: CGRect(x: 20, y: 150, width: 320, height: 110))
        profileView.alpha = 0
        self.addSubview(profileView)
        
        addThisViewToScreen()
        
    }
    @objc func addThisViewToScreen() {
        UIView.animate(withDuration: 0.5, animations: {
            self.mainInformationLabeL.alpha = 1
            self.profileView.alpha = 1
            self.openNavigayionMenu.alpha = 1
        })
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    @objc func showNAvigationMenu (sender: UIButton) {
        UIView.animate(withDuration: 0.2, animations: {
            self.addSubview(self.navigationMenu)
            self.bringSubviewToFront(self.navigationMenu)
            self.navigationMenu.frame = CGRect(x: 0*self.bounds.width - 2, y: -2, width: 0.66*self.bounds.width, height: self.bounds.height + 4)
        })
    }
}
