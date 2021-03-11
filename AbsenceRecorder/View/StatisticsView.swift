//
//  StatisticsView.swift
//  AbsenceRecorder
//
//  Created by Aasmaan Yadav on 11/03/21.
//

import SwiftUI

struct StatisticsView: View {
    
    @EnvironmentObject var state: StateController
    
    var body: some View {
        Text("Statistics - \(state.divisions[0].code)")
    }
}

struct StatisticsView_Previews: PreviewProvider {
    static var previews: some View {
        StatisticsView()
            .environmentObject(StateController())
    }
}
