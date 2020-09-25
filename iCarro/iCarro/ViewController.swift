//
//  ViewController.swift
//  iCarro
//
//  Created by Grazi Berti on 25/09/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableViewCarList: UITableView!
    
    var arrayCarList = ["Fiat", "Honda", "Renault", "BMW", "Audi"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewCarList.delegate = self
        tableViewCarList.dataSource = self
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Selecionou: \(arrayCarList[indexPath.row])")
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayCarList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = arrayCarList[indexPath.row]
        cell.imageView?.image = UIImage(named: "carro.jpg")
        
        return cell
    }
    
    
}
