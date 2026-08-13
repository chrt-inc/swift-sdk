import Foundation

public enum StoredModel: Codable, Hashable, Sendable {
    case model(Model)
    case archivedModel(ArchivedModel)

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let value = try? container.decode(Model.self) {
            self = .model(value)
        } else if let value = try? container.decode(ArchivedModel.self) {
            self = .archivedModel(value)
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
        case .model(let value):
            try container.encode(value)
        case .archivedModel(let value):
            try container.encode(value)
        }
    }
}