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
    var navigationButton: NAvigationButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .black
        navigationMenu = NavigationMenu(frame:  CGRect(x: -0.66*view.bounds.width - 2, y: -2, width: 0.66*view.bounds.width, height: view.bounds.height))
        navigationMenu.profileButton.addTarget(self, action: #selector(goToProfileViewController(sender:)), for: .touchUpInside)
        
        navigationButton = NAvigationButton(frame: CGRect(x: 0.05*view.bounds.width, y: 0.05*view.bounds.height, width: 0.1*view.bounds.width , height: 0.1*view.bounds.width + 4))
        navigationButton.addTarget(self, action: #selector(showNAvigationMenu(sender:)), for: .touchUpInside)
        view.addSubview(navigationButton)
        
        let firstTask = TaskView (frame: CGRect(x: 20, y: 150, width: 320, height: 160))
        view.addSubview(firstTask)
        
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
