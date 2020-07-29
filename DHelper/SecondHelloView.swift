//
//  SecondHelloView.swift
//  DHelper
//
//  Created by 123 on 22.07.2020.
//  Copyright © 2020 123. All rights reserved.
//

import UIKit
class SecondHelloView: UIView {
    var nameField: UITextField!
    var submitButton, backButton: UIButton!
    var questionLabel, questionLabel2: UILabel!
    var personPicture1, personPicture2, personPicture3: ProfilePictures!
    override init(frame: CGRect){
    super.init(frame: frame)
    
        self.backgroundColor = .black
        
        questionLabel2 = UILabel()
        questionLabel2.alpha = 1
        questionLabel2.frame = CGRect(x: 0.1*self.bounds.width, y: 0.55*self.bounds.height, width: 0.8*self.bounds.width, height: 0.1*self.bounds.height)
        questionLabel2.backgroundColor = .clear
        questionLabel2.textColor = .white
        questionLabel2.textAlignment = .center
        questionLabel2.font = UIFont(name: "Helvetica", size: FontHelper.getFontSize(strings: ["Choose one of the avatars"], font: "Helvetica", maxFontSize: 120, width: 0.7*questionLabel2.bounds.width, height: 0.6*questionLabel2.bounds.height))
        questionLabel2.text = "Choose one of the avatars"
        self.addSubview(questionLabel2)
        
        
        //person cats pictures
        personPicture1 = ProfilePictures(frame: CGRect(x: 0.075*self.bounds.width, y: 0.65*self.bounds.height, width: 0.25*self.bounds.width, height: 0.25*self.bounds.width), imagename: "profilePicture")
        personPicture1.tag = 1
        personPicture1.alpha = 1
        self.addSubview(personPicture1)
        
        personPicture2 = ProfilePictures(frame: CGRect(x: 0.375*self.bounds.width, y: 0.65*self.bounds.height, width: 0.25*self.bounds.width, height: 0.25*self.bounds.width), imagename: "profilePicture2")
        personPicture2.tag = 2
        personPicture2.alpha = 1
        self.addSubview(personPicture2)
        
        personPicture3 = ProfilePictures(frame: CGRect(x: 0.675*self.bounds.width, y: 0.65*self.bounds.height, width: 0.25*self.bounds.width, height: 0.25*self.bounds.width), imagename: "profilePicture3")
        personPicture3.tag = 3
        personPicture3.alpha = 1
        self.addSubview(personPicture3)
        //
        
        nameField = UITextField()
        nameField.alpha = 1
        nameField.frame = CGRect(x: 0.1*self.bounds.width, y: 0.4*self.bounds.height, width: 0.8*self.bounds.width, height: 0.1*self.bounds.height)
        nameField.textColor = .white
        nameField.textAlignment = .center
        nameField.font = UIFont(name: "Helvetica", size: 30)
        nameField.backgroundColor = .clear
        nameField.text = ""
        nameField.attributedPlaceholder = NSAttributedString (string: "Write your name", attributes: [NSAttributedString.Key.foregroundColor: UIColor(red: 222/255, green: 222/255, blue: 222/255, alpha: 222/255)])
        let bottomLine = CALayer()
        bottomLine.frame = CGRect(origin: CGPoint(x: 0, y:nameField.frame.height - 1), size: CGSize(width: nameField.frame.width, height: 2))
        bottomLine.backgroundColor = UIColor.white.cgColor
        nameField.layer.addSublayer(bottomLine)
        self.addSubview(nameField)

        submitButton = UIButton()
        submitButton.alpha = 1
        submitButton.frame = CGRect(x: 0.2*self.bounds.width, y: 0.9*self.bounds.height, width: 0.6*self.bounds.width, height: 0.09*self.bounds.height)
        submitButton.backgroundColor = .clear
        submitButton.setTitle("To start using", for: .normal)
        submitButton.titleLabel?.font = UIFont(name: "Helvetica", size: FontHelper.getFontSize(strings: ["Helvetica"], font: "Helvetica", maxFontSize: 120, width: 0.7*submitButton.bounds.width, height: 0.6*submitButton.bounds.height))
        submitButton.layer.borderColor = UIColor.white.cgColor
        submitButton.layer.borderWidth = 1
        submitButton.layer.cornerRadius = 30
        self.addSubview(submitButton)
        
        questionLabel = UILabel()
        questionLabel.alpha = 1
        questionLabel.frame = CGRect(x: 0.15*self.bounds.width, y: 0.3*self.bounds.height, width: 0.7*self.bounds.width, height: 0.1*self.bounds.height)
        questionLabel.backgroundColor = .clear
        questionLabel.textColor = .white
        questionLabel.textAlignment = .center
        questionLabel.font = UIFont(name: "Helvetica", size: FontHelper.getFontSize(strings: ["How can we contact you?"], font: "Helvetica", maxFontSize: 120, width: 0.7*questionLabel.bounds.width, height: 0.6*questionLabel.bounds.height))
        questionLabel.text = "How can we contact you?"
        self.addSubview(questionLabel)
        
        backButton = UIButton()
        backButton.alpha = 1
        backButton.frame = CGRect(x: 0.02*self.bounds.width, y: 0.05*self.bounds.height, width: 0.2*self.bounds.height, height: 0.08*self.bounds.height)
        backButton.backgroundColor = .clear
        backButton.setTitle("<  Back", for: .normal)
        backButton.titleLabel?.font = UIFont(name: "Helvetica", size: 20)
        self.addSubview(backButton)
        
        addViewsToScreen()
    }
    
    @objc func  addViewsToScreen() {
        UIView.animate(withDuration: 1, animations: {
            self.personPicture3.alpha = 1
            self.questionLabel2.alpha = 1
            self.personPicture1.alpha = 1
            self.personPicture2.alpha = 1
            self.backButton.alpha = 1
            self.submitButton.alpha = 1
            self.questionLabel.alpha = 1
            self.nameField.alpha = 1
        })
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
