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
    
    init(code: String) {
        self.code = code
    }
    
    // only runs in debug mode, ie in xcode simulator
    #if DEBUG
    static func createDivision(code: String, of size: Int) -> Division{
        let division = Division(code: code)
        
        // loop as many times as the parameter "size" says to create Students and add them to the students property
        
        for i in 0...(size-1) {
            division.students[i] = Student(forename: "child\(i)", surname: "student\(i)", birthday: Date() )
        }
        
        return division
    }
    
    static let examples = [Division.createDivision(code: "vBY-1", of: 8),
                           Division.createDivision(code: "vCX-1", of: 10),
                           Division.createDivision(code: "vE5-1", of: 16),
                           Division.createDivision(code: "vD1-1", of: 14)]
    #endif
    
}
