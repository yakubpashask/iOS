import UIKit
class ViewController: UIViewController{

    var myResponseObject:ResponseObject?
    @IBOutlet var mainStackView: UIStackView!
    override func viewDidLoad() {
        super.viewDidLoad()
  if let path = NSBundle.mainBundle().pathForResource("sample", ofType: "json") {
            do {
                let data = try NSData(contentsOfURL: NSURL(fileURLWithPath: path), options: NSDataReadingOptions.DataReadingMappedIfSafe)
                if let jsonResult: NSDictionary = try NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions.MutableContainers) as? NSDictionary
                {
                    print("data:\(jsonResult)")
                    //I have used ObjectMapper here
                    //myResponseObject = Mapper<ResponseObject>().map(jsonResult)
                    
                }
            } catch let error as NSError {
                print(error.localizedDescription)
            }
        } else {
            print("Invalid filename/path.")
        }
  }
}
