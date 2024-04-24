//
//  UniTeApp.swift
//  UniTe Watch App
//
//  Created by Eddy Wang on 4/22/24.
//

import SwiftUI
import Firebase

@main
struct UniTe_Watch_AppApp: App {
    @StateObject var dataManager = DataManager()
    
    init() {
            FirebaseApp.configure()
            print("Configured Firebase")
        }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
