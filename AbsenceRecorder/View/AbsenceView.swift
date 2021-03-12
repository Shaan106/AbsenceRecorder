//
//  AbsenceView.swift
//  AbsenceRecorder
//
//  Created by Aasmaan Yadav on 11/03/21.
//

import SwiftUI

struct AbsenceView: View {
    let division: Division
    
    var body: some View {
        
        List(division.students, id: \.self.forename) { student in
            AbsenceItem(studentAbsence: StudentAbsence(student: student))
        }
        
    }
}

struct AbsenceView_Previews: PreviewProvider {
    static var previews: some View {
        AbsenceView(division: Division.examples[0])
    }
}
