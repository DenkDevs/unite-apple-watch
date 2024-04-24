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
