//
//  InterfaceController.swift
//  heartrateTest Watch App
//
//  Created by TXT-76 on 8/2/23.
//

import WatchKit
import Foundation
import SwiftUI

class InterfaceController: WKInterfaceController {
    @IBAction func vibrateButtonTapped() {
        WKInterfaceDevice.current().play(.notification)
    }
}
