//
//  Date.swift
//  AbsenceRecorder
//
//  Created by Aasmaan Yadav on 04/03/21.
//

import Foundation


extension Date {
    
    // function to get nice format of date
    func getShortDate() -> String {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        
        //here self implies any instance the method is being called upon
        return formatter.string(from: self)
    }
    
    func previousDay() -> Date {
        return Calendar.current.date(byAdding: .day, value: -1, to: self) ?? Date()
    }
    
    func nextDay() -> Date {
        return Calendar.current.date(byAdding: .day, value: 1, to: self) ?? Date()
    }
}
