import UIKit
import RxSwift

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    func applicationDidFinishLaunching(_ application: UIApplication) {
        #if DEBUG
        _ = Observable<Int>.interval(2, scheduler: MainScheduler.instance).subscribe(onNext: { res in
            debugPrint(res)
        })
        #endif
    }

}
