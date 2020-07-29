
//  ViewController.swift
//  DHelper
//
//  Created by 123 on 22.07.2020.
//  Copyright © 2020 123. All rights reserved.
//

import UIKit
var HelloView: FirstHelloView!
class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    
        HelloView = FirstHelloView(frame: view.bounds)
        view.addSubview(HelloView)
        HelloView.nextButton.addTarget(self, action: #selector(nextHelloView), for: .touchUpInside)
        
    }
    
    @objc func nextHelloView() {
        UIView.animate(withDuration: 1, animations: {
         HelloView.nextButton.alpha = 0
         HelloView.HelloLabel.alpha = 0
         HelloView.moreInfoLabel.alpha = 0
         
        }, completion: {(finised: Bool) in
            HelloView.nextButton.removeFromSuperview()
            HelloView.moreInfoLabel.removeFromSuperview()
            HelloView.HelloLabel.removeFromSuperview()
            func goToSecondViewController(){
                
                let SecondViewController = AddPersonalDataViewController()
                SecondViewController.modalPresentationStyle = .fullScreen
                self.present(SecondViewController, animated: true, completion: nil)
            }
                goToSecondViewController()
            
        })
    }
    
}

