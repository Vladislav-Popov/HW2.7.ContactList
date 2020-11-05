
import UIKit

class TabBarController: UITabBarController {
    
    let persons = DataManager().getPersons()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let navVC = viewControllers?.first as? UINavigationController else {
            return
        }
        guard let mainVC = navVC.viewControllers.first as? MainTableViewController else {
            return
        }
        mainVC.persons = persons
 
        guard let nav1VC = viewControllers?.last as? UINavigationController else {
            return
        }
        guard let secondVC = nav1VC.viewControllers.first as? SecondTableViewController else {
            return
        }
        secondVC.persons = persons
    }
}
