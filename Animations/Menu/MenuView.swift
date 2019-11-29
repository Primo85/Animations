//
//  MenuView.swift
//  Animations
//
//  Created by Przemyslaw Biskup on 13/11/2019.
//  Copyright © 2019 SwiftSolutions. All rights reserved.
//

import UIKit
import Hero
import Lottie

final class MenuView: UIView {
    
    let carouselButton: UILabel = {
        let button = UILabel()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.hero.id = "car"
        button.isUserInteractionEnabled = true
        button.backgroundColor = .red
        button.layer.cornerRadius = 64
        button.text = "Carousels"
        button.font = UIFont.systemFont(ofSize: 17.0, weight: .bold)
        button.textColor = .white
        button.textAlignment = .center
        button.clipsToBounds = true
        return button
    }()
    
    let lottieButton: UILabel = {
        let button = UILabel()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.hero.id = "lot"
        button.isUserInteractionEnabled = true
        button.backgroundColor = .red
        button.layer.cornerRadius = 64
        button.text = "Lottie"
        button.font = UIFont.systemFont(ofSize: 17.0, weight: .bold)
        button.textColor = .white
        button.textAlignment = .center
        button.clipsToBounds = true
        return button
    }()
    
    let backgroundButton: UILabel = {
        let button = UILabel()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.hero.id = "bac"
        button.isUserInteractionEnabled = true
        button.backgroundColor = .red
        button.layer.cornerRadius = 64
        button.text = "Background"
        button.font = UIFont.systemFont(ofSize: 17.0, weight: .bold)
        button.textColor = .white
        button.textAlignment = .center
        button.clipsToBounds = true
        return button
    }()
    
    let eyeView: AnimationView = {
        let view = AnimationView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.animation = Animation.named("EYE")
        view.loopMode = .playOnce
        return view
    }()
    
    let eye2View: AnimationView = {
        let view = AnimationView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.animation = Animation.named("EYE")
        view.loopMode = .playOnce
        return view
    }()
    
    init() {
        super.init(frame: .zero)
        self.setupView()
        self.addSubViews()
        self.setUpConstraints()
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView() {
        
    }
    
    private func addSubViews() {
        addSubview(carouselButton)
        addSubview(lottieButton)
        addSubview(backgroundButton)
        addSubview(eyeView)
        addSubview(eye2View)
    }
    
    private func setUpConstraints() {
        carouselButton.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 32).isActive = true
        carouselButton.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 32).isActive = true
        carouselButton.heightAnchor.constraint(equalToConstant: 128).isActive = true
        carouselButton.widthAnchor.constraint(equalToConstant: 128).isActive = true
        
        lottieButton.topAnchor.constraint(equalTo: carouselButton.centerYAnchor, constant: 32).isActive = true
        lottieButton.leadingAnchor.constraint(equalTo: carouselButton.centerXAnchor, constant: 32).isActive = true
        lottieButton.heightAnchor.constraint(equalToConstant: 128).isActive = true
        lottieButton.widthAnchor.constraint(equalToConstant: 128).isActive = true
        
        backgroundButton.topAnchor.constraint(equalTo: lottieButton.centerYAnchor, constant: 32).isActive = true
        backgroundButton.trailingAnchor.constraint(equalTo: lottieButton.centerXAnchor, constant: -32).isActive = true
        backgroundButton.heightAnchor.constraint(equalToConstant: 128).isActive = true
        backgroundButton.widthAnchor.constraint(equalToConstant: 128).isActive = true
        
        eyeView.widthAnchor.constraint(equalToConstant: 128).isActive = true
        eyeView.heightAnchor.constraint(equalToConstant: 128).isActive = true
        eyeView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16).isActive = true
        eyeView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -16).isActive = true
        
        eye2View.widthAnchor.constraint(equalToConstant: 128).isActive = true
        eye2View.heightAnchor.constraint(equalToConstant: 128).isActive = true
        eye2View.trailingAnchor.constraint(equalTo: eyeView.leadingAnchor, constant: -6).isActive = true
        eye2View.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -16).isActive = true
    }
}
