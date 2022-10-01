//
//  iDineApp.swift
//  iDine
//
//  Created by 하진호 on 2022/10/01.
//

import SwiftUI

@main
struct iDineApp: App {
    @StateObject var order = Order()
    
    var body: some Scene {
        WindowGroup {
            MainView()
                .environmentObject(order)
        }
    }
}
