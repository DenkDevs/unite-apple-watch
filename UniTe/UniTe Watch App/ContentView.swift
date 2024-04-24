import SwiftUI

struct ContentView: View {
    @EnvironmentObject var dataManager: DataManager
    
    var body: some View {
        NavigationView {
            List {
                ForEach(dataManager.eventList) { event in
                    NavigationLink(destination: EventDetailView(event: event)) {
                        VStack(alignment: .leading, spacing: 5) {
                            Text(event.title)
                                .font(.headline)
                                .padding(.bottom, 2)
                            Text(event.clubName)
                                .font(.subheadline)
                            Text(event.location)
                                .font(.subheadline)
                            Text(event.time)
                                .font(.subheadline)
                        }
                        .padding()
                    }
                }
            }
            .navigationTitle("Events")
        }
    }
}

struct EventDetailView: View {
    var event: Event
    
    var body: some View {
        VStack {
            Text(event.title)
                .font(.title)
                .padding()
            Text("Hosted by \(event.clubName)")
                .padding()
            Text("Location: \(event.location)")
                .padding()
            Text("Time: \(event.time)")
                .padding()
            Text(event.description)
                .padding()
            
            Spacer()
            
            Button("Join Event") {
                // Action for joining the event
            }
            .padding()
            .buttonStyle(.borderedProminent)
            
            Button("Share") {
                // Action for sharing the event
            }
            .padding()
            .buttonStyle(.bordered)
        }
        .padding()
        .navigationTitle("Event Details")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//struct Events: Identifiable {
//    var id = UUID()
//    var clubName: String
//    var description: String
//    var location: String
//    var time: String
//    var eventTitle: String
//}
//
//var events = [
//    Event(clubName: "Chess Club", description: "Join us for an exciting round of chess.", location: "Skiles 254", time: "April 27 12:00 PM", eventTitle: "Chess Tournament"),
//    Event(clubName: "Robotics Club", description: "Workshop on building your first robot.", location: "Klaus Atrium", time: "April 28 3:00 PM", eventTitle: "Robotics Workshop")
//]
