//
//  ContentView.swift
//  AbsenceRecorder
//
//  Created by Aasmaan Yadav on 01/03/21.
//

import SwiftUI

struct ContentView: View {
    
    var divisions: [Division]
    var currentDate: Date = Date()
    
    var body: some View {

        //Navigation View allows headersπ
        NavigationView {
            
            // to show list of items use the List() method. The id is what is used to identify each unique item in list. self.code is always unique so can use that

            List(divisions, id: \.self.code) { division in
                // the division in is just saying you can refer to items in divisions as division rather than $divisions
                //closure explains how to format every item inside List
                
                Text("\(division.code)")
                    .padding()
            }
            .navigationTitle(currentDate.getShortDate())
        }
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(divisions: Division.examples)
    }
}
