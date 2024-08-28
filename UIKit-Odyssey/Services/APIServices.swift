//
//  APIServices.swift
//  UIKit-Odyssey
//
//  Created by Jaimin Raval on 26/08/24.
//

//import Foundation
//
//class APIServices {
//    
//    private let urlStr = "https://official-joke-api.appspot.com/jokes/random/25"
//    
//    func fetchJokes(completionHandler: @escaping([JokeModel])-> Void) {
//        if let url = URL(string: urlStr) {
//            let session = URLSession.shared
//            
//            let dataTask = session.dataTask(with: url) { data, response, error in
////                print(response)
//                guard let jsonData = data else { return }
//                do {
//                    let decoder = JSONDecoder()
//                    
//                    completionHandler(.success)
////                        debugPrint(jsonData)
////                        self.jokeArr.append(contentsOf: jsonData)
////                        self.jokeTable.reloadData()
//                    }
//                        
//                } catch {
//                    debugPrint("something went wrong: \(error.localizedDescription)")
//                }
//            }
//            dataTask.resume()
//        } else {
//            print("Invalid URL, please check URL and try again")
//        }
//    }
//}
