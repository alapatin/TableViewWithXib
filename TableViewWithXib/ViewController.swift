//
//  ViewController.swift
//  TableViewWithXib
//
//  Created by macbook air on 06/12/2018.
//  Copyright © 2018 alex. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    let animalsImages = ["elephant", "crazy_monkey", "gorilla", "lemur", "mouse"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tableView.delegate = self
        tableView.dataSource = self
        
        let nib = UINib.init(nibName: "AnimalTableViewCell", bundle: nil)
        self.tableView.register(nib, forCellReuseIdentifier: "AnimalTableViewCell")
    }


}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animalsImages.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "AnimalTableViewCell", for: indexPath) as? AnimalTableViewCell {
            
            cell.name.text = animalsImages[indexPath.row]
            cell.picture.image = UIImage(named: animalsImages[indexPath.row])
            return cell
            
        }
        
        return UITableViewCell()
    }
    
    
}
