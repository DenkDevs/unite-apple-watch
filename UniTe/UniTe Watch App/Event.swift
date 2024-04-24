//
//  Event.swift
//  UniTe Watch App
//
//  Created by Eddy Wang on 4/23/24.
//

import Foundation

struct Event: Identifiable {
    var id = UUID()
    var clubName: String
    var description: String
    var location: String
    var time: String
    var title: String
}

let events = [
    Event(clubName: "Chess Club", description: "Join us for an exciting round of chess.", location: "Skiles 254", time: "April 27 12:00 PM", title: "Chess Tournament"),
    Event(clubName: "Robotics Club", description: "Workshop on building your first robot.", location: "Klaus Atrium", time: "April 28 3:00 PM", title: "Robotics Workshop")
]

