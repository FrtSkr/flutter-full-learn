import 'package:flutter/material.dart';
import 'package:flutter_full_learn/202/service/comment_model.dart';
import 'package:flutter_full_learn/202/service/post_service.dart';

class CommentView extends StatefulWidget {
  CommentView({Key? key, this.postId}) : super(key: key);
  int? postId;
  @override
  State<CommentView> createState() => _CommentViewState();
}

class _CommentViewState extends State<CommentView> {
  late IPostService _postService;
  List<CommentModel>? _items;
  bool _isLoading = false;
  @override
  void initState() {
    super.initState();
    _postService = PostService();
    fetchItemsWithId(widget.postId ?? 0);
    print("initState comment");
  }

  void changedLoading() {
    setState(() {
      _isLoading = !_isLoading;
    });
  }

  void fetchItemsWithId(int postId) async {
    changedLoading();
    _items = await _postService.fetchRelatedCommentsWithPostId(postId);
    print("items comment: ${_items}");
    changedLoading();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            _isLoading
                ? const CircularProgressIndicator()
                : const SizedBox.shrink()
          ],
          title: const Text("Comment View"),
        ),
        body: ListView.builder(
            itemCount: _items?.length ?? 0,
            itemBuilder: (context, index) {
              return ListTile(
                textColor: Colors.amber,
                title: Text(_items?[index].email ?? ''),
              );
            }));
  }
}
