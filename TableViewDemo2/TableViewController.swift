//
//  TableViewController.swift
//  TableViewDemo2
//
//  Created by Vincent Salinas on 5/22/22.
//

import UIKit

class TableViewController: UITableViewController {
    
    struct SettingStruct {
        var icon : String
        var setting : String
        init(_ icon: String, _ setting: String) {
            self.icon = icon
            self.setting = setting
        }
    }
    
    struct SectionStruct {
        let section : Int
        var settings : [SettingStruct]
        
        init(_ section: Int, _ settings: [SettingStruct]) {
            self.section = section
            self.settings = settings
        }
    }
    
    var tableData = [SectionStruct]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initialization()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source
    
    func initialization() {
        tableData.append(SectionStruct(0, [
            SettingStruct("gearshape", "General"),
            SettingStruct("gearshape", "Accessibility"),
            SettingStruct("gearshape", "Privacy")
        ]))
        tableData.append(SectionStruct(1, [
            SettingStruct("gearshape", "Passwords"),
        ]))
        tableData.append(SectionStruct(2, [
            SettingStruct("gearshape", "Safari"),
            SettingStruct("gearshape", "News"),
            SettingStruct("gearshape", "Translate"),
            SettingStruct("gearshape", "Maps"),
            SettingStruct("gearshape", "Shortcuts"),
            SettingStruct("gearshape", "Health"),
            SettingStruct("gearshape", "Siri & Search")
        ]))
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return tableData.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return tableData[section].settings.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCellController

        // Configure the cell...
        cell.tableViewCellLabel.text = tableData[indexPath.section].settings[indexPath.row].setting
        cell.tableViewCellImage.image = UIImage(systemName: tableData[indexPath.section].settings[indexPath.row].icon
        )
        
        return cell
    }
    
//    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//        return "header"
//    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view = UIView(frame: CGRect(x: 0, y: 0, width: tableView.frame.width, height: 40))
        
        view.backgroundColor = .white
        
        return view
    }
    
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
