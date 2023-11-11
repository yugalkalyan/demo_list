part of 'list_screen_view.dart';

class CardView extends StatelessWidget {
  const CardView({super.key,required this.data});
  final ListDataModel data;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(children: [
        Image.network(data.thumbnailUrl),
        Text(data.title)
      ],
      ),
    );
  }
}
