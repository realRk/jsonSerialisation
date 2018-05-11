//
//  ViewController.swift
//  jsonParsing@@
//
//  Created by Rk on 11/05/18.
//  Copyright © 2018 Rk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    struct Course: Decodable {
        let id: Int?
        let name: String?
        let link: String?
        let imageUrl: String?
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        let jsurl = "https://api.letsbuildthatapp.com/jsondecodable/courses_missing_fields"
        let url = URL(string: jsurl)
        
        URLSession.shared.dataTask(with: url!){
            ( data, resonse, error) in
            let data = data
            do{
                let courses = try JSONDecoder().decode([Course].self,from :data!)
                for array in courses{
                    //getting each array from the dictionary 
                    print(array.name!)
                     print(array.name!)
                     print(array.name!)
                     print(array.name!)
                     print(array.name!)
                     print(array.name!) print(array.name!)
                }
            }
            catch let JsonErr{
                print(JsonErr)
            }
            }.resume()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

