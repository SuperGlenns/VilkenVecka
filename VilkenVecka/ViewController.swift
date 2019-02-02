//
//  ViewController.swift
//  VilkenVecka
//
//  Created by Glenn Karlsson on 2019-02-02.
//  Copyright © 2019 SuperGlenn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var weekLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        let week = String(NSCalendar.current.component(.weekOfYear, from: Date()))
        weekLabel.text = week
    }

    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
}

