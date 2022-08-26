import 'dart:io';
import 'custom_exception.dart';

abstract class IFileDownload {
  bool? downloadItem(FileItem? fileItem);
  void toShare() {
    print("deneme");
  }
}

class FileDownload implements IFileDownload {
  @override
  bool? downloadItem(FileItem? fileItem) {
    if (fileItem == null) throw FileDownloadException();

    print('FF');
    return true;
  }

  @override
  void toShare() {
    print("FileDownload");
  }
}

class FileItem {
  final String name;
  final File file;

  FileItem(this.name, this.file);
}
