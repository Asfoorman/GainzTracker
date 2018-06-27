//
//  FoodTableViewController.swift
//  GainzTracker
//
//  Created by Anes Mehai  on 6/26/18.
//  Copyright © 2018 Anes Mehai . All rights reserved.
//

import UIKit

/*
 
 */
class FoodTableViewController: UITableViewController {
    
    var yogurt = Food(name: "Greek Yogurt", description: "A type of yogurt high in protein")
    var pancake = Food(name: "Pancake", description: "A flat cake, often thin and round, prepared from a starch-based batter")
    var cereal = Food(name: "Cereal", description: "A grain used for food, such as wheat, oats, or corn.")
    
    var chicken = Food(name: "Chicken", description: "A domestic fowl kept for its eggs or meat")
    var rice = Food(name: "Rice", description: "The seed of the grass species Oryza sativa (Asian rice) or Oryza glaberrima (African rice). As a cereal grain, it is the most widely consumed staple food for a large part of the world's human population, especially in Asia")
    var grape = Food(name: "Grape", description: "A berry, eaten as fruit, and used in making wine")
    
    var hamburger = Food(name: "Hamburger", description: "A round patty of ground beef, served on a bun or roll")
    var fries = Food(name: "French Fries", description: "Potatoes cut into strips and deep-fried.")
    var soup = Food(name: "Soup", description: "A liquid dish, typically made by boiling meat, fish, or vegetables, etc., in stock or water.")
    
    
    lazy var breakfast = Meal(name: "Breakfast", food: [yogurt, pancake, cereal])
    lazy var lunch = Meal(name: "Lunch", food: [chicken, rice, grape])
    lazy var dinner = Meal(name: "Dinner", food: [soup, hamburger, fries])
    
    lazy var meals: [Meal] = [breakfast, lunch, dinner] //global variable of Array of Meal
    //Lazy Initialization with Swift. Lazy initialization (also sometimes called lazy instantiation, or lazy loading) is a technique for delaying the creation of an object or some other expensive process until it's needed
    
    /*
 
     */
    override func viewDidLoad() {
        super.viewDidLoad()


        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        self.navigationItem.rightBarButtonItem = self.editButtonItem
        
        
        
   
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

//    override func numberOfSections(in tableView: UITableView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return 0
//    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        if section == 0 {
            return meals.count
        } else {
            return 0
        }
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "foodCell", for: indexPath)

        // Configure the cell...
        
        let mealPlan = meals[indexPath.row]

        cell.textLabel?.text = "\(mealPlan.name)"
        var strHolder: String = ""

        for index in 0...mealPlan.food.count-1{
            
            strHolder += " \(mealPlan.food[index].name)  "

            //- \(mealPlan.food[index].description)
            //this is the coded needed to display the description for all the food
            
        }
        
        cell.detailTextLabel?.text = strHolder
        cell.showsReorderControl = true

        return cell
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
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
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
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
