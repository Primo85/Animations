//
//  CarouselView.swift
//  Animations
//
//  Created by Przemyslaw Biskup on 08/11/2019.
//  Copyright © 2019 SwiftSolutions. All rights reserved.
//

import UIKit
import iCarousel

final class CarouselView: UIView {
    
    let cellButton: UILabel = {
        let button = UILabel()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.isUserInteractionEnabled = true
        button.hero.id = "carCell"
        button.backgroundColor = .red
        button.layer.cornerRadius = 16.0
        button.clipsToBounds = true
        button.font = UIFont.systemFont(ofSize: 17.0, weight: .bold)
        button.textColor = .white
        button.textAlignment = .center
        return button
    }()
    
    let carouselView: iCarousel  = {
        let carouselView: iCarousel = iCarousel()
        carouselView.translatesAutoresizingMaskIntoConstraints = false
        carouselView.backgroundColor = .lightGray
        return carouselView
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
        addSubview(cellButton)
        addSubview(carouselView)
    }
    
    private func setUpConstraints() {
        
        cellButton.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 16).isActive = true
        cellButton.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 16).isActive = true
        cellButton.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: -16).isActive = true
        cellButton.heightAnchor.constraint(equalToConstant: 64.0).isActive = true
        
        carouselView.topAnchor.constraint(equalTo: cellButton.bottomAnchor).isActive = true
        carouselView.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        carouselView.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        carouselView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
    }
}
