//
//  CarouselTypesView.swift
//  Animations
//
//  Created by Przemyslaw Biskup on 08/11/2019.
//  Copyright © 2019 SwiftSolutions. All rights reserved.
//

import UIKit
import Hero

final class CarouselTypesView: UIView {
    
    let titleButton: UILabel = {
        let button = UILabel()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.isUserInteractionEnabled = true
        button.hero.id = "car"
        button.backgroundColor = .red
        button.layer.cornerRadius = 16.0
        button.clipsToBounds = true
        button.text = "Carousel Types"
        button.font = UIFont.systemFont(ofSize: 17.0, weight: .bold)
        button.textColor = .white
        button.textAlignment = .center
        return button
    }()
    
    let tableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.separatorStyle = .none
        tableView.hero.isEnabled = true
        tableView.hero.id = "types"
        tableView.hero.modifiers = [.cascade]
        tableView.register(CarouselTableViewCell.self, forCellReuseIdentifier: "cell")
        tableView.backgroundColor = .clear
        tableView.rowHeight = 72.0
        return tableView
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
        self.addSubview(titleButton)
        self.addSubview(tableView)
    }
    
    private func setUpConstraints() {
        
        titleButton.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 16).isActive = true
        titleButton.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 16).isActive = true
        titleButton.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: -16).isActive = true
        titleButton.heightAnchor.constraint(equalToConstant: 64.0).isActive = true
        
        tableView.topAnchor.constraint(equalTo: titleButton.bottomAnchor, constant: 16).isActive = true
        tableView.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        tableView.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
    }
}

