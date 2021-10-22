//
//  StackViewController.swift
//
//  Created by HSE  FKN on 01.10.2021.
//

import UIKit

class StackViewController: UIViewController {
    private var stackView: UIStackView!
    private var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        setupScrollView()
        setupStackView()
    }
    

    
    private func setupScrollView() {
        let rect = CGRect(x: 10, y: 10, width: view.frame.width - 20, height: view.frame.height - 20)
        scrollView = UIScrollView(frame: rect)
        view.addSubview(scrollView)
        scrollView.pinTop(to: view.topAnchor)
        scrollView.pinBottom(to: view.bottomAnchor)
        scrollView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        scrollView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        scrollView.contentSize = CGSize(
            width: self.scrollView.frame.width,
            height: stackView.frame.height
        )
        
        scrollView.alwaysBounceVertical = true
    }
    
    private func setupStackView() {
        let rect = CGRect(x: 10, y: 10, width: view.frame.width - 20, height: view.frame.height - 20)
        let stack = UIStackView(frame: rect)
        scrollView.addSubview(stack)
        
        stack.distribution = .fillEqually
        stack.axis = .vertical
        stack.spacing = 10
        
        stack.pinTop(to: scrollView.topAnchor)
        stack.leftAnchor.constraint(equalTo: scrollView.leftAnchor).isActive = true
        //stack.pinLeft(to: scrollView.leftAnchor)
        stack.rightAnchor.constraint(equalTo: scrollView.rightAnchor).isActive = true
        //stack.pinRight(to: scrollView.rightAnchor)
        stack.pinBottom(to: scrollView.bottomAnchor)
        stack.widthAnchor.constraint(equalTo: scrollView.widthAnchor).isActive = true
        //        stack.pinTop(to: view.safeAreaLayoutGuide.topAnchor)
        //        stack.pinBottom(to: view.safeAreaLayoutGuide.bottomAnchor)
        //        stack.pin(to: view, .left, .right)
        stack.backgroundColor = .white
        self.stackView = stack
        getStackViewData()
    }
    
    //    func stackView(_ stackView: UIStackView, numberOfRowsInSection section: Int) -> Int {
    //        return 31
    //    }
    
    
    func getStackViewData() {
        var cell: StackCell = StackCell()
        var top = 40
        for _ in 0...200 {
            cell = StackCell()
            cell.setHeight(to: 20)
            //cell.timeLabel.text = generator.randomTime()
            cell.layer.masksToBounds = true
            cell.setHeight(to: Double(stackView.frame.height)/10)
            cell.translatesAutoresizingMaskIntoConstraints = false
            stackView.addArrangedSubview(cell)
            cell.topAnchor.constraint(equalTo: stackView.topAnchor, constant: CGFloat(top)).isActive = true
            top += 60
        }
        
    }
}
