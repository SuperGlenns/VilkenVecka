//
//  InterfaceController.swift
//  VilkenVecka WatchKit Extension
//
//  Created by Glenn Karlsson on 2019-02-02.
//  Copyright © 2019 SuperGlenn. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet weak var weekLabel: WKInterfaceLabel!
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        let week = String(Helper.week)
        weekLabel.setText(week)
    }
    
    override func willActivate() {
        super.willActivate()
    }
}
