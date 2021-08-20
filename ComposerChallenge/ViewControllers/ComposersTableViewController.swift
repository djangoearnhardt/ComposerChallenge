//
//  ComposersTableViewController.swift
//  ComposerChallenge
//
//  Created by Sam LoBue on 8/20/21.
//

import UIKit

class ComposersTableViewController: UITableViewController {

    let reuseIdentifier = "composerCell"
    var composerManager: ComposerManager = ComposerManager.shared
    var composers: [Composer] = [] {
        didSet {
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        composerManager.fetchComposers { result in
            switch result {
            case .success(let composers):
                DispatchQueue.main.async {
                    self.composers = composers
                }
                print(composers)
            case .failure(let error):
                print(error)
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return composers.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier, for: indexPath)
        cell.textLabel?.text = composers[indexPath.row].firstName
        cell.detailTextLabel?.text = composers[indexPath.row].lastName
        return cell
    }
}
