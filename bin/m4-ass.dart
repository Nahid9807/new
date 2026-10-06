import 'dart:io';
extension MoneyFormatter on double {
  String toCurrency() => '৳${this.toStringAsFixed(2)}';
}
class Expence{
  Expence(this.title,this.amount,this.catagory);
  String title;
  double amount;
  String catagory;
  String show(){// first a ami void disilam pore case 2 te data print korte void kaj kore na then String dilam . and sub class a override korle signature ak hote hoi
    return"$title | ${amount.toCurrency()} | $catagory";
  }
}
class Food extends Expence{
  Food(super.title,super.amount,super.catagory);
  @override
  String show() {
    return"$title | ${amount.toCurrency()} | $catagory";
  }
}
class Transport extends Expence{
  Transport(super.title,super.amount,super.catagory);
  @override
  String show() {
    return"$title | ${amount.toCurrency()} | $catagory";
  }

}
class Entertainment extends Expence{
  Entertainment(super.title,super.amount,super.catagory);
  @override
  String show() {
    return"$title | ${amount.toCurrency()} | $catagory";
  }
}
void main (){
  List<Expence>expence=[];
  bool whileRun=true;

  while(whileRun){
    print("""===== Expense Tracker =====
1. Add Expense
2. View All Expenses
3. Show Total Expenses
4. Exit""");
    stdout.write("Enter a operation:");
    String? operation=stdin.readLineSync();
    switch (operation){
      case "1":
        stdout.write("Enter Expense Title:");
        String title=stdin.readLineSync()!;
        stdout.write("Enter Expense Amount:");
        String inamount=stdin.readLineSync()!;
        double amount=double.parse(inamount);
        
        print("Available Catagory is 1.Food | 2.Transport | 3.Entertainment  ");
        stdout.write("Enter Category(1-3):");
        String catagory=stdin.readLineSync()!;
        if(catagory=="1"){expence.add(Food(title, amount, "Food"));}
        else if(catagory=="2"){expence.add(Transport(title, amount,"Transport"));}
        else {expence.add(Entertainment(title, amount,"Entertainment"));}
        print("Expense Added Successfully!");
        break;
        // expence.forEach((ex){
        //   ex.show();
        // });
      case "2":
        print('\n===== All Expenses =====');
        for(int i=0; i<expence.length;i++){
          print("${i+1}.${expence[i].show()}");
        }
        break;
      case "3":
        double? total;
        for(int i=0; i<expence.length;i++){
          total =total! + expence[i].amount;
        }
        print("Total Expenses:$total");
        break;
      case "4":
        print("Thank you for using Expense Tracker!");
        whileRun=false;
      default:
        print("Invalid choice.");
    }
    
  }

}