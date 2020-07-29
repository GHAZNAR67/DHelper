//
//  TaskView.swift
//  DHelper
//
//  Created by 123 on 27.07.2020.
//  Copyright © 2020 123. All rights reserved.
//

import UIKit

class TaskView: UIView {
    var timer: Timer!
    var new, new2: UIButton!
    var boolParametr: Bool!
    var newAskFrame, askImageY: CGFloat!
    var moreButtonFrame: CGRect!
    var moreinfoButton, submitButton: UIButton!
    var answerTextField: UITextField!
    var taskLeveland, nameTaskLabel, tasksExperience, moreInformationAboutTask: UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        boolParametr = false
        
        self.clipsToBounds = true
        self.backgroundColor = .clear
        self.layer.borderColor = UIColor.white.cgColor
        self.layer.borderWidth = 2
        self.layer.cornerRadius = 20
        
        submitButton = UIButton()
        submitButton.frame = CGRect(x: 0.25*self.bounds.width, y: 1.96*self.bounds.height, width: 0.5*self.bounds.width, height: 0.2*self.bounds.height)
        submitButton.backgroundColor = .clear
        submitButton.layer.masksToBounds = true
        submitButton.layer.borderColor = UIColor.white.cgColor
        submitButton.layer.borderWidth = 1
        submitButton.setTitle("Confirm", for: .normal)
        submitButton.setTitleColor(.white, for: .normal)
        submitButton.layer.cornerRadius = 20
        submitButton.titleLabel?.font = UIFont(name: "Helvetica", size: FontHelper.getFontSize(strings: ["Confirm"], font: "Helvetica", maxFontSize: 40, width: submitButton.bounds.width, height: submitButton.bounds.height))
        submitButton.addTarget(self, action: #selector(checkAnswer(sender:)), for: .touchUpInside)
        self.addSubview(submitButton)
        
        answerTextField = UITextField()
        answerTextField.frame = CGRect(x: 0.1*self.bounds.width, y: 1.6*self.bounds.height, width: 0.8*self.bounds.width, height: 0.24*self.bounds.height)
        answerTextField.alpha = 0
        answerTextField.textColor = .white
        answerTextField.textAlignment = .center
        answerTextField.font = UIFont(name: "Helvetica", size: 30)
        answerTextField.backgroundColor = .clear
        answerTextField.text = ""
        answerTextField.attributedPlaceholder = NSAttributedString (string: "Write your answer", attributes: [NSAttributedString.Key.foregroundColor: UIColor(red: 222/255, green: 222/255, blue: 222/255, alpha: 222/255)])
        let bottomLine = CALayer()
        bottomLine.frame = CGRect(origin: CGPoint(x: 0, y:answerTextField.frame.height - 1), size: CGSize(width: answerTextField.frame.width, height: 2))
        bottomLine.backgroundColor = UIColor.white.cgColor
        answerTextField.layer.addSublayer(bottomLine)
        self.addSubview(answerTextField)
        
        moreInformationAboutTask = UILabel()
        moreInformationAboutTask = UILabel()
        moreInformationAboutTask.textAlignment = .center
        moreInformationAboutTask.backgroundColor = .clear
        moreInformationAboutTask.textColor = .white
        moreInformationAboutTask.frame = CGRect(x: 0.1*self.bounds.width, y: 0.1*self.bounds.height, width: 0.8*self.bounds.width, height: 1.25*self.bounds.height)
        moreInformationAboutTask.numberOfLines = 7
        moreInformationAboutTask.alpha = 0
        moreInformationAboutTask.text = "The person who created this application is interested in whether you know who we are talking about in this matter and whether you know who should be thanked"
        moreInformationAboutTask.font = UIFont(name: "Helvetica", size: 20 )
        self.addSubview(moreInformationAboutTask)
        
        tasksExperience = UILabel()
        tasksExperience.text = "110 exp"
        tasksExperience.textAlignment = .right
        tasksExperience.textColor = .white
        tasksExperience.backgroundColor = .clear
        tasksExperience.frame = CGRect(x: 0.45*self.bounds.width, y: 0.75*self.bounds.height, width: 0.2*self.bounds.width, height: 0.18*self.bounds.height)
        tasksExperience.font = UIFont(name: "Helvetica", size: FontHelper.getFontSize(strings: ["110 exp"], font: "Helvetica", maxFontSize: 120, width: tasksExperience.bounds.width, height: tasksExperience.bounds.height))
        self.addSubview(tasksExperience)
        
        nameTaskLabel = UILabel()
        nameTaskLabel.textAlignment = .center
        nameTaskLabel.backgroundColor = .clear
        nameTaskLabel.textColor = .white
        nameTaskLabel.frame = CGRect(x: 0.1*self.bounds.width, y: 0.1*self.bounds.height, width: 0.8*self.bounds.width, height: 0.55*self.bounds.height)
        nameTaskLabel.numberOfLines = 4
        nameTaskLabel.text = "What is the name of the person who created this application?"
        nameTaskLabel.font = UIFont(name: "Helvetica", size: 20 )
        self.addSubview(nameTaskLabel)
        
        taskLeveland = UILabel()
        taskLeveland.frame = CGRect(x: 0.1*self.bounds.width, y: 0.75*self.bounds.height, width: 0.3*self.bounds.width, height: 0.18*self.bounds.height)
        taskLeveland.text = "Easy"
        taskLeveland.textAlignment = .center
        taskLeveland.textColor = .green
        taskLeveland.backgroundColor = .clear
        taskLeveland.font = UIFont(name: "Helvetica", size: FontHelper.getFontSize(strings: ["Easy"], font: "Helvetica", maxFontSize: 120, width: taskLeveland.bounds.width, height: taskLeveland.bounds.height))
        self.addSubview(taskLeveland)
        
        moreinfoButton = UIButton()
        moreinfoButton.backgroundColor = .clear
        moreinfoButton.setBackgroundImage(UIImage(named: "infoIcon"), for: UIControl.State.normal)
        moreinfoButton.frame = CGRect(x: 0.85*self.bounds.width, y: 0.7*self.bounds.height, width: 0.1*self.bounds.width, height: 0.1*self.bounds.width)
        moreinfoButton.addTarget(self, action: #selector(openTaskViewForMoreInfo(sender:)), for: .touchUpInside)
        self.addSubview(moreinfoButton)
        
        new = UIButton(frame: CGRect(x: 0.1*self.bounds.width, y: -0.1*self.bounds.width, width: 0.1*self.bounds.width, height: 0.1*self.bounds.width))
        new.setBackgroundImage(UIImage(named: "askPng"), for: UIControl.State.normal)
        new.backgroundColor = .green
        self.addSubview(new)
        
        askImageY = -0.1*self.bounds.width
        newAskFrame = 5
        
    }
    var BoolforCheckingAnswer: Bool! = false
    
    @objc func checkAnswer(sender: UIButton) {
        if( answerTextField.text == "Stas Ivanov"){
            print("succsed")
            userScore[0] = 150
        }else{
                
        }
    }
    
    @objc func openTaskViewForMoreInfo (sender: UIButton) {
        if (boolParametr == false){
            self.boolParametr = true
            UIView.animate(withDuration: 0.4, animations: {
                self.answerTextField.alpha = 1
                self.nameTaskLabel.alpha = 0
                self.nameTaskLabel.removeFromSuperview()
                self.addSubview(self.moreInformationAboutTask)
                self.moreInformationAboutTask.alpha = 1
                self.moreinfoButton.frame = CGRect(x: 0.85*self.bounds.width, y: 2.25*self.bounds.height, width: 0.1*self.bounds.width, height: 0.1*self.bounds.width)
                self.taskLeveland.frame = CGRect(x: 0.1*self.bounds.width, y: 2.3*self.bounds.height, width: 0.3*self.bounds.width, height: 0.18*self.bounds.height)
                self.tasksExperience.frame = CGRect(x: 0.45*self.bounds.width, y: 2.3*self.bounds.height, width: 0.2*self.bounds.width, height: 0.18*self.bounds.height)
                self.frame = CGRect(x: 20, y: 150, width: 320, height: 410)
            })
        }else if (boolParametr == true){
            UIView.animate(withDuration: 0.4, animations: {
                self.answerTextField.alpha = 0
                self.moreInformationAboutTask.alpha = 0
                self.moreInformationAboutTask.removeFromSuperview()
                self.addSubview(self.nameTaskLabel)
                self.moreInformationAboutTask.alpha = 1
                self.nameTaskLabel.alpha = 1
                self.frame = CGRect(x: 20, y: 150, width: 320, height: 160)
               self.moreinfoButton.frame = CGRect(x: 0.85*self.bounds.width, y: 0.7*self.bounds.height, width: 0.1*self.bounds.width, height: 0.1*self.bounds.width)
                self.taskLeveland.frame = CGRect(x: 0.1*self.bounds.width, y: 0.75*self.bounds.height, width: 0.3*self.bounds.width, height: 0.18*self.bounds.height)
                self.tasksExperience.frame = CGRect(x: 0.45*self.bounds.width, y: 0.75*self.bounds.height, width: 0.2*self.bounds.width, height: 0.18*self.bounds.height)
                self.boolParametr = false
            })
        }
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
