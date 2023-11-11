import 'package:flutter_bloc/flutter_bloc.dart';

import '../data_model.dart';
import 'get_data_service.dart';

part 'list_events.dart';
part 'list_states.dart';

class ListBloc extends Bloc<ListEvents,ListState>{
  ListBloc():super(const ListState()){
    on<FetchListData>(_fetchData);
  }

  Future<void>_fetchData(FetchListData fetchListData,Emitter<ListState>emitter)async{
List<ListDataModel> listData=await fetchAlbum(pageNumber: state.initialPageNumber.toString());

if(listData.isEmpty){
  emitter(state.copyWith(listStatus:ListStatus.success,hasReachedMax: true,data: [...state.data,...listData] ));
}else{
  emitter(state.copyWith(listStatus:ListStatus.success,hasReachedMax: false,data: [...state.data,...listData] ));
}

  }
}