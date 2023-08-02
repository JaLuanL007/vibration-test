//
//  ContentView.swift
//  heartrateTest Watch App
//
//  Created by TXT-76 on 7/31/23.
//
import WatchKit
import Foundation
import SwiftUI
import UIKit

struct ContentView: View {
    var body: some View {
        Button(action: {
            // Call the method to trigger vibration
            vibrateWatch()
        }, label: {
            Text("Vibrate Watch")
        })
        
    }
    
    // Function to trigger vibration
    private func vibrateWatch() {
        if #available(watchOS 7.0, *) {
            WKInterfaceDevice.current().play(.notification)
        } else {
            // Fallback for older watchOS versions (optional)
            print("Vibration not supported on this watchOS version.")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
