//
//  DateExtentions.swift
//  EasyUIView
//
//  Created by shrishti on 11/03/22.

import Foundation
import UIKit

extension Date {
    func timeAgoDisplay() -> String {
            let calendar = Calendar.current
            let minuteAgo = calendar.date(byAdding: .minute, value: -1, to: Date())!
            let hourAgo = calendar.date(byAdding: .hour, value: -1, to: Date())!
            let dayAgo = calendar.date(byAdding: .day, value: -1, to: Date())!
            let weekAgo = calendar.date(byAdding: .day, value: -7, to: Date())!
            if minuteAgo < self {
                let diff = Calendar.current.dateComponents([.second], from: self, to: Date()).second ?? 0
                return "\(diff) sec ago"
            } else if hourAgo < self {
                let diff = Calendar.current.dateComponents([.minute], from: self, to: Date()).minute ?? 0
                return "\(diff) min ago"
            } else if dayAgo < self {
                let diff = Calendar.current.dateComponents([.hour], from: self, to: Date()).hour ?? 0
                return "\(diff) hours ago"
            } else if weekAgo < self {
                let diff = Calendar.current.dateComponents([.day], from: self, to: Date()).day ?? 0
                return "\(diff) days ago"
            }
     
            let diff = Calendar.current.dateComponents([.weekOfYear], from: self, to: Date()).weekOfYear ?? 0
            return "\(diff) weeks ago"
     
        }
    }
let date = Date(timeIntervalSinceNow: -180)
//print("Time ago :", date.timeAgoDisplay())

