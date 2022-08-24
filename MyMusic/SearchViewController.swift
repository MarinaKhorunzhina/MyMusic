//
//  SearchViewController.swift
//  MyMusic
//
//  Created by Marina on 24.08.22.
//

import UIKit

struct TrackModel {
    var trackName: String
    var artistName: String
}


class SearchViewController: UITableViewController {
    
    let searchController = UISearchController(searchResultsController: nil)
    
    let tracks = [TrackModel(trackName: "Billi", artistName: "Molli Polli"),
                 TrackModel(trackName: "Dog", artistName: "Molli Polli")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = #colorLiteral(red: 1, green: 0.5409764051, blue: 0.8473142982, alpha: 0.9466318295)
    
        setupSearchBar()
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cellId")
    }
    
    private func setupSearchBar() {
        navigationItem.searchController = searchController
        navigationItem.hidesSearchBarWhenScrolling = false
        searchController.searchBar.delegate = self
      
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tracks.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellId", for: indexPath)
        let track = tracks[indexPath.row]
        cell.textLabel?.text = "\(track.trackName)\n\(track.artistName)"
        cell.textLabel?.numberOfLines = 2
        cell.imageView?.image = #imageLiteral(resourceName: "Image")
        return cell
    }
    
}

extension SearchViewController: UISearchBarDelegate {
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        print(searchText)
    }
}

