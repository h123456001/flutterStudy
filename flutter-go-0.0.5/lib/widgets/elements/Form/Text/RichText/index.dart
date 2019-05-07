import 'package:flutter/material.dart';

import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:flutter_go/components/widget_demo.dart';
import 'demo.dart';
const String intro = """
### **简介**

> 具有复杂样式的文本显示组件

在富文本使用多个不同风格的widget显示文本。要显示的文本使用TextSpan对象树来描述，每个对象都有一个用于该子树的关联样式。文本可能会跨越多行，也可能全部显示在同一行上，具体取决于布局约束。

无论是Text或者Text.rich, 查看源代码发现. 都是由RichText构建出来

RichText的源码展示

```
// Text 源码
@override
  Widget build(BuildContext context) {
      ...
      Widget result = RichText(
      ...
    
        style: effectiveTextStyle,
        text: data,
        children: textSpan != null ? <TextSpan>[textSpan] : null,
      ),
    );
    ...
    return result;
  }
```
### **基本实例**

""";
const String diff = """


""";

class Demo extends StatefulWidget {
  static const String routeName = '/element/Form/Text/RichText';
  _Demo createState() => _Demo();
}

class _Demo extends State<Demo> {

  Widget build(BuildContext context) {
    return WidgetDemo(
      title: 'Rich Text',
      docUrl: 'https://docs.flutter.io/flutter/widgets/RichText-class.html',
      codeUrl: 'elements/Form/Text/RichText/index.dart',
      contentList: [
        intro,
        RichTextDemo(),
      ]);
  }
}