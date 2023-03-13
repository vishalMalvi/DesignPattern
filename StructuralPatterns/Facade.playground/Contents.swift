import Foundation

// Complex subsystem
class AudioPlayer {
    func loadSong() {
        print("Loading song...")
    }
    
    func playSong() {
        print("Playing song...")
    }
    
    func pauseSong() {
        print("Pausing song...")
    }
    
    func stopSong() {
        print("Stopping song...")
    }
}

// Facade
class AudioPlayerFacade {
    private let audioPlayer = AudioPlayer()
    
    func playMusic() {
        audioPlayer.loadSong()
        audioPlayer.playSong()
    }
    
    func stopMusic() {
        audioPlayer.stopSong()
    }
    
    func pauseMusic() {
        audioPlayer.pauseSong()
    }
}

// Usage
let audioPlayerFacade = AudioPlayerFacade()
audioPlayerFacade.playMusic() // "Loading song..." and "Playing song..."
audioPlayerFacade.pauseMusic() // "Pausing song..."
audioPlayerFacade.stopMusic() //  "Stopping song..."
