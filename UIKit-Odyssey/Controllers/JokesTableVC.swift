//
//  ViewController.swift
//  UIKit-Odyssey
//
//  Created by Jaimin Raval on 05/08/24.
//

import UIKit

class JokesTableVC: UIViewController {

    private var jokeArr: [JokeModel] = []
    
    @IBOutlet weak var jokeTable: UITableView!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        getJokes()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTable()
    }

    
    func setupTable(){
        jokeTable.register(UINib(nibName: "JokeCell", bundle: nil), forCellReuseIdentifier: "JokeCell")
        jokeTable.dataSource = self
        jokeTable.delegate = self
    }
    
    func reloadTable(){
        DispatchQueue.main.async {
            self.jokeTable.reloadData()

        }
    }
    
    func getJokes() {
        let urlStr = "https://official-joke-api.appspot.com/jokes/random/25"
        if let url = URL(string: urlStr) {
            let session = URLSession.shared
            
            let dataTask = session.dataTask(with: url) { data, response, error in
                
//                print(response)
                
                if let error = error {
                    print(error)
                    return
                }
                
                guard let receivedData = data else {
                    print("received Data successfully")
                    return
                }
                do {
                    let jokes = try JSONDecoder().decode([JokeModel].self, from: receivedData)
                    self.jokeArr.append(contentsOf: jokes)
                    self.reloadTable()
                    print("Jokes are here:\(self.jokeArr)")
                        
                } catch {
                    debugPrint("something went wrong: \(error.localizedDescription)")
                }
            }
            dataTask.resume()
        } else {
            print("Invalid URL, please check URL and try again")
        }
    }

}


//  MARK: - tableview methods
extension JokesTableVC: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return jokeArr.count
//        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "JokeCell", for: indexPath) as! JokeCell
        cell.jokeLabel.text = jokeArr[indexPath.row].setup
//        cell.jokeLabel.text = "jokeArr[indexPath.row].setup"
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
}
