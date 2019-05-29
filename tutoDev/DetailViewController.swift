//
//  DetailViewController.swift
//  tutoDev
//
//  Created by Behan Remoshan on 15/05/2019.
//  Copyright © 2019 Behan Remoshan. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var labelTitle: UILabel!
    @IBOutlet weak var labelYear: UILabel!
    var film : Film?

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        // Do any additional setup after loading the view.

    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    func setupView(){
        labelTitle.text = film?.title
        labelYear.text = film?.releaseYear
    }
}
