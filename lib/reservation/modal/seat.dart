class Seat{
 final int seatNo;
 final bool isAlreadySelected;
 bool isSelected;

  Seat({required this.seatNo, required this.isSelected, required this.isAlreadySelected,});

}

final List<Seat> silverSeatsA = [
  Seat(seatNo: 1,isSelected: true, isAlreadySelected: true),
  Seat(seatNo: 2,isSelected: true, isAlreadySelected: true),
  Seat(seatNo: 3,isSelected: false, isAlreadySelected: false),
];


final List<Seat> silverSeatsB = [
  Seat(seatNo: 4,isSelected: true, isAlreadySelected: true),
  Seat(seatNo: 5,isSelected: true, isAlreadySelected: true),
  Seat(seatNo: 6,isSelected: false, isAlreadySelected: false),
];