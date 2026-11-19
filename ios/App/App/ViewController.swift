import UIKit
import Capacitor
import AVFoundation
import WebKit

class ViewController: CAPBridgeViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        configureAudioSession()
        configureWebView()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        configureAudioSession()
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        configureAudioSession()
        configureWebView()
    }

    private func configureWebView() {
        if let webView = self.webView {
            webView.configuration.allowsInlineMediaPlayback = true
            webView.configuration.mediaTypesRequiringUserActionForPlayback = []
        }
    }

    private func configureAudioSession() {
        do {
            let session = AVAudioSession.sharedInstance()
            try session.setCategory(.playback, mode: .default, options: [.mixWithOthers])
            try session.setActive(true, options: [])
            print("Halo: AVAudioSession configured to .playback with .mixWithOthers successfully")
        } catch {
            print("Halo: AVAudioSession configuration error: \(error)")
        }
    }
}
