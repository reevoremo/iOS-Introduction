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
    
    var selectedFilm: Film?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let film = Film("Avengers: EndGame", releasedOn: "2019", directedBy: "Russo Bros.", with:["Robert Downey Jr.", "Chris Evans"], description: "After the snap")
        let film2 = Film.init("Avengers: Infinity War", releasedOn: "2017", directedBy: "Russo Bros.", with:["Robert Downey Jr.", "Chris Evans"], description: "Before the snap")
        
        arrayFilms.append(film)
        arrayFilms.append(film2)
        
        print(arrayFilms)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        guard let detailViewController = segue.destination as? DetailViewController else {
            return
        }
        detailViewController.film = selectedFilm
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
        selectedFilm = arrayFilms[indexPath.row]
        performSegue(withIdentifier: "showDetail", sender: nil)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
}
