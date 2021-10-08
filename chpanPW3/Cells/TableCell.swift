//
//  MyCell.swift
//  TableViewNisWs
//  Created by Dmitry Alexandrov
//
import UIKit

class TableCell: UITableViewCell
{
    let timeToggle: UISwitch = {
        let control = UISwitch()
        control.clipsToBounds = false
        control.translatesAutoresizingMaskIntoConstraints = false // required
        return control
    }()

    let timeLabel: UILabel = {
        let control = UILabel()
        control.font = UIFont.systemFont(ofSize: 30)
        control.textAlignment = .center
        control.textColor = UIColor.black
        control.text = "00:00"
        control.translatesAutoresizingMaskIntoConstraints = false // required
        return control
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: .subtitle, reuseIdentifier: reuseIdentifier)
        addView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func addView() {
        backgroundColor = UIColor.white
        
        self.contentView.addSubview(timeToggle)
        addSubview(timeLabel)

        timeToggle.rightAnchor.constraint(equalTo: rightAnchor, constant: -30).isActive = true
        timeToggle.pinTop(to: topAnchor, 10)
        // profileImageButton.pinLeft(to: leftAnchor, 5)
        timeToggle.setHeight(to: 36)
        timeToggle.setWidth(to: 36)

        timeLabel.pinTop(to: topAnchor, Double(frame.height / 2) - 15)
        timeLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 5).isActive = true
    }
        
}
