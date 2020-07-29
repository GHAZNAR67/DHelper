//
//  ProfilePictures.swift
//  DHelper
//
//  Created by 123 on 23.07.2020.
//  Copyright © 2020 123. All rights reserved.
//

import UIKit

class ProfilePictures: UIButton {
    var boolForbackfunc: Bool = false
    init(frame: CGRect, imagename: String) {
        super.init(frame: frame)
        
        setBackgroundImage(UIImage(named: imagename), for: UIControl.State.normal)
        self.layer.cornerRadius = 20
        self.addTarget(self, action: #selector(choseonePicture(sender:)), for: .touchUpInside)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    @objc func choseonePicture(sender: UIButton) {
        if (boolForbackfunc == false){
        self.boolForbackfunc = true
        self.layer.borderWidth = 2
        self.layer.borderColor = UIColor.white.cgColor
        userPictureArray.append(self.tag)
        }else{
            self.boolForbackfunc = false
            self.layer.borderWidth = 0
            self.layer.borderColor = UIColor.white.cgColor
            userPictureArray.removeLast()
        }
    }
}
