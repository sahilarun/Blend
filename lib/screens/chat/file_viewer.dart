import 'package:sahil/helper/imports/common_import.dart';
class FileViewer extends StatefulWidget {
  final String filePath;

  const FileViewer({Key? key, required this.filePath}) : super(key: key);

  @override
  State<FileViewer> createState() => _FileViewerState();
}

class _FileViewerState extends State<FileViewer> {
  @override
  void initState() {
    // load();
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
