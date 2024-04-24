//
//  EventDetailView.swift
//  UniTe Watch App
//
//  Created by Eddy Wang on 4/23/24.
//

import SwiftUI

struct EventDetailView: View {
    var event: Event
    
    var body: some View {
        ScrollView{
            VStack {
                Text(event.title)
                    .font(.headline)
                Text(event.clubName)
                    .font(.subheadline)
                    .padding(.bottom, 10)
                Text("Location: \(event.location)")
                    .font(.footnote)
                Text("Time: \(event.time)")
                    .font(.footnote)
                Text(event.description)
                    .padding()
                
                Spacer()
                
                Button("RSVP to Event") {
                    // Action for joining the event
                }
                .padding()
                .buttonStyle(.borderedProminent)
                
                Button("Save to Calendar") {
                    // Action for sharing the event
                }
                .padding()
                .buttonStyle(.bordered)
            }
        }
            .padding()
            .navigationBarTitleDisplayMode(.inline)
        }
}

struct EventDetailView_Previews: PreviewProvider {
    static var previews: some View {
        EventDetailView(event: Event(clubName: "Chess Club", description: "Join us for an exciting round of chess.", location: "Skiles 254", time: "April 27 12:00 PM", title: "Chess Tournament"))
    }
}
