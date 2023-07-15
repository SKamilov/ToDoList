//
//  ViewController.swift
//  ToDo
//
//  Created by Darya Zhitova on 22.06.2023.
//

import UIKit

// UIView - чисто верстка приложения
// UIViewController - логика приложения

// cmd + /

/// Стартовый экран приложения
class ViewController: UIViewController {
    
    lazy var tableView: UITableView = {
        let view = UITableView()
        view.delegate = self
        view.dataSource = self
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        setUpNavigation()
        setUpConstraints()
        
        print("hello world!")
    }
    
    
    private func setUpConstraints() {
        view.addSubview(tableView)
        
        let constaints: [NSLayoutConstraint] = [
            tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 32),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            // используем минус перед числом у constant
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ]
        
        NSLayoutConstraint.activate(constaints)
    }
    
    private func setUpNavigation() {
        navigationItem.title = "Todo list"
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
}


extension ViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
    
}
