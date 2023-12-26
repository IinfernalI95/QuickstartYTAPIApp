//
//  ViewController.swift
//  QuickstartYTAPIApp
//
//  Created by Artur on 04.12.2023.
//

import UIKit

class ViewController: UIViewController, ModelDelegate {
    
    var model = Model()
    var videos = [Video]()
    
    lazy var tableView: UITableView = {
        let table = TableView()
        table.translatesAutoresizingMaskIntoConstraints = false
        table.backgroundColor = .black
        
        return table
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .gray
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(VideoCell.self, forCellReuseIdentifier: Constants.VIDEOCELL_ID)
        
        model.delegate = self
        model.getVideos()
        
        initializeSubViews()
    }
    
    func videosFetched(videos: [Video]) {
        self.videos = videos
        
        tableView.reloadData()
    }
    
    func initializeSubViews() {
        view.addSubview(tableView)
        
        makeConstraints()
    }
    
    func makeConstraints() {
        NSLayoutConstraint.activate([
            tableView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor),
            tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            tableView.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
    }
}

