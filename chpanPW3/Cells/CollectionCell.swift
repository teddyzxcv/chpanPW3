//
//  CollectionCell.swift
//  chpanPW3
//
//  Created by HSE  FKN on 01.10.2021.
//
import UIKit

class CollectionCell: UICollectionViewCell
{
    var alarm: AlarmView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.alarm = AlarmView(frame: self.bounds)
        addView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func addView() {
        backgroundColor = UIColor.white
        addSubview(alarm)
        alarm.autoresizingMask = self.autoresizingMask
    }
}
