import 'dart:io';

void main(){
  performtask();
}

void performtask() async {
  task1();
  // String resultdata = await task2();
  // task3(resultdata);
  print(task2);
}

void task1(){
  String result = 'task 1 data';
  print('Task 1 Complete');
}

Future<String> task2() async {
  Duration threesceond = Duration(seconds: 5);

  String result='ddfvdsv';
  await Future.delayed(threesceond,(){
    result = 'task 2 of all the data';
    print('Task 2 Complete');
  });

  int plate=21;
  await Future.delayed(threesceond,(){
    plate = 423432523;
    print('Task 2 Complete');
  });
  // return plate;
  return result;
}

void task3(String task21data){
  String result = 'task 3 data';
  print('Task 3 Complete +/ $task21data');
}
