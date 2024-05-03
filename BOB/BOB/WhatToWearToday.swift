import SwiftUI

struct WeatherData: Codable {
    let main: Main
    let wind: Wind
}

struct Main: Codable {
    let temp: Double
    let humidity: Int
}

struct Wind: Codable {
    let speed: Double
}


struct WhatToWearToday: View {
    @State private var weatherData: WeatherData?
    
    var body: some View {
        VStack {
            if let data = weatherData {
                VStack {
                    Text("Kütahya Hava Durumu")
                        .font(.title)
                    Text("Sıcaklık: \(data.main.temp.formatted())°C")
                    Text("Nem: \(data.main.humidity)%")
                    Text("Rüzgar Hızı: \(data.wind.speed.formatted())m/s")
                }
                .padding()
                if  Double(data.main.temp) > 20.0 {
                    Text("Bugün Orta kalınlıkta kıyafetler tercih etmelisiniz.")
                }
                else if Double(data.main.temp) < 20.0 && Double(data.main.temp) > 10.0 {
                    Text("Bugün Orta kalınlıkta kıyafetler tercih etmelisiniz.")
                }
                else {
                    Text("Bugün Orta kalınlıkta kıyafetler tercih etmelisiniz.")
                }
                
            } else {
                Text("Veri Yükleniyor...")
            }
            
            
                
        }
        .padding()
        .onAppear {
            fetchWeatherData()
    
        }
    }
    
    func fetchWeatherData() {
        guard let url = URL(string: "https://api.openweathermap.org/data/2.5/weather?q=kutahya&appid=cff2df4fd7ca583b8af8399351d00d67&units=metric") else {
            print("Geçersiz URL")
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
            if let error = error {
                print("Hata: \(error.localizedDescription)")
                return
            }
            
            guard let httpResponse = response as? HTTPURLResponse else {
                print("Geçersiz yanıt")
                return
            }
            
            print("Yanıt Kodu: \(httpResponse.statusCode)")
            
            guard let data = data else {
                print("Boş veri")
                return
            }
            
            do {
                let decodedData = try JSONDecoder().decode(WeatherData.self, from: data)
                DispatchQueue.main.async {
                    self.weatherData = decodedData
                }
            } catch {
                print("Veri çözme hatası: \(error.localizedDescription)")
            }
        }
        
        task.resume()
    }
}

#Preview {
    WhatToWearToday()
}
