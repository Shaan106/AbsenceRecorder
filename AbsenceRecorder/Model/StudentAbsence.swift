//
//  StudentAbsence.swift
//  AbsenceRecorder
//
//  Created by Aasmaan Yadav on 12/03/21.
//

import Foundation

class StudentAbsence: ObservableObject {
    let student: Student
    @Published var isAbsent: Bool
    
    init(student: Student) {
        self.student = student
        isAbsent = false
    }
    
    #if DEBUG
    static let example = StudentAbsence(student: Student.example)
    #endif
}
