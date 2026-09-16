import Foundation

public enum UnprocessableEntityErrorBody: Codable, Hashable, Sendable {
    case fileDownloadErrorRes(FileDownloadErrorRes)
    case fileDownloadRequestErrorRes(FileDownloadRequestErrorRes)

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let value = try? container.decode(FileDownloadErrorRes.self) {
            self = .fileDownloadErrorRes(value)
        } else if let value = try? container.decode(FileDownloadRequestErrorRes.self) {
            self = .fileDownloadRequestErrorRes(value)
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
        case .fileDownloadErrorRes(let value):
            try container.encode(value)
        case .fileDownloadRequestErrorRes(let value):
            try container.encode(value)
        }
    }
}