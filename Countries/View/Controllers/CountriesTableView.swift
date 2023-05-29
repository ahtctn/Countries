//
//  ViewController.swift
//  Countries
//
//  Created by Ahmet Ali ÇETİN on 29.05.2023.
//

import UIKit

class CountriesTableView: UIViewController {

    let tableView: UITableView = {
        let tableView = UITableView()
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
        return tableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.prefersLargeTitles = true
        title = "Countries"
        setUIElements()
    }
    
    private func setUIElements() {
        view.addSubview(tableView)
        tableView.frame = view.bounds
        
        tableView.dataSource = self
        tableView.delegate = self
    }
}

extension CountriesTableView: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = "Merhaba Dünya"
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("\(indexPath.row + 1) tapped")
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

