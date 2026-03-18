import SwiftUI
import AVFoundation

struct ContentView: View {
    @State private var timeRemaining = 60 // Time in seconds
    @State private var timer: Timer?
    @State private var isTimerRunning = false
    @State private var isNightMode = false
    
    var body: some View {
        VStack {
            ProgressRing(progress: CGFloat(timeRemaining) / 60.0)
                .frame(width: 200, height: 200)
                .padding()
            Text(timeString(timeRemaining))
                .font(.largeTitle)
                .padding()
            HStack {
                TimerButton(title: isTimerRunning ? "Pause" : "Start") {
                    if isTimerRunning {
                        self.pauseTimer()
                    } else {
                        self.startTimer()
                    }
                }
                TimerButton(title: "Reset") {
                    self.resetTimer()
                }
            }
            Toggle(isOn: $isNightMode) {
                Text("Night Mode")
            }
            .padding()
        }
        .padding()
        .background(isNightMode ? Color.black : Color.white)
        .foregroundColor(isNightMode ? Color.white : Color.black)
    }
    
    func startTimer() {
        timer?.invalidate()  // Cancel any existing timer
        isTimerRunning = true
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { _ in
            if self.timeRemaining > 0 {
                self.timeRemaining -= 1
            } else {
                self.timer?.invalidate()
                self.isTimerRunning = false
            }
        }
    }
    
    func pauseTimer() {
        timer?.invalidate()
        isTimerRunning = false
    }
    
    func resetTimer() {
        timer?.invalidate()
        timeRemaining = 60
        isTimerRunning = false
    }
    
    func timeString(_ time: Int) -> String {
        let minutes = time / 60
        let seconds = time % 60
        return String(format: "%02d:%02d", minutes, seconds)
    }
}

struct ProgressRing: View {
    var progress: CGFloat
    
    var body: some View {
        Circle()
            .trim(from: 0, to: progress)
            .stroke(Color.blue, lineWidth: 10)
            .rotationEffect(.degrees(-90))
            .animation(.linear)
    }
}

struct TimerButton: View {
    var title: String
    var action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .fontWeight(.bold)
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(8)
        }
    }
}