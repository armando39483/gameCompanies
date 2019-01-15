//
//  ViewController.swift
//  VideoGamesApp
//
//  Created by Armando D Gonzalez on 8/1/18.
//  Copyright © 2018 Armando D Gonzalez All rights reserved.
//

import UIKit

final class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var gameCompanyList = [VGCompany]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.setupTableView()
        self.loadData()
    }
    
    private func setupTableView() {
        self.tableView.rowHeight = UITableViewAutomaticDimension
        self.tableView.estimatedRowHeight = 300.0
    }
    
    private func loadData() {
        GameData.getCompanyList { [unowned self] (gameCompanyList) in
            self.gameCompanyList = gameCompanyList
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }
    }
    
    // MARK: - Navigation
    // left over from segue implementation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toGameList" {
            if let viewController = segue.destination as? GameListController {
                guard let currentRow = tableView.indexPathForSelectedRow?.row else {
                    return
                }
                viewController.gameCompany = gameCompanyList[currentRow]
            }
        }
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    // MARK: - TableView Delegate Methods
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return gameCompanyList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let identifier = "VGCompanyCell"
        let cell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath) as! VGCompanyCell
        cell.backgroundColor = (indexPath.row % 2 == 0) ? .gray : .white
        
        let currentCompany = gameCompanyList[indexPath.row]
        cell.titleLabel.text = currentCompany.name
        cell.descriptionLabel.text = currentCompany.description
        cell.imageV.image = UIImage(named: currentCompany.imageName)
        cell.imageV.layer.cornerRadius = 20
        cell.imageV.layer.masksToBounds = true
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let index = indexPath.row
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "GameListController") as! GameListController
        vc.gameCompany = gameCompanyList[index]
        self.show(vc, sender: nil)
    }
}
