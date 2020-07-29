//
//  ProfileView.swift
//  DHelper
//
//  Created by 123 on 23.07.2020.
//  Copyright © 2020 123. All rights reserved.
//

import UIKit

class ProfileView: UIView {
    
    var profileLvl, informationAboutProfile: UILabel!
    var profilePicture, moreInfoButton: UIButton!
    var profileName, experienseLabel: UILabel!
    var userExperience, lineOfProggres: UIView!
    var boolForProfileOpen: Bool!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        boolForProfileOpen = false
        
        self.backgroundColor = .black
        self.layer.masksToBounds = true
        self.layer.cornerRadius = 30
        self.layer.borderWidth = 2
        self.layer.borderColor = UIColor.white.cgColor
        self.clipsToBounds = true
        
        experienseLabel = UILabel(frame: CGRect(x: 0.79*self.bounds.width, y: 0.85*self.bounds.height, width: 0.2*self.bounds.width, height: 0.15*self.bounds.height))
        for i in userScore{
            experienseLabel.text = String(i%100) + "/100"
        }
        
        experienseLabel.alpha = 0
        experienseLabel.textAlignment = .center
        experienseLabel.textColor = .white
        self.addSubview(experienseLabel)
        
        //lineofExp = UIView(frame: CGRect(x: , y: <#T##CGFloat#>, width: <#T##CGFloat#>, height: <#T##CGFloat#>))
        
        userExperience = UIView(frame: CGRect(x: 0.37*self.bounds.width, y: 0.85*self.bounds.height, width: 0.42*self.bounds.width, height: 0.15*self.bounds.height))
        userExperience.layer.cornerRadius = 8
        userExperience.layer.borderColor = UIColor.white.cgColor
        userExperience.layer.borderWidth = 1
        userExperience.alpha = 0
        userExperience.backgroundColor = .clear
        self.addSubview(userExperience)
        
        for i in userScore{
            let v = userExperience.bounds.width/100
            lineOfProggres = UIView(frame: CGRect(x: 0.37*self.bounds.width, y: 0.85*self.bounds.height, width: CGFloat((i%100))*v, height: experienseLabel.bounds.height))
            lineOfProggres.backgroundColor = UIColor(red: 255/255, green: 245/255, blue: 238/255, alpha: 1)
            lineOfProggres.layer.cornerRadius = 8
            lineOfProggres.alpha = 0
            userExperience.sendSubviewToBack(lineOfProggres)
            self.addSubview(lineOfProggres)
        }
        
        for i in userPictureArray {
            if (i == 1){
        profilePicture = UIButton(frame: CGRect(x: 0.05*self.bounds.width, y: 0.07*self.bounds.height, width: 0.3*self.bounds.width, height: 0.3*self.bounds.width))
        profilePicture.setBackgroundImage(UIImage(named: "profilePicture"), for: UIControl.State.normal)
        self.addSubview(profilePicture)
            }else if(i == 2){
                profilePicture = UIButton(frame: CGRect(x: 0.05*self.bounds.width, y: 0.07*self.bounds.height, width: 0.3*self.bounds.width, height: 0.3*self.bounds.width))
                profilePicture.setBackgroundImage(UIImage(named: "profilePicture2"), for: UIControl.State.normal)
                self.addSubview(profilePicture)
            }
            if (i == 3){
                profilePicture = UIButton(frame: CGRect(x: 0.05*self.bounds.width, y: 0.07*self.bounds.height, width: 0.3*self.bounds.width, height: 0.3*self.bounds.width))
                profilePicture.setBackgroundImage(UIImage(named: "profilePicture3"), for: UIControl.State.normal)
                self.addSubview(profilePicture)
            }
        }
        
        profileName = UILabel(frame: CGRect(x: 0.35*self.bounds.width, y: 0.15*self.bounds.height, width: 0.56*self.bounds.width, height: 0.25*self.bounds.height))
        profileName.backgroundColor  = .clear
        profileName.textColor = .white
        profileName.text = "GHAZNAR67"
        profileName.textAlignment = .center
        profileName.font = UIFont(name: "Helvetica", size: FontHelper.getFontSize(strings: ["PROFILE NAME"], font: "Helvetica", maxFontSize: 120, width: profileName.bounds.width, height: profileName.bounds.height))
        
        for i in userNameArray{
            
            profileName.text! = i
        }
        
        self.addSubview(profileName)
        
        profileLvl = UILabel()
        profileLvl.frame = CGRect(x: 0.37*self.bounds.width, y: 0.45*self.bounds.height, width: 0.46*self.bounds.width, height: 0.25*self.bounds.height)
        for i in userScore{
            profileLvl.text = "Profile Lvl: " + String(i/100)
        }
        profileLvl.textAlignment = .center
        profileLvl.textColor = .white
        profileLvl.font = UIFont(name: "Helvetica", size: FontHelper.getFontSize(strings: ["PROFILE NAME"], font: "Helvetica", maxFontSize: 120, width: profileLvl.bounds.width, height: profileLvl.bounds.height))
        self.addSubview(profileLvl)
        
        moreInfoButton = UIButton(frame: CGRect(x: 0.85*self.bounds.width, y: 0.6*self.bounds.height, width: 0.1*self.bounds.width, height: 0.1*self.bounds.width))
        moreInfoButton.setBackgroundImage(UIImage(named: "infoIcon"), for: UIControl.State.normal)
        moreInfoButton.addTarget(self, action: #selector(openProfileUser(sender:)), for: .touchUpInside)
        self.addSubview(moreInfoButton)
        
        informationAboutProfile = UILabel(frame: CGRect(x: 0.05*self.bounds.width, y: 1.2*self.bounds.height, width: 0.9*self.bounds.width, height: 1.6*self.bounds.height))
        informationAboutProfile.textAlignment = .center
        informationAboutProfile.backgroundColor = .clear
        informationAboutProfile.text = "Do to be agreeable conveying oh assurance. Wicket longer admire do barton vanity itself do in it. Preferred to sportsmen it engrossed listening. Park gate sell they west hard for the. Abode stuff noisy manor blush yet the far. Up colonel so between removed so do"
        informationAboutProfile.numberOfLines = 8
        informationAboutProfile.textColor = .white
        self.addSubview(informationAboutProfile)
        
        for i in userNameArray{
            if (i == "SANYA"){
                profilePicture = UIButton(frame: CGRect(x: 0.05*self.bounds.width, y: 0.07*self.bounds.height, width: 0.3*self.bounds.width, height: 0.3*self.bounds.width))
                profilePicture.setBackgroundImage(UIImage(named: "sashaorig"), for: UIControl.State.normal)
                self.addSubview(profilePicture)
            }
        }
    }
    
    @objc func openProfileUser (sender:UIButton) {
        if (boolForProfileOpen == false){
        UIView.animate(withDuration: 0.4, animations: {
            self.boolForProfileOpen = true
            self.lineOfProggres.alpha = 1
            self.experienseLabel.alpha = 1
            self.userExperience.alpha = 1
            self.moreInfoButton.frame = CGRect(x: 0.85*self.bounds.width, y: 2.8*self.bounds.height, width: 0.1*self.bounds.width, height: 0.1*self.bounds.width)
            self.frame = CGRect(x: 20, y: 150, width: 320, height: 360)
        })
        }else{
            UIView.animate(withDuration: 0.4, animations: {
                self.boolForProfileOpen = false
                self.lineOfProggres.alpha = 0
                self.experienseLabel.alpha = 0
                self.userExperience.alpha = 0
                self.frame = CGRect(x: 20, y: 150, width: 320, height: 110)
                self.moreInfoButton.frame = CGRect(x: 0.85*self.bounds.width, y: 0.6*self.bounds.height, width: 0.1*self.bounds.width, height: 0.1*self.bounds.width)
            })
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
