import Foundation

public enum InternalDelegationOriginEnum: String, Codable, Hashable, CaseIterable, Sendable {
    case temporalWorker = "temporal_worker"
    case livekitVoiceAgent = "livekit_voice_agent"
}