//
//  ViewController.swift
//  AXCFiboScroll
//
//  Created by alexchoi on 10/16/14.
//  Copyright (c) 2014 Alex Choi. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView : UITableView!
    var fibo : AXCFibo = AXCFibo();
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.tableView.backgroundColor = UIColor.darkGrayColor();
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        /* UInt64 doesn't support numbers larger than the 93rd item in the Fibonacci series:
        (lldb) po UInt64.max
         18446744073709551615
        Fibonacci item 93 is 12200160415121876738
        Fibonacci item 94 is 19740274219868223167
        */
        return 100;
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "mycell");
        cell.textLabel?.textColor = UIColor.whiteColor();
        cell.backgroundColor = UIColor.darkGrayColor();
        cell.selectionStyle = UITableViewCellSelectionStyle.None;
        if let valueForIndex : UInt64 = fibo.getFiboForIndex(indexPath.item){
            cell.textLabel?.text = "Index: \(indexPath.item)  Fibo: \(valueForIndex)"
        } else {
            cell.textLabel?.text = "Fibo number for index \(indexPath.item) too large for UInt64"
        }
        return cell;
    }
    
    
}

