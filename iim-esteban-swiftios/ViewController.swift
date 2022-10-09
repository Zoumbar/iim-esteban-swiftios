//
//  ViewController.swift
//  iim-esteban-swiftios
//
//  Created by Esteban on 08/10/2022.
//

import UIKit

class ViewController: UIViewController {
    // Récupère la donnée via le model
    var data = [ToDo]()
    
    @IBOutlet var tableView: UITableView!
    
        override func viewDidLoad() {
            super.viewDidLoad()
            // appel de l'api
            fetchingApiData(URL: "https://jsonplaceholder.typicode.com/todos"){ result in
                self.data = result
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
            }
            
            
        }

}

func fetchingApiData(URL url:String, completion: @escaping ([ToDo]) -> Void){
    let url = URL(string: url)
    let session = URLSession.shared
    let dataTask = session.dataTask(with: url!){ data, response, error in
        if data != nil && error == nil   {
            do {
                let parsingData = try JSONDecoder().decode([ToDo].self, from: data!)
                completion(parsingData)
            }catch{
                print("Parsing error")
            }
        }
    }
    dataTask.resume()
}

extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = data[indexPath.row].title
        return cell
    }
    
}

