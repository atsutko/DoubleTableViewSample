//
//  ViewController.swift
//  DoubleTableView
//
//  Created by TakaoAtsushi on 2019/03/11.
//  Copyright © 2019 TakaoAtsushi. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
   
    var ingredientArray: [String] = ["卵", "カキ", "小麦粉"]
    var methodArray: [String] = ["調味料を混ぜる", "卵を混ぜる"]
    
    @IBOutlet weak var ingredientTableView: UITableView!
    @IBOutlet weak var methodTableView: UITableView!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        configrureTableView()
        
    }
    
    func configrureTableView() {
        //tableViewの設定
        ingredientTableView.dataSource = self
        methodTableView.dataSource = self
        
        let nib1 = UINib(nibName: "IndredientTableViewCell", bundle: Bundle.main)
        ingredientTableView.register(nib1, forCellReuseIdentifier: "IngredientCell")
        
        let nib2 = UINib(nibName: "MethodTableViewCell", bundle: Bundle.main)
        methodTableView.register(nib2, forCellReuseIdentifier: "MethodCell")
        
        ingredientTableView.tableFooterView = UIView()
        methodTableView.tableFooterView = UIView()
        
        ingredientTableView.rowHeight = 21.0
        methodTableView.rowHeight = 21.0
        
    }
    
    
    //セルの数を決めるもの
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView == ingredientTableView {
            return ingredientArray.count
        } else {
            return methodArray.count
        }
    }
    
    //セルの内容を決める
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if tableView == ingredientTableView {
            let cell = tableView.dequeueReusableCell(withIdentifier: "IngredientCell") as! IndredientTableViewCell
            cell.ingredientLabel.text = ingredientArray[indexPath.row]
            return cell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "MethodCell") as! MethodTableViewCell
            cell.methodLabel.text = methodArray[indexPath.row]
            return cell
        }
    }
   


}

