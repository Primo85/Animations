//
//  CarouselTypesViewController.swift
//  Animations
//
//  Created by Przemyslaw Biskup on 08/11/2019.
//  Copyright © 2019 SwiftSolutions. All rights reserved.
//

import UIKit
import iCarousel

final class CarouselTypesViewController: AppViewController {
    
    private let properView: CarouselTypesView = CarouselTypesView()
    
    let types: [(iCarouselType, String)] = [(.coverFlow, "coverFlow"),
                                            (.coverFlow2, "coverFlow2"),
                                            (.cylinder, "cylinder"),
                                            (.invertedCylinder, "invertedCylinder"),
                                            (.invertedRotary, "invertedRotary"),
                                            (.invertedTimeMachine, "invertedTimeMachine"),
                                            (.invertedWheel, "invertedWheel"),
                                            (.linear, "linear"),
                                            (.rotary, "rotary"),
                                            (.timeMachine, "timeMachine"),
                                            (.wheel, "wheel")]
    
    override func loadView() {
        super.loadView()
        self.view = properView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.hero.isEnabled = true
        properView.tableView.dataSource = self
        properView.tableView.delegate = self
        properView.titleButton.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(pop)))
    }
    
    @objc private func pop() {
        self.navigationController?.popViewController(animated: true)
        AppSounds.hide.play()
    }
}

extension CarouselTypesViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return types.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! CarouselTableViewCell
        cell.name = types[indexPath.row].1
        cell.hero.modifiers = [.fade, .scale(0.1)]
        cell.hero.id = "carCell"
        return cell
    }
}

extension CarouselTypesViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = CarouselViewController(type: types[indexPath.row].0, typeName: types[indexPath.row].1)
        navigationController?.pushViewController(vc, animated: true)
    }
}
