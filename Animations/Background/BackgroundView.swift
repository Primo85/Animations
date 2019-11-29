//
//  BackgroundView.swift
//  Animations
//
//  Created by Przemyslaw Biskup on 13/11/2019.
//  Copyright © 2019 SwiftSolutions. All rights reserved.
//

import UIKit

final class BackgroundView: UIView {
    
    let titleButton: UILabel = {
        let button = UILabel()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.isUserInteractionEnabled = true
        button.hero.id = "bac"
        button.backgroundColor = .red
        button.layer.cornerRadius = 16.0
        button.clipsToBounds = true
        button.text = "Background effect"
        button.font = UIFont.systemFont(ofSize: 17.0, weight: .bold)
        button.textColor = .white
        button.textAlignment = .center
        return button
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
    }
    
    private func setUpConstraints() {
        titleButton.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 16).isActive = true
        titleButton.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 16).isActive = true
        titleButton.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: -16).isActive = true
        titleButton.heightAnchor.constraint(equalToConstant: 64.0).isActive = true
    }
}

