//
//  CarouselTableViewCell.swift
//  Animations
//
//  Created by Przemyslaw Biskup on 13/11/2019.
//  Copyright © 2019 SwiftSolutions. All rights reserved.
//

import UIKit

class CarouselTableViewCell: UITableViewCell {
    
    private let nameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.layer.cornerRadius = 24.0
        label.backgroundColor = .white
        label.textColor = .darkGray
        label.clipsToBounds = true
        return label
    }()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.selectionStyle = .none
        backgroundColor = .clear
        addSubview(nameLabel)
        
        nameLabel.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 12).isActive = true
        nameLabel.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 16).isActive = true
        nameLabel.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: -16).isActive = true
        nameLabel.heightAnchor.constraint(equalToConstant: 48).isActive = true
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    var name: String = "" {
        didSet {
            nameLabel.text = "\t" + name
        }
    }
}
