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
    
    let url = URL(string: "https://us-central1-unite-fdcb6.cloudfunctions.net/api/get-all-events")!
    lazy var session = URLSession.shared
    
    lazy var task = session.dataTask(with: url) { data, response, error in
        if let error = error {
            print(error)
            return
        }

        
        do {
            if let json = try JSONSerialization.jsonObject(with: data!, options: []) as? [String: [String: Any]] {
                print("Success")
                
                for (_, event) in json {
                    DispatchQueue.main.async {
                        if let eventClub = event["clubName"],
                           let eventDescription = event["description"],
                           let eventTitle = event["title"],
                           let eventLocation = event["location"],
                           let eventTime = event["time"] {
                            let newEvent = Event(clubName: eventClub as! String, description: eventDescription as! String, location: eventLocation as! String, time: eventTime as! String, title: eventTitle as! String)
                            self.eventList.append(newEvent)
                        }
                    }
                }
            }
            
        } catch {
            print("Error parsing JSON: \(error)")
        }
    }
    
    init() {
        task.resume()
    }
}
