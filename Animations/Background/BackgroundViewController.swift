//
//  BackgroundViewController.swift
//  Animations
//
//  Created by Przemyslaw Biskup on 13/11/2019.
//  Copyright © 2019 SwiftSolutions. All rights reserved.
//

import UIKit

final class BackgroundViewController: AppViewController {
    
    private var properView: BackgroundView = BackgroundView()
    
    override func loadView() {
        super.loadView()
        self.view = properView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        properView.titleButton.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(pop)))
    }
    
    @objc private func pop() {
        self.navigationController?.popViewController(animated: true)
        AppSounds.hide.play()
    }
}
