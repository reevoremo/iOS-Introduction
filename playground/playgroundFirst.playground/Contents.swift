import UIKit


struct RandomUser: Codable {
    let results: [UserInformation]
}

struct UserInformation: Codable{
    let gender: String
    let name: UserName
}

struct UserName: Codable{
    let title: String
    let first: String
    let last: String
}

var request = URLRequest(url: URL(string: "https://randomuser.me/api/")!)

request.httpMethod = "GET"

URLSession.shared.dataTask(with: request) { (data, response, error) in
    do{
        let jsonDecoder = JSONDecoder()
        let responseModel = try jsonDecoder.decode(RandomUser.self, from: data!)
        print(responseModel)
    } catch let error {
        print("JSON Serialization ERROR: ", error)
    }
}.resume()


