//
//  DataManager.swift
//  UniTe Watch App
//
//  Created by nathan tieu on 4/23/24.
//

import Foundation
import SwiftUI
import FirebaseDatabase

class DataManager: ObservableObject {
    @Published var events: [Event] = []

    let url = URL(string: "https://unite-fdcb6-default-rtdb.firebaseio.com/")!

    lazy var request = URLRequest(url: url)
    
    lazy var task: URLSessionDataTask = {
            var requestCopy = request
            requestCopy.httpMethod = "GET"
            
            return URLSession.shared.dataTask(with: requestCopy) { data, response, error in
                if let error = error {
                    print(error)
                    return
                }
                print("Success")
                print(response as Any)
            }
        }()
    
    init() {
        task.resume()
    }
}
