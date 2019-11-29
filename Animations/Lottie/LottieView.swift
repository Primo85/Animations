//
//  LottieView.swift
//  Animations
//
//  Created by Przemyslaw Biskup on 13/11/2019.
//  Copyright © 2019 SwiftSolutions. All rights reserved.
//

import UIKit
import Lottie

final class LottieView: UIView {
    
    let titleButton: UILabel = {
        let button = UILabel()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.isUserInteractionEnabled = true
        button.hero.id = "lot"
        button.backgroundColor = .red
        button.layer.cornerRadius = 16.0
        button.clipsToBounds = true
        button.text = "Lottie"
        button.font = UIFont.systemFont(ofSize: 17.0, weight: .bold)
        button.textColor = .white
        button.textAlignment = .center
        return button
    }()
    
    let dnaView: AnimationView = {
        let view = AnimationView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.animation = Animation.named("DNA")
        view.loopMode = .loop
        return view
    }()
    
    let monsterView: AnimationView = {
        let view = AnimationView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.animation = Animation.named("MONSTER")
        view.loopMode = .loop
        return view
    }()
    
    let earthView: AnimationView = {
        let view = AnimationView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.animation = Animation.named("EARTH")
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
        addSubview(titleButton)
        addSubview(dnaView)
        addSubview(monsterView)
        addSubview(earthView)
    }
    
    private func setUpConstraints() {
        titleButton.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 16).isActive = true
        titleButton.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 16).isActive = true
        titleButton.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: -16).isActive = true
        titleButton.heightAnchor.constraint(equalToConstant: 64.0).isActive = true
        
        dnaView.topAnchor.constraint(equalTo: titleButton.bottomAnchor).isActive = true
        dnaView.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 32).isActive = true
        dnaView.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: -32).isActive = true
        dnaView.heightAnchor.constraint(equalTo: dnaView.widthAnchor, multiplier: 0.4).isActive = true
        
        monsterView.topAnchor.constraint(equalTo: dnaView.bottomAnchor).isActive = true
        monsterView.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 32).isActive = true
        monsterView.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: -32).isActive = true
        monsterView.heightAnchor.constraint(equalTo: monsterView.widthAnchor, multiplier: 0.6).isActive = true
        
        earthView.topAnchor.constraint(equalTo: monsterView.bottomAnchor).isActive = true
        earthView.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 32).isActive = true
        earthView.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: -32).isActive = true
        earthView.heightAnchor.constraint(equalTo: monsterView.widthAnchor, multiplier: 0.7).isActive = true
    }
}
