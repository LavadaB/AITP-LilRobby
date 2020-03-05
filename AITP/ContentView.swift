
import SwiftUI

struct ContentView: View {
    
    // Creating empty Array of Constructor
    var rooms: [Room] = []
    
    var body: some View {
        
        HStack {
            NavigationView{
                List(rooms) { room in
                    
                    ExtractedView(room: room)//List : Passing room from list in
                    
                    }
                .navigationBarTitle(Text("Meetings"),displayMode: .inline).font(.title)
            //}
            }
            
           
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        // Passing in data from array
        // Room = Constructor
        // Company = DAataARray
        
        ContentView(rooms: Company)
        
    }
}

struct ExtractedView: View {
    let room: Room
    var body: some View {
       
        NavigationLink(destination: Detail(room: room)){
            Image(room.name).scaledToFit()
             
            
            //Image(systemName: "photo").cornerRadius(8)
          
            
            VStack(alignment: .leading) {
                
                Text("Meeting \(room.name)").font(.body)
                Text("\(room.capacity)")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                    .multilineTextAlignment(.leading)
               
            }//Vstack
                
        }
    }
}
