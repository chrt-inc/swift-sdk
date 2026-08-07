import Foundation

public enum StoredModel: Codable, Hashable, Sendable {
    case archivedModel(ArchivedModel)
    case model(Model)

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let value = try? container.decode(ArchivedModel.self) {
            self = .archivedModel(value)
        } else if let value = try? container.decode(Model.self) {
            self = .model(value)
        } else {
            throw DecodingError.dataCorruptedError(
                in: container,
                debugDescription: "Unexpected value."
            )
        }
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.singleValueContainer()
        switch self {
        case .archivedModel(let value):
            try container.encode(value)
        case .model(let value):
            try container.encode(value)
        }
    }
}