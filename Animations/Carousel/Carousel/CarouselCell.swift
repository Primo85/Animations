//
//  CarouselCell.swift
//  Animations
//
//  Created by Przemyslaw Biskup on 08/11/2019.
//  Copyright © 2019 SwiftSolutions. All rights reserved.
//

import UIKit

final class CarouselCell: UIView {
    
//    let titleLabel: UILabel = {
//        let label = UILabel()
//        label.translatesAutoresizingMaskIntoConstraints = false
//        label.textAlignment = .center
//        return label
//    }()
    
    let corenerLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 26.0, weight: .semibold)
        return label
    }()
    
    let corener2Label: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 26.0, weight: .semibold)
        label.transform = CGAffineTransform(rotationAngle: CGFloat.pi)
        return label
    }()
    
    init() {
        super.init(frame: CGRect(x: 0, y: 0,
                                 width: UIScreen.main.bounds.width * 0.8,
                                 height: UIScreen.main.bounds.height * 0.7))
        setUp()
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setUp() {
        self.backgroundColor = .white
        layer.borderColor = UIColor.lightGray.cgColor
        layer.cornerRadius = 12.0
        layer.borderWidth = 0.5
        clipsToBounds = true
//        self.addSubview(titleLabel)
        self.addSubview(corenerLabel)
        self.addSubview(corener2Label)
        
//        titleLabel.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 16).isActive = true
//        titleLabel.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 16).isActive = true
//        titleLabel.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: -16).isActive = true
//        titleLabel.heightAnchor.constraint(equalToConstant: 128.0).isActive = true
        
        corenerLabel.centerYAnchor.constraint(equalTo: self.topAnchor, constant: 64.0).isActive = true
        corenerLabel.centerXAnchor.constraint(equalTo: self.leadingAnchor, constant: 64.0).isActive = true
        
        corener2Label.centerXAnchor.constraint(equalTo: self.trailingAnchor, constant: -64.0).isActive = true
        corener2Label.centerYAnchor.constraint(equalTo: self.bottomAnchor, constant: -64.0).isActive = true
    }
}
