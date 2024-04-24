//
//  Event.swift
//  UniTe Watch App
//
//  Created by Eddy Wang on 4/23/24.
//

import Foundation

struct Event: Identifiable {
    var id: UUID = UUID()
    var title: String
    var clubName: String
    var location: String
    var time: String
    var description: String
}
