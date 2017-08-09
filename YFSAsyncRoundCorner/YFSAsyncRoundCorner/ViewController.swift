//
//  ViewController.swift
//  YFSAsyncRoundCorner
//
//  Created by FYWCQ on 2017/8/6.
//  Copyright © 2017年 YFWCQ. All rights reserved.
//

import UIKit


let cellIdentifier = "cellIdentifier"
class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    var tableView:UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tableView = UITableView(frame: self.view.bounds, style: UITableViewStyle.plain)
        tableView.delegate = self
        tableView.dataSource = self
        
        self.view.addSubview(tableView)
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 76
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier) as? YFCell
        if cell == nil {
            cell = YFCell(style: .default, reuseIdentifier: cellIdentifier)
        }
        
        
        cell?.headImageView.yf_setAsyncRoundCornnerImage(with: URL(string: "http://zoneke-img.b0.upaiyun.com/76e8550438153b35489914e1afe20392.jpg!120x120"), placeholder:UIImage(named: "defaultImage")?.yf_roundConner())
        
        return cell!
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

