import 'dart:io';

final Map<String, int> airlinePrices = {
  "first": 1000,
  "business": 500,
  "economy": 250,
};
final Map<String, int> hotelPrices = {
  "Penthouse Suite": 2000,
  "Deluxe Room": 1500,
  "Standard Room": 1000,
};

class Reservation {
  int reservationId;
  String reservationType;
  String reservationDate;
  int reservationCost;

  Reservation(this.reservationId, this.reservationType, this.reservationDate, this.reservationCost);
}

class AirlineReservation extends Reservation {
  String departureCity;
  String arrivalCity;
  String classKind;

  AirlineReservation(int reservationId, String reservationDate,
      this.classKind ,int reservationCost, this.departureCity, this.arrivalCity)
      : super(reservationId, "Airline", reservationDate, reservationCost);

  void printInfoAirLine() {
    print('Your reservation has been made successfully \n The information about your reservation \n');
    print("Reservation ID: ${this.reservationId}");
    print("Reservation Type: ${this.reservationType}");
    print("Reservation Date: ${this.reservationDate}");
    print("Reservation Cost: \$ ${this.reservationCost}");
    print("Departure City: ${this.departureCity}");
    print("Arrival City: ${this.arrivalCity}");
  }
}

class HotelReservation extends Reservation {
  String hotelName;
  String city;
  String classKind ;
  int numberOfNights;

  HotelReservation(int reservationId, String reservationDate,this.classKind 
      ,int reservationCost, this.hotelName, this.city, this.numberOfNights)
      : super(reservationId, "Hotel", reservationDate, reservationCost);
  void printInfoHotel() {
    print('Your reservation has been made successfully \n The information about your reservation \n');
    print("Reservation ID: ${this.reservationId}");
    print("Reservation Type: ${this.reservationType}");
    print("Reservation Date: ${this.reservationDate}");
    print("Reservation Cost: \$ ${this.reservationCost}");
    print("Hotel Name: ${this.hotelName}");
    print("City: ${this.city}");
    print("Number of Nights: ${this.numberOfNights}");
  }
}

void main() {
  print('Welcome');
  int nID =1;
  String state = 'yes';
  while(state == 'yes') {
    print('\nairline or hotel');
    String reservationType = stdin.readLineSync()!.trim();
    if (reservationType == 'airline') {
      print('What\'s the date you want to reserve on \?');
      String reservationDate = stdin.readLineSync()!.trim();
      print('The valid classes and prices');
      print(airlinePrices);
      print('What kind of class do you want \?');
      String classKind = stdin.readLineSync()!.trim();
      print('What\'s the departure city \?');
      String departureCity = stdin.readLineSync()!.trim();
      print('What\'s the arrival city \?');
      String arrivalCity = stdin.readLineSync()!.trim();

      var airlineReservation = AirlineReservation(nID++, reservationDate,
          classKind ,airlinePrices[classKind]!, departureCity, arrivalCity);

      airlineReservation.printInfoAirLine();
      print('anything else \? yes or no');
      state = stdin.readLineSync()!.trim();
    }
    else if (reservationType == 'hotel') {
      print('What\'s the date you want to reserve on \?');
      String reservationDate = stdin.readLineSync()!.trim();
      print('The valid classes and prices');
      print(hotelPrices);
      print('What kind of class do you want \?');
      String classKind = stdin.readLineSync()!.trim();
      print('What\'s the hotel name \?');
      String hotelName = stdin.readLineSync()!.trim();
      print('What\'s the city you want to stay \?');
      String hotelCity = stdin.readLineSync()!.trim();
      print('How many nights you want to stay \?');
      int numberOfNights = int.parse(stdin.readLineSync()!.trim());
      var hotelReservation = HotelReservation(nID++, reservationDate, classKind,
          hotelPrices[classKind]!, hotelName, hotelCity, numberOfNights);
      hotelReservation.printInfoHotel();
      print('anything else \? yes or no');
      state = stdin.readLineSync()!.trim();
    }
    else {
      print("Invalid information. Please try again.");
    }
  }
  print('Thanks for booking with us');
}

