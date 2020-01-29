//
//  ColorsTableViewController.swift
//  Rainbow
//
//  Created by Kendra McVay on 1/28/20.
//  Copyright © 2020 Kendra McVay. All rights reserved.
//

import UIKit

class ColorsTableViewController: UITableViewController {

    var colors: [MyColor] = [
        MyColor(name: "Red", color: .red),
        MyColor(name: "Orange", color: .orange),
        MyColor(name: "Yellow", color: .yellow),
        MyColor(name: "Green", color: .green),
        MyColor(name: "Blue", color: .blue),
        MyColor(name: "Indigo", color: .cyan),
        MyColor(name: "Violet", color: .purple)
    ]

    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }
// Index Path (x = section, y = row)

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ColorCell", for: indexPath)
        
        let color = colors[indexPath.row]
        cell.textLabel?.text = color.name
        cell.backgroundColor = color.color
        return cell
//        let color = colors[indexPath.row]
//        let image = UIImage(systemName: "paintbrush.fill")
//        cell.imageView.image = image
//        cell.imageView.tintColor = color.color
//        return cell
        
        // to make it prettier ^ play around with that later to make it work
    }
   
   
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // 1. Make sure you are using the correct segue. Check condition of right section,
        if segue.identifier == "ToDetailViewController" {
            // 2. Get instance of detail view from segue's destination.
            // 3. Get the index path for the row the user tapped.
            if let detailVC = segue.destination as? ColorDetailViewController,
                let indexPath = tableView.indexPathForSelectedRow {
                //4. Initialize color with indexPath
                let color = colors[indexPath.row]
                //5. Pass the color to the detail view
                detailVC.cellColor = color
                
            }
        }
        
        
    }
}
