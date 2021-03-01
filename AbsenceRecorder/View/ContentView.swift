//
//  ContentView.swift
//  AbsenceRecorder
//
//  Created by Aasmaan Yadav on 01/03/21.
//

import SwiftUI

struct ContentView: View {
    
    var divisions: [Division]
    
    var body: some View {
        Text("\(divisions[0].code)")
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(divisions: Division.examples)
    }
}
