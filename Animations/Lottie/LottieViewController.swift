//
//  LottieViewController.swift
//  Animations
//
//  Created by Przemyslaw Biskup on 13/11/2019.
//  Copyright © 2019 SwiftSolutions. All rights reserved.
//

import UIKit

final class LottieViewController: AppViewController {
    
    private var properView: LottieView = LottieView()
    
    
    override func loadView() {
        super.loadView()
        self.view = properView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        properView.titleButton.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(pop)))
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        properView.dnaView.play()
    }
    
    @objc private func pop() {
        self.navigationController?.popViewController(animated: true)
        AppSounds.hide.play()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        properView.monsterView.play()
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard let touch = touches.first else { return }
        let p = touch.location(in: view).x / UIScreen.main.bounds.width
        properView.earthView.currentProgress = p
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        properView.monsterView.pause()
    }
}
