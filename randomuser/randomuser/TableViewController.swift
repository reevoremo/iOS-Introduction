//
//  ViewController.swift
//  randomuser
//
//  Created by Behan Remoshan on 05/06/2019.
//  Copyright © 2019 Behan Remoshan. All rights reserved.
//

import UIKit

class TableViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var results: UserBase?
    var userArray: [RandomUser]?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        fetchUsers()
        
    }

    func fetchUsers(){
        var request = URLRequest(url: URL(string: "https://randomuser.me/api/?results=10")!)
        
        request.httpMethod = "GET"
        
        URLSession.shared.dataTask(with: request) { (data, response, error) in
            do{
                let jsonDecoder = JSONDecoder()
                let responseModel = try jsonDecoder.decode(UserBase.self, from: data!)
                self.userArray = responseModel.results
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
                print(responseModel)
            } catch let error {
                print("JSON Serialization ERROR: ", error)
            }
            }.resume()
    }
    
    func formatName(userName: UserName) -> String {
        return userName.title.capitalized + " " + userName.first.capitalized + " " + userName.last.uppercased()
    }

}

extension TableViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return userArray?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "user") as? UserTableViewCell else {
            print("falied here")
            return UITableViewCell()
        }
        print("falied not here")
        if let user = userArray?[indexPath.row] {
            let fullName = formatName(userName: user.name)
            cell.nameLabel.text = fullName
        }
        return cell
    }
    
    
}




