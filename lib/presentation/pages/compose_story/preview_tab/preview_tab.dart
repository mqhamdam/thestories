import 'package:flutter/cupertino.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:thestories/data/dummy_data.dart';

class PreviewTab extends StatelessWidget {
  const PreviewTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Markdown(data: markdownData);
  }
}
