//
//  AppViewController.swift
//  Animations
//
//  Created by Przemyslaw Biskup on 08/11/2019.
//  Copyright © 2019 SwiftSolutions. All rights reserved.
//

import UIKit

class AppViewController: UIViewController {
    
    init() {
        super.init(nibName: nil, bundle: nil)
        view.backgroundColor = .lightGray
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


final class but: UIControl {
    
    init() {
        super.init(frame: .zero)
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
