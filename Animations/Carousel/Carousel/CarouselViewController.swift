//
//  CarouselViewController.swift
//  Animations
//
//  Created by Przemyslaw Biskup on 08/11/2019.
//  Copyright © 2019 SwiftSolutions. All rights reserved.
//

import UIKit
import iCarousel

final class CarouselViewController: AppViewController {
    
    
    private let properView: CarouselView = CarouselView()
    
    init(type: iCarouselType, typeName: String) {
        super.init()
        properView.carouselView.type = type
        properView.cellButton.text = typeName
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private var tab: [String] = ["9♢", "9♡", "9♧", "9♤",
                                 "A♢", "K♡", "Q♧", "J♤",
                                 "9♢", "8♡", "7♧", "6♤"].shuffled() { didSet { properView.carouselView.reloadData() } }
    
    override func loadView() {
        super.loadView()
        self.view = properView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        properView.carouselView.dataSource = self
        properView.carouselView.delegate = self
        properView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(pop)))
    }
    
    @objc private func pop() {
        navigationController?.popViewController(animated: true)
        AppSounds.hide.play()
    }
}

extension CarouselViewController: iCarouselDataSource {
    func numberOfItems(in carousel: iCarousel) -> Int {
        return tab.count
    }
    func carousel(_ carousel: iCarousel, viewForItemAt index: Int, reusing view: UIView?) -> UIView {
        let cell = CarouselCell()
        cell.corenerLabel.text = tab[index]
        cell.corener2Label.text = tab[index]
        return cell
    }
}

extension CarouselViewController: iCarouselDelegate {
    
}
