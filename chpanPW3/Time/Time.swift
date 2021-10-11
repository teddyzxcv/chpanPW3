//
//  Time.swift
//  chpanPW3
//
//  Created by HSE  FKN on 01.10.2021.
//

public struct Time {
    var hours: Int
    var minutes: Int

    init(hours: Int = 0, minutes: Int = 0, seconds: Int = 0) {
        self.hours = hours
        self.minutes = minutes
    }
    
    func toString() -> String {
        return String(hours) + ":" + String(minutes)
    }
}
