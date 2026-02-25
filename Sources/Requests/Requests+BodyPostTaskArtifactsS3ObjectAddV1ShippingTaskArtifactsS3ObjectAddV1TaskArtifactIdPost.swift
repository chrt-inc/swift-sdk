import Foundation

extension Requests {
    public struct BodyPostTaskArtifactsS3ObjectAddV1ShippingTaskArtifactsS3ObjectAddV1TaskArtifactIdPost {
        public let file: String

        public init(
            file: String
        ) {
            self.file = file
        }
    }
}

extension Requests.BodyPostTaskArtifactsS3ObjectAddV1ShippingTaskArtifactsS3ObjectAddV1TaskArtifactIdPost: MultipartFormDataConvertible {
    var multipartFormFields: [MultipartFormField] {
        [
            .field(file, fieldName: "file")
        ]
    }
}