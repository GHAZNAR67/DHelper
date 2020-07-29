//
//  UserHomePageViewController.swift
//  DHelper
//
//  Created by 123 on 27.07.2020.
//  Copyright © 2020 123. All rights reserved.
//

import UIKit

class UserHomePageViewController: UIViewController {
    var homeView: HomeViewForUser!
    override func viewDidLoad() {
        super.viewDidLoad()

        homeView = HomeViewForUser(frame: view.bounds)
        homeView.navigationMenu.tasksMoveButton.addTarget(self, action: #selector(moveToLessonsViewController(sender:)), for: .touchUpInside)
        view.addSubview(homeView)
    }
    @objc func moveToLessonsViewController(sender: UIButton) {
        let LessonsController = LessonsViewController()
        LessonsController.modalPresentationStyle = .fullScreen
        self.present(LessonsController, animated: true, completion: nil)
    }
}
