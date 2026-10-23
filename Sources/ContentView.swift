
import SwiftUI
import WebKit

struct ContentView: View {
    var body: some View {
        WebsiteView()
            .ignoresSafeArea(edges: .bottom)
    }
}

struct WebsiteView: UIViewRepresentable {
    func makeUIView(context: Context) -> WKWebView {
        let webView = WKWebView()
        webView.allowsBackForwardNavigationGestures = true

        // HIER DEINEN WEBSITE-LINK EINTRAGEN:
        let websiteURL = "https://www.etwatch.net"

        if let url = URL(string: websiteURL) {
            webView.load(URLRequest(url: url))
        }

        return webView
    }

    func updateUIView(_ uiView: WKWebView, context: Context) {
    }
}
