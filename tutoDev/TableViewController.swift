//
//  ViewController.swift
//  tutoDev
//
//  Created by Behan Remoshan on 24/04/2019.
//  Copyright © 2019 Behan Remoshan. All rights reserved.
//

import UIKit

class TableViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var array = [String]()
    
    var arrayFilms = [Film]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        array = ["Super", "Fast", "super", "easy","Super", "Fast", "super", "easy","Super", "Fast", "super", "easy","Super", "Fast", "super", "easy","Super", "Fast", "super", "easy","Super", "Fast", "super", "easy"]
        
        let film = Film("Avengers: EndGame", releasedOn: "2019")
        let film2 = Film.init("Avengers: Infinity War", releasedOn: "2018")
        arrayFilms.append(film)
        arrayFilms.append(film2)
        
        print(arrayFilms)
    }
}

extension TableViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayFilms.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "textCell") as? FilmTableViewCell else {
            return UITableViewCell()
        }
        cell.titleLabel.text = arrayFilms[indexPath.row].title
        cell.releaseYearLabel.text = arrayFilms[indexPath.row].releaseYear
        return cell
    }
}

extension TableViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(arrayFilms[indexPath.row].releaseYear)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
}
