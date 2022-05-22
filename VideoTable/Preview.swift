import UIKit

class Preview {
    var name: String
    var image: String
    var url: URL
    
    init(name: String, image: String, url: String) {
        self.name = name
        self.image = image
        self.url = URL(string: url)!
    }
}
