//
//  AddPersonalDataViewController.swift
//  DHelper
//
//  Created by 123 on 27.07.2020.
//  Copyright © 2020 123. All rights reserved.
//

import UIKit

var nextHelloview: SecondHelloView!

class AddPersonalDataViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nextHelloview = SecondHelloView(frame: view.bounds)
        nextHelloview.backButton.addTarget(self, action: #selector(backToFirstHelloView(sender:)), for: .touchUpInside)
        nextHelloview.submitButton.addTarget(self, action: #selector(saveNameAndGoNext(sender:)), for: .touchUpInside)
        addView()
        
    }
    func addView (){
        UIView.animate(withDuration: 3, animations: {
            self.view.addSubview(nextHelloview)
        })
    }
    
    @objc func backToFirstHelloView(sender:UIButton) {
        //remove old views
        UIView.animate(withDuration: 1, animations: {
            nextHelloview.personPicture3.alpha = 0
            nextHelloview.questionLabel2.alpha = 0
            nextHelloview.personPicture1.alpha = 0
            nextHelloview.personPicture2.alpha = 0
            nextHelloview.backButton.alpha = 0
            nextHelloview.questionLabel.alpha = 0
            nextHelloview.submitButton.alpha = 0
            nextHelloview.nameField.alpha = 0
        },completion: {(finished: Bool) in
            nextHelloview.personPicture3.removeFromSuperview()
            nextHelloview.questionLabel2.removeFromSuperview()
            nextHelloview.personPicture1.removeFromSuperview()
            nextHelloview.personPicture2.removeFromSuperview()
            nextHelloview.backButton.removeFromSuperview()
            nextHelloview.questionLabel.removeFromSuperview()
            nextHelloview.submitButton.removeFromSuperview()
            nextHelloview.nameField.removeFromSuperview()
            func goToBackViewController(){
                
                let SecondViewController = ViewController()
                SecondViewController.modalPresentationStyle = .fullScreen
                self.present(SecondViewController, animated: false, completion: nil)
            }
            goToBackViewController()
        })
    }
    @objc func saveNameAndGoNext(sender: UIButton) {
        if (nextHelloview.personPicture1.layer.borderWidth == 2){
            userPictureArray.append(nextHelloview.personPicture1.tag)
        }else if (nextHelloview.personPicture2.layer.borderWidth == 2){
            userPictureArray.append(nextHelloview.personPicture2.tag)
        }else {
            userPictureArray.append(nextHelloview.personPicture3.tag)
        }
        userNameArray.append(nextHelloview.nameField.text!)
        let welcomeView = WelcomeView(frame: view.bounds)
        welcomeView.alpha = 0
        UIView.animate(withDuration: 2, animations: {
            nextHelloview.personPicture3.alpha = 0
            nextHelloview.questionLabel2.alpha = 0
            nextHelloview.personPicture1.alpha = 0
            nextHelloview.personPicture2.alpha = 0
            nextHelloview.backButton.alpha = 0
            nextHelloview.questionLabel.alpha = 0
            nextHelloview.submitButton.alpha = 0
            nextHelloview.nameField.alpha = 0
            welcomeView.alpha = 1
        }, completion: {(finished: Bool) in
            UIView.animate(withDuration: 2, animations: {
                welcomeView.alpha = 0
            }, completion: {(finished: Bool) in
                welcomeView.removeFromSuperview()
                func goToBackViewController(){
                               
                let SecondViewController = UserHomePageViewController()
                SecondViewController.modalPresentationStyle = .fullScreen
                self.present(SecondViewController, animated: false, completion: nil)
                }
             goToBackViewController()
            })
        })
        view.addSubview(welcomeView)
    }
}
