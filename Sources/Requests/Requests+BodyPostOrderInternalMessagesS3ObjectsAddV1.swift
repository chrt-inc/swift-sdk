import Foundation

extension Requests {
    public struct BodyPostOrderInternalMessagesS3ObjectsAddV1 {
        public let file: FormFile

        public init(
            file: FormFile
        ) {
            self.file = file
        }
    }
}

extension Requests.BodyPostOrderInternalMessagesS3ObjectsAddV1: MultipartFormDataConvertible {
    var multipartFormFields: [MultipartFormField] {
        [
            .file(file, fieldName: "file")
        ]
    }
}