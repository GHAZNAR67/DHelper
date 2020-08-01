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
    var mainScroll: UIScrollView = {
       let scroll = UIScrollView()
        scroll.backgroundColor = .black
        return scroll
    }()
    var mainScroll2: UIScrollView = {
       let scroll = UIScrollView()
        scroll.backgroundColor = .black
        scroll.alpha = 0
        return scroll
    }()
    var navigationButton: NAvigationButton!
    let choseCategoryOfTasksButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .black
        button.setTitle("Select a category ∨", for: .normal)
        button.titleLabel?.font = UIFont(name: "Helvetica", size: 25.5)
        button.layer.borderColor = UIColor.white.cgColor
        button.layer.cornerRadius = 27
        button.layer.borderWidth = 1
        button.setTitleColor( .white, for: .normal)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .black
        
        choseCategoryOfTasksButton.frame = CGRect(x: 0.15*view.bounds.width, y: 0.152*view.bounds.height, width: 0.7*view.bounds.width, height: 0.08*view.bounds.height)
        choseCategoryOfTasksButton.addTarget(self, action: #selector(showCategoryViewPanel(sender:)), for: .touchUpInside)
        view.addSubview(choseCategoryOfTasksButton)
        
        mainScroll2 = UIScrollView(frame: CGRect(x: 0, y: 0.25*view.bounds.height, width: view.bounds.width, height: 0.75*view.bounds.height))
        mainScroll2.contentSize = CGSize(width: view.bounds.width, height: view.bounds.height + 200)
        
        mainScroll = UIScrollView(frame: CGRect(x: 0, y: 0.25*view.bounds.height, width: view.bounds.width, height: 0.75*view.bounds.height))
        mainScroll.contentSize = CGSize(width: view.bounds.width, height: view.bounds.height + 200)
        view.addSubview(mainScroll)
        
        navigationMenu = NavigationMenu(frame:  CGRect(x: -0.66*view.bounds.width - 2, y: -2, width: 0.66*view.bounds.width, height: view.bounds.height))
        navigationMenu.profileButton.addTarget(self, action: #selector(goToProfileViewController(sender:)), for: .touchUpInside)
        
        navigationButton = NAvigationButton(frame: CGRect(x: 0.05*view.bounds.width, y: 0.05*view.bounds.height, width: 0.1*view.bounds.width , height: 0.1*view.bounds.width + 4))
        navigationButton.addTarget(self, action: #selector(showNAvigationMenu(sender:)), for: .touchUpInside)
        view.addSubview(navigationButton)
        
        let thirdTask = TaskView (frame: CGRect(x: 25, y: 20, width: 320, height: 160), moreInformationaboutTask: "The person who created this application is interested in whether you know who we are talking about in this matter and whether you know who should be thanked", taskExp: 110, taskName: "Who is a creator of this good idea(dead)", taskLevel: "Medium", number: 0, selfframeY: 20)
        mainScroll2.addSubview(thirdTask)
        
        let sceondTask = TaskView (frame: CGRect(x: 25, y: 200, width: 320, height: 160), moreInformationaboutTask: "The person who created this application is interested in whether you know who we are talking about in this matter and whether you know who should be thanked", taskExp: 180, taskName: "Who is a creator of this good idea(dead)", taskLevel: "Hard", number: 1, selfframeY: 200)
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
    let categoryView: UIView = {
       let view = UIView()
        view.backgroundColor = .black
        view.layer.cornerRadius = 25
        view.layer.borderColor = UIColor.white.cgColor
        view.layer.borderWidth = 1
        view.alpha = 0
        return view
    }()
    let backView: UIView = {
        let view = UIView()
        view.backgroundColor = .black
        view.alpha = 0
        return view
    }()
    let backButton: UIButton = {
       let button = UIButton()
        button.backgroundColor = .clear
        button.setTitle("< Back", for: .normal)
        button.titleLabel?.font = UIFont(name: "Helvetica", size: 20)
        button.alpha = 0
        return button
    }()
    let choseButtonInChosecategoryView: UIButton = {
       let button = UIButton()
        button.layer.borderColor = UIColor.white.cgColor
        button.layer.borderWidth = 1
        button.setTitle("Ok", for: .normal)
        button.backgroundColor = .clear
        button.layer.cornerRadius = 20
        button.titleLabel?.font = UIFont(name: "Helvetica", size: 25)
        button.alpha = 0
        return button
    }()
    let firstCategoryButton: UIButton = {
       let button = UIButton()
        button.backgroundColor = .white
        button.layer.cornerRadius = 20
        button.setTitle("First Category", for: .normal)
        button.titleLabel?.font = UIFont(name: "Helvetica", size: 25)
        button.setTitleColor( .black, for: .normal)
        button.alpha = 0
        return button
    }()
    let SecondCategoryButton: UIButton = {
       let button = UIButton()
        button.backgroundColor = .black
        button.setTitle("Second Category", for: .normal)
        button.titleLabel?.font = UIFont(name: "Helvetica", size: 25)
        button.setTitleColor( .white, for: .normal)
        button.alpha = 0
        return button
    }()
    
    @objc func showCategoryViewPanel(sender: UIButton) {
        //add frame for all elements
        backView.frame = (view.bounds)
        categoryView.frame = CGRect(x: 0.15*self.view.bounds.width, y: 0.2*self.view.bounds.height, width: 0.7*self.view.bounds.width, height: 0.6*self.view.bounds.height)
        backButton.frame = CGRect(x: 0.03*categoryView.bounds.width, y: 0.05*categoryView.bounds.height, width: 0.3*categoryView.bounds.width, height: 0.1*categoryView.bounds.height)
        firstCategoryButton.frame = CGRect(x: 0.05*categoryView.bounds.width, y: 0.2*categoryView.bounds.height, width: 0.9*categoryView.bounds.width, height: 0.1*categoryView.bounds.height)
        SecondCategoryButton.frame = CGRect(x: 0.05*categoryView.bounds.width, y: 0.35*categoryView.bounds.height, width: 0.9*categoryView.bounds.width, height: 0.1*categoryView.bounds.height)
        choseButtonInChosecategoryView.frame = CGRect(x: 0.3*categoryView.bounds.width, y: 0.85*categoryView.bounds.height, width: 0.4*categoryView.bounds.width, height: 0.1*categoryView.bounds.height)
        //add this views to screen
        self.view.addSubview(backView)
        self.categoryView.addSubview(self.SecondCategoryButton)
        self.categoryView.addSubview(self.backButton)
        self.categoryView.addSubview(self.choseButtonInChosecategoryView)
        self.categoryView.addSubview(self.firstCategoryButton)
        self.view.addSubview(self.categoryView)
        UIView.animate(withDuration: 0.5, animations: {
            //changing alpha for this views
            self.SecondCategoryButton.alpha = 1
            self.backButton.alpha = 1
            self.choseButtonInChosecategoryView.alpha = 1
            self.firstCategoryButton.alpha = 1
            self.backView.alpha = 0.6
            self.categoryView.alpha = 1
            //changing position
            self.backView.bringSubviewToFront(self.categoryView)
            self.view.bringSubviewToFront(self.categoryView)
        })
        //add this functions for their elements
        self.backButton.addTarget(self, action: #selector(closeCategoryView(sender:)), for: .touchUpInside)
        self.firstCategoryButton.addTarget(self, action: #selector(choseFirstCategory(sender:)), for: .touchUpInside)
        self.choseButtonInChosecategoryView.addTarget(self, action: #selector(okCheck(sender:)), for: .touchUpInside)
        self.SecondCategoryButton.addTarget(self, action: #selector(choseSeconCategory(sender:)), for: .touchUpInside)
    }
    @objc func showNAvigationMenu (sender: UIButton) {
        UIView.animate(withDuration: 0.2, animations: {
            self.view.addSubview(self.navigationMenu)
            self.view.bringSubviewToFront(self.navigationMenu)
            self.navigationMenu.frame = CGRect(x: 0*self.view.bounds.width - 2, y: -2, width: 0.66*self.view.bounds.width, height: self.view.bounds.height + 4)
        })
    }
    @objc func closeCategoryView(sender: UIButton) {
        UIView.animate(withDuration: 0.5, animations: {
                       self.backView.alpha = 0
                       self.categoryView.alpha = 0
                   }, completion: {(finished: Bool) in
                       self.categoryView.removeFromSuperview()
                       self.backView.removeFromSuperview()
                   })
               }
    @objc func okCheck (sender: UIButton) {
        if (firstCategoryButton.backgroundColor == .white){
            closeCategoryView(sender: choseButtonInChosecategoryView)
            UIView.animate(withDuration: 0.8, animations: {
                self.mainScroll2.alpha = 0
                self.view.addSubview(self.mainScroll)
                self.mainScroll.alpha = 1
            },completion: {(finished: Bool) in
                self.mainScroll2.removeFromSuperview()
            })
        }else{
            closeCategoryView(sender: choseButtonInChosecategoryView)
            UIView.animate(withDuration: 0.8, animations: {
                self.mainScroll.alpha = 0
                self.view.addSubview(self.mainScroll2)
                self.mainScroll2.alpha = 1
            },completion: {(finished: Bool) in
                self.mainScroll.removeFromSuperview()
            })
        }
    }
    @objc func choseFirstCategory (sender: UIButton) {
                   self.firstCategoryButton.layer.cornerRadius = 20
                   self.firstCategoryButton.setTitleColor( .black, for: .normal)
                   self.firstCategoryButton.backgroundColor = .white
                   self.SecondCategoryButton.setTitleColor( . white, for: .normal)
                   self.SecondCategoryButton.backgroundColor = .black
               }
    @objc func choseSeconCategory (sender: UIButton){
                   self.SecondCategoryButton.layer.cornerRadius = 20
                   self.SecondCategoryButton.setTitleColor( .black, for: .normal)
                   self.SecondCategoryButton.backgroundColor = .white
                   self.firstCategoryButton.setTitleColor( . white, for: .normal)
                   self.firstCategoryButton.backgroundColor = .black
               }
    @objc func goToProfileViewController(sender: UIButton) {
        let profileVC = UserHomePageViewController()
        profileVC.modalPresentationStyle = .fullScreen
        present(profileVC, animated: true, completion: nil)
    }
    


}
