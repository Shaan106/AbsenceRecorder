//
//  StateController.swift
//  AbsenceRecorder
//
//  Created by Aasmaan Yadav on 11/03/21.
//

import Foundation

//Observable Object means if any object changes whole code will be notified
class StateController: ObservableObject {
    @Published var divisions: [Division]
    
    init() {
        divisions = Division.examples
    }
}
