import UIKit
import WebKit

class HistoryTableViewController: UITableViewController {
static var urls: [WKBackForwardListItem] = []


override func numberOfSections(in tableView: UITableView) -> Int {
    return 1
}

override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
     return HistoryTableViewController.urls.count
}

override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "historyCell", for: indexPath)
    let urlClass = HistoryTableViewController.urls[indexPath.row]
    cell.textLabel?.text = urlClass.title
    cell.detailTextLabel?.text = urlClass.url as? String
    return cell
  }
  
  override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
    return true
  }
  
   override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
    if editingStyle == .delete {
    
      tableView.deleteRows(at: [indexPath], with: .fade)
    } else if editingStyle == .insert {
     
    }   
  }
  
   override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
  }
  
  override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
    // Return false if you do not want the item to be re-orderable.
    return true
  }
}
