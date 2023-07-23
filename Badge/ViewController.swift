//
//  ViewController.swift
//  Badge
//
//  Created by Pushpendra on 23/07/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var btnIncrease: UIButton! {
        didSet {
            self.btnIncrease.addTarget(self, action: #selector(onTapIncresae), for: .touchUpInside)
        }
    }
    @IBOutlet weak var btnDecrease: UIButton! {
        didSet {
            self.btnDecrease.addTarget(self, action: #selector(onTapDecresae), for: .touchUpInside)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        print("SET")
        
    }


    @objc private func onTapIncresae() {
        let currentBadge = UIApplication.shared.applicationIconBadgeNumber
        UIApplication.shared.applicationIconBadgeNumber = currentBadge + 1
    }
    
    @objc private func onTapDecresae() {
        let currentBadge = UIApplication.shared.applicationIconBadgeNumber
        UIApplication.shared.applicationIconBadgeNumber = currentBadge - 1
    }
}

