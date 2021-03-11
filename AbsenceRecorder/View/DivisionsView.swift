//
//  ContentView.swift
//  AbsenceRecorder
//
//  Created by Aasmaan Yadav on 01/03/21.
//

import SwiftUI

struct DivisionsView: View {
    
    @EnvironmentObject var state: StateController
    @State private var currentDate: Date = Date()
    
    var body: some View {

        //Navigation View allows headers
        NavigationView {
            
            // to show list of items use the List() method. The id is what is used to identify each unique item in list. self.code is always unique so can use that

            List(state.divisions, id: \.self.code) { division in
                // the division in is just saying you can refer to items in divisions as division rather than $divisions
                //closure explains how to format every item inside List
                
                //The following creates a navigation link to another view
                
                NavigationLink(destination: AbsenceView(division: division) ){
                    //the following leads to the divisionItem swift file and runs the view there
                    DivisionItem(division: division)
                }
            }
            .navigationTitle(currentDate.getShortDate())
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: { currentDate = currentDate.previousDay() }) {
                        Image(systemName: "arrow.backward")
                    }
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: { currentDate = currentDate.nextDay() }) {
                        Image(systemName: "arrow.forward")
                    }
                }
            }
        }
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        DivisionsView()
            .environmentObject( StateController() )
    }
}
