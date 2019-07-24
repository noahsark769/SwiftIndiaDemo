//
//  ViewController.swift
//  SwiftIndiaDemo
//
//  Created by Noah Gilmore on 7/24/19.
//  Copyright © 2019 Noah Gilmore. All rights reserved.
//

import Foundation
import UIKit

class ViewController: UIViewController {
    private let rightButton = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()

        rightButton.setTitle("Tile window right", for: .normal)
        rightButton.setTitleColor(.systemBlue, for: .normal)
        rightButton.addTarget(self, action: #selector(didTapRight), for: .touchUpInside)
        rightButton.translatesAutoresizingMaskIntoConstraints = false

        self.view.addSubview(rightButton)
        rightButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        rightButton.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true

        self.view.backgroundColor = UIColor(red: 0.11, green: 0.11, blue: 0.11, alpha: 1)
    }

    @objc private func didTapRight() {
        print("Tapped the button")
    }
}

