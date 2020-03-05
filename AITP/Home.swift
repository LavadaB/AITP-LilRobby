//
//  Home.swift
//  AITP
//
//  Created by Robert Underwood on 1/24/20.
//  Copyright © 2020 Robert Underwood. All rights reserved.
//

import SwiftUI

struct Home: View {
    
    var body: some View {
        NavigationView{
        List(0..<5) { item in
            VStack{
             
                NavigationLink(destination: ContentView()) {
                    /*@START_MENU_TOKEN@*/ /*@PLACEHOLDER=Label Content@*/Text("Navigate").padding(30)
                    Image(systemName: "photo").scaledToFit().padding(60).frame(height: 90).frame(width:130) .multilineTextAlignment(.center)/*@END_MENU_TOKEN@*/
                }
                
                }
            
            }
        }.navigationBarTitle(Text("helllooo"),displayMode: .inline )
           
        }
}



struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
      
    }
}
