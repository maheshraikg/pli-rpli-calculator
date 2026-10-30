import 'dart:io';
import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:flutter/rendering.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:share_plus/share_plus.dart';

/// Renders the widget under [boundary] to PNG. Text is drawn by Flutter's
/// own engine, so every Indian script is shaped correctly.
Future<Uint8List> capturePng(RenderRepaintBoundary boundary, {double pixelRatio = 2.5}) async {
  final image = await boundary.toImage(pixelRatio: pixelRatio);
  final bytes = await image.toByteData(format: ui.ImageByteFormat.png);
  image.dispose();
  return bytes!.buffer.asUint8List();
}

/// One A4-width PDF page holding the image (as tall as the content needs).
Future<Uint8List> pngToPdf(Uint8List png, {required double aspectRatio, required String title}) {
  const width = 595.0; // A4 width in points
  final doc = pw.Document(title: title, creator: 'Premium & Maturity Calculator');
  doc.addPage(pw.Page(
    pageFormat: PdfPageFormat(width, width / aspectRatio),
    margin: pw.EdgeInsets.zero,
    build: (_) => pw.Image(pw.MemoryImage(png), fit: pw.BoxFit.fill),
  ));
  return doc.save();
}

Future<void> shareBytes(Uint8List bytes, {required String fileName, required String mimeType, String? text}) async {
  final dir = await getTemporaryDirectory();
  final file = File('${dir.path}/$fileName');
  await file.writeAsBytes(bytes, flush: true);
  await SharePlus.instance.share(ShareParams(files: [XFile(file.path, mimeType: mimeType)], text: text));
}
