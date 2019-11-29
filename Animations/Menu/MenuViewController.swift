//
//  MenuViewController.swift
//  Animations
//
//  Created by Przemyslaw Biskup on 13/11/2019.
//  Copyright © 2019 SwiftSolutions. All rights reserved.
//

import UIKit
import Hero

final class MenuViewController: AppViewController {
    
    private var properView: MenuView = MenuView()
    
    override func loadView() {
        super.loadView()
        self.view = properView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        properView.carouselButton.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(openCarouselTypes)))
        properView.lottieButton.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(openLottie)))
        properView.backgroundButton.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(openBackground)))
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        startScaring()
    }
    
    @objc private func openCarouselTypes() {
        self.navigationController?.pushViewController(CarouselTypesViewController(), animated: true)
        AppSounds.show.play()
    }
    @objc private func openLottie() {
        self.navigationController?.pushViewController(LottieViewController(), animated: true)
        AppSounds.didAppear.play()
    }
    @objc private func openBackground() {
        self.navigationController?.pushViewController(BackgroundViewController(), animated: true)
        AppSounds.touchUpInside.play()
    }
    
    private var counter = 1
    private func startScaring() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 5) { [weak self] in
            self?.counter += 1
            self?.properView.eyeView.play()
            if let c = self?.counter, c % 3 == 0 { self?.properView.eye2View.play() }
            self?.startScaring()
        }
    }
}
