//
//  NAvigationButton.swift
//  DHelper
//
//  Created by 123 on 23.07.2020.
//  Copyright © 2020 123. All rights reserved.
//

import UIKit

class NAvigationButton: UIButton {

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setBackgroundImage(UIImage(named: "navigationMenu"), for: UIControl.State.normal)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
