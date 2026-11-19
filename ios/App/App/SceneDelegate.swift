import UIKit
import AVFoundation
#if canImport(Capacitor)
import Capacitor
#endif

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    private func setupAudioPlayback() {
        do {
            let session = AVAudioSession.sharedInstance()
            try session.setCategory(.playback, mode: .default, options: [.mixWithOthers])
            try session.setActive(true, options: [])
        } catch {
            print("SceneDelegate AVAudioSession error: \(error)")
        }
    }

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let _ = (scene as? UIWindowScene) else { return }
        setupAudioPlayback()

        if let url = connectionOptions.urlContexts.first?.url {
            #if canImport(Capacitor)
            _ = ApplicationDelegateProxy.shared.application(UIApplication.shared, open: url, options: [:])
            #endif
        }
    }

    func sceneDidDisconnect(_ scene: UIScene) {
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        setupAudioPlayback()
    }

    func sceneWillResignActive(_ scene: UIScene) {
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        setupAudioPlayback()
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
    }

    func scene(_ scene: UIScene, openURLContexts URLContexts: Set<UIOpenURLContext>) {
        if let url = URLContexts.first?.url {
            #if canImport(Capacitor)
            _ = ApplicationDelegateProxy.shared.application(UIApplication.shared, open: url, options: [:])
            #endif
        }
    }

    func scene(_ scene: UIScene, continue userActivity: NSUserActivity) {
        #if canImport(Capacitor)
        _ = ApplicationDelegateProxy.shared.application(UIApplication.shared, continue: userActivity, restorationHandler: { _ in })
        #endif
    }

}
