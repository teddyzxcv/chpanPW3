//
//  TimeCell.swift
//  chpanPW3
//
//  Created by HSE  FKN on 01.10.2021.
//

import UIKit

class TableCell: UITableViewCell {
    var alarm: AlarmView!

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: .subtitle, reuseIdentifier: reuseIdentifier)
        self.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        self.alarm = AlarmView(frame: self.bounds)
        addView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addView() {
        backgroundColor = UIColor.white
        addSubview(alarm)
        alarm.autoresizingMask = self.autoresizingMask
        self.accessoryView = alarm.timeToggle
        self.accessoryView?.pinRight(to: self, 15)
    }
}

