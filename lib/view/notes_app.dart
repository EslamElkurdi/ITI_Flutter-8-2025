import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class NotesHome extends StatefulWidget {
  const NotesHome({super.key});

  @override
  State<NotesHome> createState() => _NotesHomeState();
}

class _NotesHomeState extends State<NotesHome>
    with SingleTickerProviderStateMixin {
      
  late TabController _tabController;

  Database? _db;
  List<Map<String, dynamic>> _notes = [];

  // controllers
  final _titleController = TextEditingController();
  final _contentController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _tabController = TabController(length: 2, vsync: this);

    _initDb();
  }

  Future<void> _initDb() async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, "notes.db");

    _db = await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) {
        return db.execute(
          "CREATE TABLE notes(id INTEGER PRIMARY KEY AUTOINCREMENT, title TEXT, content TEXT)",
        );
      },
    );
    // fetch notes
    _fetchNotes();
  }

  Future<void> _fetchNotes() async {
    final data = await _db!.query("notes");

    setState(() {
      _notes = data;
    });
  }

  Future<void> _addNote() async {
    final title = _titleController.text;
    final content = _contentController.text;

    if (title.isEmpty || content.isEmpty) return;

    await _db!.insert("notes", {"title": title, "content": content});

    _titleController.clear();
    _contentController.clear();
    _fetchNotes();
    _tabController.animateTo(0);
  }

  Future<void> _deleteNote(int id) async {
    await _db!.delete("notes", where: "id = ?", whereArgs: [id]);
    _fetchNotes();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notes App"),
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(icon: Icon(Icons.list), text: "All Notes"),
            Tab(icon: Icon(Icons.add), text: "Add Note"),
          ],
        ),
      ),

      body: TabBarView(
        controller: _tabController,
        children: [
          // All notes
          _notes.isEmpty
              ? Center(child: Text("No notes yet"))
              : ListView.builder(
                itemCount: _notes.length,
                itemBuilder: (context, index) {
                  final note = _notes[index];

                  return Card(
                    elevation: 4.0,
                    child: ListTile(
                      title: Text(note["title"]),
                      subtitle: Text(note["content"]),
                      trailing: IconButton(
                        onPressed: () => _deleteNote(note["id"]),
                        icon: Icon(Icons.delete),
                      ),
                    ),
                  );
                },
              ),

          // Add note
          Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              children: [
                TextField(
                  controller: _titleController,
                  decoration: InputDecoration(labelText: "Title"),
                ),

                TextField(
                  controller: _contentController,
                  decoration: InputDecoration(labelText: "Content"),
                ),

                SizedBox(height: 30),

                ElevatedButton(
                  onPressed: () => _addNote(),
                  child: Text("Save Note"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
