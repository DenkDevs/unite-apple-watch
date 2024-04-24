import SwiftUI

struct ContentView: View {
    @EnvironmentObject var dataManager: DataManager
    
    var body: some View {
        NavigationView {
            List(dataManager.eventList) { event in
                NavigationLink(destination: EventDetailView(event: event)) {
                    EventRowView(event: event)
                }
            }
            .navigationTitle("Events")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
