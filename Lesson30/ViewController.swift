
import UIKit
import CoreMotion

class ViewController: UIViewController {
    
    
    
    var manager = CMMotionManager()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        if manager.isAccelerometerAvailable {
//            manager.accelerometerUpdateInterval = 0.1
//            manager.startAccelerometerUpdates(to: .main) { [weak self] data, error in
//                if let acceleration = data?.acceleration {
//                    debugPrint("x: \(acceleration.x)")
//                    debugPrint("y: \(acceleration.y)")
//                    debugPrint("z: \(acceleration.z)")
//                    debugPrint()
//                }
//            }
//        }
        if manager.isGyroAvailable {
            manager.gyroUpdateInterval = 1
            manager.startGyroUpdates(to: .main) { [weak self] data, error in
                if let gyro = data?.rotationRate {
                    debugPrint("x gyro: \(gyro.x)")
                    debugPrint("y gyro: \(gyro.y)")
                    debugPrint("z gyro: \(gyro.z)")
                    debugPrint()
                }
            }
        }
    }


}

