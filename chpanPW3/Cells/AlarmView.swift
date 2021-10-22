//
//  AlarmView.swift
//  chpanPW3
//
//  Created by HSE  FKN on 01.10.2021.
//

import UIKit

class AlarmView : UIView {
    public let timeViewModel = TimeViewModel()
    
    let timeToggle: UISwitch = {
        let control = UISwitch()
        control.clipsToBounds = false
        control.translatesAutoresizingMaskIntoConstraints = false // required
        return control
    }()

    let timeLabel: UILabel = {
        let control = UILabel()
        control.font = UIFont.systemFont(ofSize: 35)
        control.textColor = UIColor.black
        control.text = "00:00"
        control.translatesAutoresizingMaskIntoConstraints = false // required
        return control
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        timeLabel.text = timeViewModel.getTime()
        addView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addView() {
        backgroundColor = UIColor.white
        
        addSubview(timeToggle)
        addSubview(timeLabel)

        timeToggle.rightAnchor.constraint(equalTo: rightAnchor, constant: -30).isActive = true
        timeToggle.pinTop(to: topAnchor, 10)
        // profileImageButton.pinLeft(to: leftAnchor, 5)
        timeToggle.setHeight(to: 36)
        timeToggle.setWidth(to: 36)

        timeLabel.pinTop(to: topAnchor, Double(frame.height / 2) + 2)
        timeLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 5).isActive = true
    }
}
