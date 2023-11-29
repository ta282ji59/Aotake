import UIKit
import MapKit

class MapDisplay: UIViewController {

    @IBOutlet weak var mapview: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 地図の中心位置を設定
        let location = CLLocationCoordinate2D(latitude: 37.523671004456, longitude: 139.93913093312)
        let region = MKCoordinateRegion(center: location, latitudinalMeters: 1500, longitudinalMeters: 1500)
                mapview.setRegion(region, animated: true)
    }
}



