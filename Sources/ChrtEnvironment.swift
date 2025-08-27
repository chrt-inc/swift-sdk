import Foundation

public enum ChrtEnvironment: String, CaseIterable {
    case local = "https://localhost:8000"
    case development = "https://api.dev.chrt.com"
    case staging = "https://api.staging.chrt.com"
    case production = "https://api.chrt.com"
}