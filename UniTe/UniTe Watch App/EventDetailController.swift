//
//  EventDetailController.swift
//  UniTe Watch App
//
//  Created by Eddy Wang on 4/23/24.
//

import Foundation
import WatchKit

class EventDetailController: WKInterfaceController {
    @IBOutlet var titleLabel: WKInterfaceLabel!
    @IBOutlet var clubLabel: WKInterfaceLabel!
    @IBOutlet var locationLabel: WKInterfaceLabel!
    @IBOutlet var timeLabel: WKInterfaceLabel!
    @IBOutlet var descriptionLabel: WKInterfaceLabel!

    var event: Event? {
        didSet {
            guard let event = event else { return }
            titleLabel.setText(event.title)
            clubLabel.setText(event.clubName)
            locationLabel.setText(event.location)
//            timeLabel.setText(Formatter.time.string(from: event.time))
            timeLabel.setText(event.time)
            descriptionLabel.setText(event.description)
        }
    }
}

