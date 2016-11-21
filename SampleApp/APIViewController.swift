//
//  APIViewController.swift
//  SampleApp
//
//  Created by Dante R Hunt on 11/19/16.
//  Copyright © 2016 Dante R Hunt. All rights reserved.
//

import UIKit
import Alamofire

class APIViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var data: [String] = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10"]
    
    //var request = Alamofire.request("https://www.omdbapi.com/?s=Batman").responseJSON { response in
      //  if let json = response.result.value as? [String: Any]{
        //    for (key, value) in json {
                // access all key / value pairs in dictionary
          //      if let array = value as? [Any] {
            //        print(array.count)
                    
                    //for imdbData in array {
                    
                    //}
                    
              //  }

            //}
       // }
    //}
    // MARK: - Table View
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //request.responseData(completionHandler: <#T##(DataResponse<Data>) -> Void#>)
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        cell.textLabel?.text = data[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
