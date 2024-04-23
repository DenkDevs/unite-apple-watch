//
//  Utilities.swift
//  UniTe Watch App
//
//  Created by Eddy Wang on 4/23/24.
//

import Foundation

struct Formatter {
    static let time: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .none
        formatter.timeStyle = .short
        return formatter
    }()
}
