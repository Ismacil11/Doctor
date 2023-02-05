import 'package:flutter/material.dart';
import 'package:mylogin_191/cells/category_cell.dart';
import 'package:mylogin_191/cells/hd_cell.dart';
import 'package:mylogin_191/cells/trd_cell.dart';
import 'package:mylogin_191/models/category.dart';
import 'package:mylogin_191/models/doctor.dart';
import 'package:mylogin_191/pages/detail_page.dart';
import 'package:mylogin_191/utils/custom_icons_icons.dart';
import 'package:mylogin_191/utils/he_color.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Doctor> _hDoctors = <Doctor>[];
  List<Category> _categories = <Category>[];
  List<Doctor> _trDoctors = <Doctor>[];

  /// **********************************************
  /// ACTIONS
  /// **********************************************

  _onCellTap(Doctor doctor) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => DetailPage(doctor: doctor),
        ));
  }

  /// **********************************************
  /// LIFE CYCLE METHODS
  /// **********************************************

  @override
  void initState() {
    super.initState();
    _hDoctors = _getHDoctors();
    _categories = _getCategories();
    _trDoctors = _getTRDoctors();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _hDoctorsSection(),
            SizedBox(
              height: 32,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _categorySection(),
                  SizedBox(
                    height: 32,
                  ),
                  _trDoctorsSection(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// **********************************************
  /// WIDGETS
  /// **********************************************

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      brightness: Brightness.light,
      iconTheme: IconThemeData(color: HexColor('#150047')),
      leading: IconButton(
        icon: Icon(
          CustomIcons.menu,
          size: 14,
        ),
        onPressed: () {},
      ),
      actions: [
        IconButton(
          icon: Icon(
            CustomIcons.search,
            size: 20,
          ),
          onPressed: () {},
        ),
      ],
    );
  }

  /// Highlighted Doctors Section
  SizedBox _hDoctorsSection() {
    return SizedBox(
      height: 199,
      child: ListView.separated(
        primary: false,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.symmetric(horizontal: 24),
        itemCount: _hDoctors.length,
        separatorBuilder: (BuildContext context, int index) =>
            Divider(indent: 16),
        itemBuilder: (BuildContext context, int index) => HDCell(
          doctor: _hDoctors[index],
          onTap: () => _onCellTap(_hDoctors[index]),
        ),
      ),
    );
  }

  /// Category Section
  Column _categorySection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Categories',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(
          height: 32,
        ),
        SizedBox(
          height: 100,
          child: ListView.separated(
            primary: false,
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: _categories.length,
            separatorBuilder: (BuildContext context, int index) =>
                Divider(indent: 16),
            itemBuilder: (BuildContext context, int index) =>
                CategoryCell(category: _categories[index]),
          ),
        ),
      ],
    );
  }

  /// Top Rated Doctors Section
  Column _trDoctorsSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Top Rated Doctor',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(
          height: 32,
        ),
        ListView.separated(
          primary: false,
          shrinkWrap: true,
          itemCount: _trDoctors.length,
          separatorBuilder: (BuildContext context, int index) => Divider(
            thickness: 16,
            color: Colors.transparent,
          ),
          itemBuilder: (BuildContext context, int index) =>
              TrdCell(doctor: _trDoctors[index]),
        ),
      ],
    );
  }

  /// **********************************************
  /// DUMMY DATA
  /// **********************************************

  /// Get Highlighted Doctors List
  List<Doctor> _getHDoctors() {
    List<Doctor> hDoctors = <Doctor>[];

    hDoctors.add(Doctor(
      firstName: 'Ismacill',
      lastName: 'Mohamed',
      image: 'albert.png',
      type: 'Kelyaha',
      rating: 4.5,
    ));
    hDoctors.add(Doctor(
      firstName: 'cali',
      lastName: 'farah',
      image: 'albert.png',
      type: 'Kelyaha',
      rating: 4.5,
    ));

    return hDoctors;
  }

  /// Get Categories
  List<Category> _getCategories() {
    List<Category> categories = <Category>[];
    categories.add(Category(
      icon: CustomIcons.cardiologist,
      title: 'Dhakhtarka wadnaha',
    ));
    categories.add(Category(
      icon: CustomIcons.eyes,
      title: 'Indhaha',
    ));
    categories.add(Category(
      icon: CustomIcons.pediatrician,
      title: 'Dhakhtarka carruurta',
    ));
    return categories;
  }

  /// Get Top Rated Doctors List
  List<Doctor> _getTRDoctors() {
    List<Doctor> trDoctors = <Doctor>[];

    trDoctors.add(Doctor(
      firstName: 'axamed',
      lastName: 'geedi',
      image: 'mathew.png',
      type: 'Lafo',
      rating: 4.3,
    ));
    trDoctors.add(Doctor(
        firstName: 'caisha',
        lastName: 'xasan',
        image: 'cherly.png',
        type: 'Kelyaha',
        rating: 4.7));
    trDoctors.add(Doctor(
        firstName: 'Ismciil',
        lastName: 'mohamed',
        image: 'albert.png',
        type: 'lafaha',
        rating: 4.3));
    trDoctors.add(Doctor(
      firstName: 'dahir',
      lastName: 'warsame',
      image: 'albert.png',
      type: 'beerka',
      rating: 4.5,
    ));
    return trDoctors;
  }
}
