//
//  GameListController.swift
//  VideoGamesApp
//
//  Created by User Admin on 8/15/18.
//  Copyright © 2018 Armando D Gonzalez All rights reserved.
//

import UIKit
import AVKit

final class GameListController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var gameCompany: VGCompany?
}

extension GameListController: UITableViewDelegate, UITableViewDataSource {
    
    // MARK: - TableView Delegate Methods
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        guard let company = gameCompany else {
            return 0
        }
        return company.gameList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let identifier = "GameCell"
        let cell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath) as! GameCell
        if let company = gameCompany {
            let currentGame = company.gameList[indexPath.row]
            cell.titleLabel.text = currentGame.name
            cell.imgView.image = UIImage(named: currentGame.imageName)
        }
        
        return cell
    }
    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toVideoPlayer" {
            if let viewController = segue.destination as? AVPlayerViewController {
                guard let currentIndex = tableView.indexPathForSelectedRow?.row else {
                    return
                }
                guard let company = gameCompany else { return }
                let currentGame = company.gameList[currentIndex]
                guard let path = Bundle.main.path(forResource: currentGame.videoName, ofType: "mp4") else { return }
                let videoURL = URL(fileURLWithPath: path)
                let video = AVPlayer(url: videoURL)
                viewController.player = video
            }
        }
    }
}

