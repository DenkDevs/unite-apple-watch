//
//  UniTeApp.swift
//  UniTe Watch App
//
//  Created by Eddy Wang on 4/22/24.
//

import SwiftUI

@main
struct UniTe_Watch_AppApp: App {
    @StateObject var dataManager = DataManager()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(DataManager())
        }
    }
}
