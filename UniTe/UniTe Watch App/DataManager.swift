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
    @Published var eventList: [Event] = []

    let url = URL(string: "https://unite-fdcb6-default-rtdb.firebaseio.com/events.json")!

    lazy var request = URLRequest(url: url)
    
    lazy var task: URLSessionDataTask = {
            var requestCopy = request
            requestCopy.httpMethod = "GET"
            
            return URLSession.shared.dataTask(with: requestCopy) { data, response, error in
                if let error = error {
                    print(error)
                    return
                }
                
                do {
                    if let json = try JSONSerialization.jsonObject(with: data!, options: []) as? [String: [String: String]] {
                            print("Success")
                            print("JSON Response: \(json)")
                        
                            for (_, event) in json {
                                if let eventClub = event["clubName"],
                                   let eventDescription = event["description"],
                                   let eventTitle = event["title"],
                                   let eventLocation = event["location"],
                                   let eventTime = event["time"] {
                                    let newEvent = Event(title: eventTitle, clubName: eventClub, location: eventLocation, time: eventTime, description: eventDescription)
                                    self.eventList.append(newEvent)
                                }
                            }
                        }
                    } catch {
                        print("Error parsing JSON: \(error)")
                    }
            }
        }()
    
    init() {
        task.resume()
    }
}
