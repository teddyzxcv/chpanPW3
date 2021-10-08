//
//  ViewController.swift
//  TableViewNisWs
//  Created by Dmitry Alexandrov
//  Read it:
//  https://ioscoachfrank.com/remove-main-storyboard.html
import UIKit

class StackViewController: UIViewController, UITableViewDataSource, UITableViewDelegate
{
    var tableView: UIStackView!
    let cellId = "Cell"

    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
    }

    
    private func setupTableView() {
        let rect = CGRect(x: 15, y: 15, width: view.frame.width - 30, height: view.frame.height - 30)
        
        tableView = UIStackView(frame: rect)
        tableView
        tableView.register(TableCell.self, forCellReuseIdentifier: cellId)
        tableView.dataSource = self
        tableView.delegate = self

        tableView.rowHeight = 80
        tableView.showsVerticalScrollIndicator = true
        tableView.backgroundColor = UIColor.green //black
        tableView.translatesAutoresizingMaskIntoConstraints = false //
        tableView.layer.cornerRadius = 35
        tableView.layer.masksToBounds = true
        
        self.view.addSubview(tableView)
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 31
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as! StackCell
    
        
        cell.layer.cornerRadius = 15
        cell.layer.masksToBounds = true

        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
        tableView.deselectRow(at: indexPath, animated: true)
    }

}
