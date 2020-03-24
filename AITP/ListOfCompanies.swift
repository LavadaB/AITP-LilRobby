//
//  ListOfCompanies.swift
//  AITP
//
//  Created by Robert Underwood on 3/24/20.
//  Copyright © 2020 Robert Underwood. All rights reserved.
//

import SwiftUI

struct ListOfCompanies: View {
    var body: some View {
       NavigationView{
                  List{
                      // Foreach listdata that we have
                      ForEach(ListData) { item in
                            
                          //We call DetailListView Function in our navigationlink, we pass in parameters that we have dummy variables set for in our other function
                          //we use dummy variables as placeholder parameters for our function to call in
                          
                          
                          NavigationLink(destination: DetailListView(title: item.title, image: item.image)){
                              
                              // KEeping our HStack in our NAvigationLink
                              HStack {
                                  Image(item.image)
                                      .resizable()
                                      .renderingMode(.original)
                                      //.aspectRatio(contentMode: .fit)
                                      .frame(width: 80, height: 80)
                                      .background(Color("primary"))
                                      .cornerRadius(20)
                                      .padding(.trailing, 4)

                                                          
                                  // VStack

                                  
                             VStack(alignment: .leading, spacing: 8) {
                              
                              Text(item.title).font(.system(size: 20, weight: .bold))
                              
                              Text(item.label)
                                       .lineLimit(2)
                                       .font(.subheadline)
                                       .foregroundColor(Color(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)))
                                   Text("Secondary")
                                       .font(.caption)
                                       .fontWeight(.bold)
                                       .foregroundColor(.secondary)
                              
                              } .padding(3)
                                  
                              }.padding(.vertical, 8)
                          }   // end of navigation link
                      }.padding(8)
                      
                      .navigationBarTitle(Text("Meetings"))
                  }
              }
    }
}

struct ListOfCompanies_Previews: PreviewProvider {
    static var previews: some View {
        ListOfCompanies()
    }
}

struct ListItem : Identifiable{
    var id = UUID()
    var title : String
    var icon : String
    var image: String
    var label: String
    
}

let ListData = [
    
    ListItem(title: "Company Name", icon: "house", image: "home-2", label: "11/4"),
    ListItem(title: "please login for attenadnce", icon: "gear", image: "home-2", label: "3/15"),
    ListItem(title: "meetings every week", icon: "person", image: "home-2", label: "Nov-15"),
     ListItem(title: "meetings every week", icon: "person", image: "home-2", label: "March-15"),
     ListItem(title: "meetings every week", icon: "person", image: "home-3", label: "3-15-2020")
    
]
