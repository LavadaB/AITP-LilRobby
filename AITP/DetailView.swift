//
//  DetailView.swift
//  AITP
//
//  Created by Robert Underwood on 1/27/20.
//  Copyright © 2020 Robert Underwood. All rights reserved.
//
// Company = Data

import SwiftUI

struct DetailView: View {
    //@State var room : Room
 //  @State var room : Room
   // let room : Room
    
    // did not call room:Room
    var body: some View {
        VStack {
            
            //Company = Data
            // Room = Constructor
  
            Detail(room: Company[0])
            
            // parameters for Detail
            // in Detail Function we call in same parameters
            //Start with [0] to loop thorugh arraay
           
            HStack {
                
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                    .font(.title)
                    .fontWeight(.semibold)
                    .padding(.trailing)
                
                Image(systemName: "star")
                    .font(.title)
                    .padding(.top, 4)
            }
            
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    //let room : Room
   
    static var previews: some View {
        
        DetailView()
    }
}
