
import UIKit

class MainTableViewController: UITableViewController {

    var persons: [Person]!
    
    var bufferPerson: Person?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let detailVC = segue.destination as? DetailUIViewController else {return}
        if let name = bufferPerson?.name, let surname = bufferPerson?.surname {
            detailVC.navigationItem.title = name + " " + surname
        }
        
        detailVC.mail = bufferPerson?.mail
        detailVC.phone = bufferPerson?.phone
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return persons.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contact", for: indexPath)
        let person = persons[indexPath.row]
        cell.textLabel?.text = person.name + " " + person.surname
        return cell
    }
    
    override func tableView(_ tableView: UITableView, willSelectRowAt indexPath: IndexPath) -> IndexPath? {
        bufferPerson = persons[indexPath.row]
        return indexPath
    }
}
