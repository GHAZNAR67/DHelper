//
//  TasksViewController.swift
//  DHelper
//
//  Created by 123 on 23.07.2020.
//  Copyright © 2020 123. All rights reserved.
//

import UIKit

class TasksViewController: UIViewController {
    var navigationMenu: NavigationMenu!
    var openNavigayionMenu: NAvigationButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green

        openNavigayionMenu = NAvigationButton(frame: CGRect(x: 0.05*view.bounds.width, y: 0.05*view.bounds.height, width: 0.1*view.bounds.width , height: 0.1*view.bounds.width + 4))
        openNavigayionMenu.alpha = 0
        openNavigayionMenu.addTarget(self, action: #selector(showNAvigationMenu(sender:)), for: .touchUpInside)
        view.addSubview(openNavigayionMenu)
        
        navigationMenu = NavigationMenu(frame: CGRect(x: -0.66*view.bounds.width - 2, y: -2, width: 0.66*view.bounds.width, height: view.bounds.height))
    }
    @objc func showNAvigationMenu (sender: UIButton) {
        UIView.animate(withDuration: 0.2, animations: {
            self.view.addSubview(self.navigationMenu)
            self.view.bringSubviewToFront(self.navigationMenu)
            self.navigationMenu.frame = CGRect(x: 0*self.view.bounds.width - 2, y: -2, width: 0.66*self.view.bounds.width, height: self.view.bounds.height + 4)
        })
    }


}
