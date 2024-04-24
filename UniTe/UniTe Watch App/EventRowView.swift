//
//  EventRowView.swift
//  UniTe Watch App
//
//  Created by Eddy Wang on 4/23/24.
//

import SwiftUI

struct EventRowView: View {
    var event: Event

    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            Text(event.eventTitle)
                .font(.headline)
                .padding(.bottom, 2)
            Text(event.clubName)
                .font(.subheadline)
            Text(event.location)
                .font(.caption)
            Text(event.time)
                .font(.caption)
        }
        .padding()
    }
}
