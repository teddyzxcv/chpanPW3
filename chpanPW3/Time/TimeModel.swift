//
//  TimeModel.swift
//  chpanPW3
//
//  Created by HSE  FKN on 01.10.2021.
//

public class TimeViewModel {
    private var time: Time
    
    init() {
        time = Time(hours: Int.random(in: 0..<24), minutes: Int.random(in: 0..<60), seconds: Int.random(in: 0..<60))
    }
    
    public func getTime() -> String {
        var res = String(time.hours) + ":"
        if(time.hours < 10){
            res = "0" + res
        }
        if (time.minutes < 10)
        {
            res += "0"
        }
        return res + String(time.minutes);
    }
}

public protocol TimeGeneratorProtocol {
    static func randomTime() -> Time;
}

