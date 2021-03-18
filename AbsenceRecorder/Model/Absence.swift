//
//  Absence.swift
//  AbsenceRecorder
//
//  Created by Aasmaan Yadav on 14/03/21.
//

import Foundation

class Absence: Codable {
    let takenOn: Date
    var studentAbsences: [StudentAbsence]
    
    init(date:  Date, students: [Student]) {
        takenOn = date
        //goes through every item in students andd creates student absence
        studentAbsences  = students.map { StudentAbsence(student: $0)}
    }
    
    #if DEBUG
    static let example = Absence(date: Date(), students: Student.examples)
    #endif
}
