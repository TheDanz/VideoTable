import UIKit
import AVKit

class StartVC: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    var previewArray: [Preview] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        fillArray()
    }
    
    func fillArray() {
        let preview1 = Preview(name: "Aladdin", image: "v1.png", url: "https://ia802609.us.archive.org/23/items/Aladdin_315/Aladdin_512kb.mp4")
        let preview2 = Preview(name: "Avez Vous", image: "v2.png", url: "https://ia800604.us.archive.org/19/items/Avez-vousDjVu...LePlusPetitZooDuMonde/104_Le_Plus_Petit_Zoo_du_Monde.mp4")
        let preview3 = Preview(name: "The Kings Trumpet", image: "v3.png", url: "https://ia800705.us.archive.org/28/items/TheSpiritOf43_56/The_Spirit_of__43_512kb.mp4")
        let preview4 = Preview(name: "Popeye the Sailor Meets Aladdin and His Wonderful Lamp", image: "v4.png", url: "https://ia800703.us.archive.org/30/items/Popeye_the_Sailor_Meets_Aladdin_and_His_Wonderful_Lamp/Popeye_-_Aladdin_and_His_Wonderful_Lamp_512kb.mp4")
        previewArray.append(preview1)
        previewArray.append(preview2)
        previewArray.append(preview3)
        previewArray.append(preview4)
    }
}

extension StartVC : UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 300
      }
}

extension StartVC : UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return previewArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath) as? MyCell else { return UITableViewCell() }
        cell.name.text = previewArray[indexPath.row].name
        cell.picture.image = UIImage(named: previewArray[indexPath.row].image)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let player = AVPlayer(url: previewArray[indexPath.row].url)
        let playerControl = AVPlayerViewController()
        playerControl.player = player
        playerControl.player?.play()
        present(playerControl, animated: true, completion: nil)
    }
}
