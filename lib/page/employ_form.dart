import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:intl/intl.dart';
import 'package:sampurnagroupmobile/constants.dart';
import 'package:sampurnagroupmobile/page/MyRadioButton.dart';
import 'package:sampurnagroupmobile/page/details.dart';

class FormEmploy extends StatefulWidget {
  const FormEmploy({Key? key}) : super(key: key);

  @override
  State<FormEmploy> createState() => _FormEmployState();
  
}

class _FormEmployState extends State<FormEmploy> {

  _FormEmployState(){
    _selectedVal = _groupList[0];
  }

  //Variables
  final _informasiKaryawanController = TextEditingController();
  final _informasiNIKController = TextEditingController();
  final _informasiAliasController = TextEditingController();
  InformasiTypeEnum? _informasiTypeEnum;

  final _groupList = ["PT. Alam Sampurna Makmur", "PT. Niaga Citra Abadi", "PT. Sampurna Makmur Sejahtera"];
  String? _selectedVal = "";
  // String? selectedCity;

  @override
  void dispose() {
    _informasiKaryawanController.dispose();
    _informasiNIKController.dispose();
    _informasiAliasController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 174, 0, 0),
        title: const Text("Informasi Karyawan"),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            MyTextField(
              myController: _informasiKaryawanController, 
              fieldName: "Nama Lengkap",
              myIcon: Icons.people_alt_outlined,
              prefixIconColor: const Color.fromARGB(255, 174, 0, 0),
            ),
            const SizedBox(height: 10.0),
            MyTextField(
              myController: _informasiNIKController, 
              fieldName: "NIK",
              myIcon: Icons.people_alt_outlined,
              prefixIconColor: const Color.fromARGB(255, 174, 0, 0),
            ),
            const SizedBox(height: 10.0),
            MyTextField(
              myController: _informasiAliasController, 
              fieldName: "Alias",
              myIcon: Icons.people_alt_outlined,
              prefixIconColor: const Color.fromARGB(255, 174, 0, 0),
            ),
            const SizedBox(height: 10.0),
            DropdownButtonFormField(
              value: _selectedVal,
              items: _groupList.map(
                (e) => DropdownMenuItem(value: e,child: Text(e),)
              ).toList(),
              onChanged: (val) {
                setState(() {
                  _selectedVal = val as String;
                });
              },
              icon: const Icon(
                Icons.arrow_drop_down_circle_outlined,
                color: const Color.fromARGB(255, 174, 0, 0),  
              ),
            dropdownColor: const Color.fromARGB(255, 255, 255, 255),
            decoration: const InputDecoration(
              labelText: "Grup Perusahaan",
              labelStyle: TextStyle(color: Colors.black),
              prefixIcon: Icon(
                Icons.group_add_outlined,
                color: Color.fromARGB(255, 174, 0, 0),
              ),
                border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color.fromARGB(255, 214, 137, 0)),
                ),
              ),
            ),
                  const SizedBox(height: 10.0),
                  CheckboxListTile(
                    title: const Text('Menikah'),
                    value: timeDilation !=0.5,
                    onChanged: (bool? value) {
                      setState(() {
                        timeDilation = value! ? 1.0 : 0.5;
                      });
                    },
                    activeColor: Constants.primaryColor,
                    secondary: const Icon(
                        Icons.family_restroom_outlined,
                        color: Color.fromARGB(255, 174, 0, 0),
                      ),
                      checkColor: Colors.white,
                  ),
                  const SizedBox(height: 10.0),
                  Row(
                    children: [
                      MyRadioButton(
                        title: InformasiTypeEnum.Aktif.name, 
                        value: InformasiTypeEnum.Aktif, 
                        informasiTypeEnum: _informasiTypeEnum, 
                        onChanged: (val){
                          setState(() {
                            _informasiTypeEnum = val;
                          });
                        }),
                      SizedBox(width: 5.0,),
                      Expanded(
                        child: RadioListTile<InformasiTypeEnum>(
                          contentPadding: EdgeInsets.all(0.0),
                            shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          value: InformasiTypeEnum.Tidak, 
                          groupValue: _informasiTypeEnum, 
                          title: Text(InformasiTypeEnum.Tidak.name),
                          onChanged: (InformasiTypeEnum? value){
                            setState(() {
                              _informasiTypeEnum = value;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                  
                  const SizedBox(height: 10.0),
                  MyDateTime(),
                  const SizedBox(height: 10.0),
                  //Submit Button
                  myBtn(context),
                ],
              ),  
  ));
  }
  
  OutlinedButton myBtn(BuildContext context) {
    return OutlinedButton(
        style: OutlinedButton.styleFrom(minimumSize: const Size(200, 50)),
        onPressed: () {
          Navigator.push(
            context, 
            MaterialPageRoute(
              builder: (context){
              return Details(informasiKaryawan: _informasiKaryawanController.text, informasiNIK: _informasiNIKController.text, informasiAlias: _informasiAliasController.text);
              },
            ),
          );
        },
        child: const Text(
          "Submit Form",
          style: TextStyle(
            color: Color.fromARGB(255, 174, 0, 0),
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
      );
  }
}

//Custom Stateless Widget Class that helps re-usability
class MyTextField extends StatelessWidget {
  const MyTextField({
    Key? key,
    required this.fieldName,
    required this.myController,
    this.myIcon = Icons.people_alt_outlined,
    this.prefixIconColor = const Color.fromARGB(255, 187, 187, 187), 
  }) : super(key: key);

  final TextEditingController myController;
  final String fieldName;
  final IconData myIcon;
  final Color prefixIconColor;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: myController,
      decoration: InputDecoration(
        labelText: fieldName,
        prefixIcon: Icon(myIcon, color: prefixIconColor),
        border: const OutlineInputBorder(),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Color.fromARGB(255, 214, 137, 0)),
      ),
      labelStyle: const TextStyle(color: Colors.black),
    ));
  }
}

//Custom Date Time Picker
class MyDateTime extends StatefulWidget {
  MyDateTime({Key? key}) : super(key: key);

  @override
  _MyDateTimeState createState() => _MyDateTimeState();
}

class _MyDateTimeState extends State<MyDateTime> {
  GlobalKey<FormState> _oFormKey = GlobalKey<FormState>();
  late TextEditingController _controller1;

  //String _initialValue = '';
  String _valueChanged2 = '';
  String _valueToValidate2 = '';
  String _valueSaved2 = '';

  @override
  void initState() {
    super.initState();
    Intl.defaultLocale = 'en_US';
    //_initialValue = DateTime.now().toString();
    _controller1 = TextEditingController(text: DateTime.now().toString());

    String isHour = TimeOfDay.now().hour.toString().padLeft(2, '0');
    String isMinute = TimeOfDay.now().minute.toString().padLeft(2, '0');

    _getValue();
  }

  Future<void> _getValue() async {
    await Future.delayed(const Duration(seconds: 3), () {
      setState(() {
        //_initialValue = '2000-10-22 14:30';
        _controller1.text = '2000-09-20 14:30';
      });
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return DateTimePicker(
      type: DateTimePickerType.dateTimeSeparate,
      dateMask: 'd MMM, yyyy',
      controller: _controller1,
      //initialValue: _initialValue,
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
      icon: const Icon(Icons.event, color: Color.fromARGB(255, 174, 0, 0)),
      dateLabelText: 'Tanggal',
      timeLabelText: "Waktu",
      locale: const Locale('en', 'US'),
      //use24HourFormat: false,
      //locale: Locale('pt', 'BR'),
      selectableDayPredicate: (date) {
        if (date.weekday == 6 || date.weekday == 7) {
          return false;
        }
        return true;
      },
      // onChanged: (val) => setState(() => _valueChanged2 = val),
      // validator: (val) {
      //   setState(() => _valueToValidate2 = val ?? '');
      //   return null;
      // },
      // onSaved: (val) => setState(() => _valueSaved2 = val ?? ''),
    );
  }
}