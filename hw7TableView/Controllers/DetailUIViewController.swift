
import UIKit

class DetailUIViewController: UIViewController {

    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var mailLabel: UILabel!
    
    var phone: String!
    var mail: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        phoneLabel.text = "Phone: " + phone
        mailLabel.text = "Mail: " + mail

    }
    

}
