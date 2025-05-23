import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/note_model.dart';

class NoteCard extends StatelessWidget {
  final Note note;
  final VoidCallback onTap;

  const NoteCard({super.key, required this.note, required this.onTap});

  @override
  Widget build(BuildContext context) {
    DateTime updatedLast = note.updatedAt;
    DateTime lastModified = DateTime(updatedLast.year, updatedLast.month, updatedLast.day, updatedLast.hour, updatedLast.minute);
    String formatDate = DateFormat('yyyy-MM-dd - kk:mm').format(lastModified);
    return Card(
      color: note.backgroundColor,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(note.title, style: Theme.of(context).textTheme.titleMedium, maxLines: 1, overflow: TextOverflow.ellipsis),
              const SizedBox(height: 4),
              Text(note.category, style: Theme.of(context).textTheme.labelSmall),
              const SizedBox(height: 4),
              Text('Last Modified: ${formatDate}', style: Theme.of(context).textTheme.labelSmall),
              const SizedBox(height: 8),
              Text(note.content, maxLines: 3, overflow: TextOverflow.ellipsis),
            ],
          ),
        ),
      ),
    );
  }
}
