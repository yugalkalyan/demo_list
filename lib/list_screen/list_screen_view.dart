
import 'package:demo1/list_bloc/list_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../data_model.dart';
part 'card_widget.dart';

class ListScreen extends StatefulWidget {
  const ListScreen({super.key});

  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {

  final _scrollController = ScrollController();
  @override
  void initState() {
    _scrollController.addListener(_onScroll);
    super.initState();
  }

  @override
  void dispose() {
    _scrollController
      ..removeListener(_onScroll)
      ..dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:const  Text("Demo App"),),
      body: BlocBuilder<ListBloc,ListState>(
        builder: (context,state){
          return ListView.builder(
            itemCount: state.data.length,
              itemBuilder: (context,index){
            return CardView(data: state.data[index]);
          });
        },
      ),
    );
  }

  void _onScroll() {
    if (_isBottom) {

    }
  }

  bool get _isBottom {
    if (!_scrollController.hasClients) return false;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.offset;
    return currentScroll >= (maxScroll * 0.9);
  }
}
