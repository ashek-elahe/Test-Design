import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'model/doctor_model.dart';
import 'model/issues_model.dart';
import 'model/specialist_model.dart';

class Data {
  List<SpecialistModel> specialistModelList = [
    SpecialistModel('Cardio Specialist', FontAwesomeIcons.vrCardboard, Colors.blue),
    SpecialistModel('Heart Specialist', FontAwesomeIcons.heartbeat, Colors.orange),
    SpecialistModel('Dental Care', FontAwesomeIcons.tooth, Colors.green),
    SpecialistModel('Mental Support', FontAwesomeIcons.headSideVirus, Colors.yellow),
  ];

  List<IssuesModel> issuesModelList = [
    IssuesModel('Cardio issues?', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua', 99),
    IssuesModel('Heart issues?', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua', 99),
    IssuesModel('Dental issues?', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua', 99),
    IssuesModel('Mental issues?', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua', 99),
  ];

  List<DoctorModel> doctorModelList = [
    DoctorModel('images/doctor1.jpg', 'Doctor1', 'Heart Surgeon Specialist'),
    DoctorModel('images/doctor2.jpg', 'Doctor2', 'Cardio Surgeon'),
    DoctorModel('images/doctor3.jpg', 'Doctor3', 'Dentist'),
    DoctorModel('images/doctor4.png', 'Doctor4', 'Heart Surgeon Specialist'),
    DoctorModel('images/doctor5.png', 'Doctor5', 'Cardio Surgeon'),
    DoctorModel('images/doctor6.png', 'Doctor6', 'Dentist'),
    DoctorModel('images/doctor7.jpg', 'Doctor7', 'Heart Surgeon Specialist'),
    DoctorModel('images/doctor8.jpg', 'Doctor8', 'Cardio Surgeon'),
    DoctorModel('images/doctor9.jpg', 'Doctor9', 'Dentist'),
  ];
}