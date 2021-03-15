//
//  Division.swift
//  AbsenceRecorder
//
//  Created by Aasmaan Yadav on 01/03/21.
//

import Foundation

class Division {
    let code: String
    var students: [Student] = []
    var absences: [Absence] = []
    
    init(code: String) {
        self.code = code
    }
    
    func getAbsence (for date: Date) -> Absence? {
        return absences.first {
            let comparision = Calendar.current.compare($0.takenOn, to: date, toGranularity: .day)
            return comparision == .orderedSame
        }
    }
    
    func createAbsenceOrGetExistingIfAvailable(for date: Date) -> Absence {
        if let existingAbsence = getAbsence(for: date) {
            return existingAbsence
        } else {
            let absence = Absence(date: date, students: students)
            absences.append(absence)
            return absence
        }
    }
    
    // only runs in debug mode, ie in xcode simulator
    #if DEBUG
    static func createDivision(code: String, of size: Int) -> Division{
        let division = Division(code: code)
        
        // loop as many times as the parameter "size" says to create Students and add them to the students property
        
        for i in 1...size {
            let tempStudent = Student(forename: "child\(i)", surname: "student\(i)", birthday: Date() )
            division.students.append(tempStudent)
        }
        
        return division
    }
    
    static let examples = [Division.createDivision(code: "vBY-1", of: 8),
                           Division.createDivision(code: "vCX-1", of: 10),
                           Division.createDivision(code: "vE5-1", of: 16),
                           Division.createDivision(code: "vD1-1", of: 14)]
    #endif
    
}
