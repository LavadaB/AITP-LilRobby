//
//  Detail.swift
//  AITP
//
//  Created by Robert Underwood on 1/24/20.
//  Copyright © 2020 Robert Underwood. All rights reserved.
//

import SwiftUI

struct Detail: View {
    
    let room: Room          //using let to command room var from Room object
    
    var body: some View {
     
        VStack {
            //PosterView(room: room)
                Text("\(room.name)").font(.title).fontWeight(.semibold)
          //.navigationBarTitle(Text(room.name),displayMode: .inline)
            Text("dsfg ")
        }
}
}

struct Detail_Previews: PreviewProvider {
    static var previews: some View {
        //
        
  Detail(room: Company[0])
        
        // using data from array to pass in using root[0]
        
    }
}


struct PosterView: View {
    let room : Room             // declaring room in function as well
    var body: some View {
        Image(room.imageName)
            .renderingMode(.original)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .cornerRadius(12)
            .padding()
            .shadow(radius: 10)
        .frame(width: 200, height: 170)
    }
}


