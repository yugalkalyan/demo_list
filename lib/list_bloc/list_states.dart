part of 'list_bloc.dart';

enum ListStatus{
  initial,
  success,
  failure,
}

class ListState{
  const ListState(
  {this.listStatus=ListStatus.initial,this.hasReachedMax=false,this.data=const<ListDataModel>[],this.initialPageNumber=1}
      );

  final ListStatus listStatus;
  final bool hasReachedMax;
  final List<ListDataModel> data;
  final int initialPageNumber;

  ListState copyWith({
     ListStatus? listStatus,
   bool? hasReachedMax,
     List<ListDataModel>? data,
}){
    return ListState(
      data: data??this.data,
      hasReachedMax: hasReachedMax??this.hasReachedMax,
      listStatus: listStatus??this.listStatus
    );
  }

}