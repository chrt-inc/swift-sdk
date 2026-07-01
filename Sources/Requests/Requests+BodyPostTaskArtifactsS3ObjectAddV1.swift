import Foundation

extension Requests {
    public struct BodyPostTaskArtifactsS3ObjectAddV1 {
        public let file: FormFile

        public init(
            file: FormFile
        ) {
            self.file = file
        }
    }
}

extension Requests.BodyPostTaskArtifactsS3ObjectAddV1: MultipartFormDataConvertible {
    var multipartFormFields: [MultipartFormField] {
        [
            .file(file, fieldName: "file")
        ]
    }
}