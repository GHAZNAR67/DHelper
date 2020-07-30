//
//  LessonsViewController.swift
//  DHelper
//
//  Created by 123 on 27.07.2020.
//  Copyright © 2020 123. All rights reserved.
//

import UIKit

class LessonsViewController: UIViewController {
    var navigationMenu: NavigationMenu!
    var mainScroll: UIScrollView!
    var navigationButton: NAvigationButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainScroll = UIScrollView(frame: CGRect(x: 0, y: 0.15*view.bounds.height, width: view.bounds.width, height: 0.85*view.bounds.height))
        mainScroll.backgroundColor = .black
        mainScroll.contentSize = CGSize(width: view.bounds.width, height: view.bounds.height + 200)
        view.addSubview(mainScroll)
        
        view.backgroundColor = .black
        navigationMenu = NavigationMenu(frame:  CGRect(x: -0.66*view.bounds.width - 2, y: -2, width: 0.66*view.bounds.width, height: view.bounds.height))
        navigationMenu.profileButton.addTarget(self, action: #selector(goToProfileViewController(sender:)), for: .touchUpInside)
        
        navigationButton = NAvigationButton(frame: CGRect(x: 0.05*view.bounds.width, y: 0.05*view.bounds.height, width: 0.1*view.bounds.width , height: 0.1*view.bounds.width + 4))
        navigationButton.addTarget(self, action: #selector(showNAvigationMenu(sender:)), for: .touchUpInside)
        view.addSubview(navigationButton)
        
        let thirdTask = TaskView (frame: CGRect(x: 25, y: 380, width: 320, height: 160), moreInformationaboutTask: "The person who created this application is interested in whether you know who we are talking about in this matter and whether you know who should be thanked", taskExp: 110, taskName: "Who is a creator of this good idea(dead)", taskLevel: "Medium", number: 0, selfframeY: 380)
        mainScroll.addSubview(thirdTask)
        
        let sceondTask = TaskView (frame: CGRect(x: 25, y: 200, width: 320, height: 160), moreInformationaboutTask: "The person who created this application is interested in whether you know who we are talking about in this matter and whether you know who should be thanked", taskExp: 200, taskName: "Who is a creator of this good idea(dead)", taskLevel: "Hard", number: 1, selfframeY: 200)
        mainScroll.sendSubviewToBack(sceondTask)
        mainScroll.addSubview(sceondTask)
        
        let firstTask = TaskView (frame: CGRect(x: 25, y: 20, width: 320, height: 160), moreInformationaboutTask: "The person who created this application is interested in whether you know who we are talking about in this matter and whether you know who should be thanked", taskExp: 60, taskName: "Who is a creator of this good idea(dead)", taskLevel: "Easy", number: 2, selfframeY: 20)
        view.bringSubviewToFront(firstTask)
        mainScroll.addSubview(firstTask)
        
        let mainInformation: UILabel = {
           let  mainInformationLabeL = UILabel()
                mainInformationLabeL.frame = CGRect(x: 0.2*view.bounds.width, y: 0.055*view.bounds.height, width: 0.6*view.bounds.width, height: 0.05*view.bounds.height)
               mainInformationLabeL.textAlignment = .center
               mainInformationLabeL.text = "Lessons page"
               mainInformationLabeL.textColor = .white
               mainInformationLabeL.alpha = 1
               mainInformationLabeL.backgroundColor = .clear
               mainInformationLabeL.font = UIFont(name: "Helvetica", size: FontHelper.getFontSize(strings: ["Lessons page"], font:  "Helvetica", maxFontSize: 50, width: 0.9*mainInformationLabeL.bounds.width, height: 0.9*mainInformationLabeL.bounds.height))
            return mainInformationLabeL
        }()
        view.addSubview(mainInformation)

    }
    
    @objc func showNAvigationMenu (sender: UIButton) {
        UIView.animate(withDuration: 0.2, animations: {
            self.view.addSubview(self.navigationMenu)
            self.view.bringSubviewToFront(self.navigationMenu)
            self.navigationMenu.frame = CGRect(x: 0*self.view.bounds.width - 2, y: -2, width: 0.66*self.view.bounds.width, height: self.view.bounds.height + 4)
        })
    }
    @objc func goToProfileViewController(sender: UIButton) {
        let profileVC = UserHomePageViewController()
        profileVC.modalPresentationStyle = .fullScreen
        present(profileVC, animated: true, completion: nil)
    }
    


}
