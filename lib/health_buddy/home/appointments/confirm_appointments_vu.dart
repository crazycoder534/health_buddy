import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stacked/stacked.dart';

import '../../utils/chi_router.dart';
import '../../utils/constants.dart';
import '../../utils/widgets.dart';
import '../header_cell_vu.dart';
import 'confirm_appointments_vm.dart';
import 'payment/payment_vu.dart';

class ConfirmAppointmentVU
    extends ViewModelBuilderWidget<ConfirmAppointmentVM> {
  const ConfirmAppointmentVU({super.key});

  @override
  Widget builder(BuildContext context, viewModel, Widget? child) {
    Color clr1 = Colors.blue;
    Color clr2 = grey100;
    Color clr3 = grey100;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Padding(
                padding: EdgeInsets.only(top: 24),
                child: CHIAppBar(title: 'Appointments')),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: CHIButton(
                  expanded: true,
                  onTap: () {
                    showModalBottomSheet(
                      // isScrollControlled: true,
                      isScrollControlled: true,
                      context: context,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.vertical(
                        top: Radius.circular(25),
                      )),
                      builder: (context) {
                        return StatefulBuilder(builder:
                            (BuildContext context, StateSetter setState) {
                          return Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              // shrinkWrap: false,
                              // mainAxisSize: MainAxisSize.min,
                              children: [
                                ListTile(
                                  leading: const Icon(Icons.arrow_back),
                                  title: const Text(
                                    'Select Date & Time',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  trailing: GestureDetector(
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                    child: SvgPicture.asset(
                                        'assets/icons/cross_icon.svg'),
                                  ),
                                ),
                                ListTile(
                                  title: const Text(
                                    'Schedule',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  trailing: actionButtonContainer(
                                      const Color(0xffE0F2FE),
                                      imageUrl:
                                          'assets/images/app_assets/calender.svg',
                                      width: 36,
                                      height: 36),
                                ),
                                SizedBox(
                                  height: 100,
                                  child: ListView.builder(
                                      scrollDirection: Axis.horizontal,
                                      itemCount: viewModel.dayList.length,
                                      itemBuilder: (context, index) {
                                        return GestureDetector(
                                          onTap: () {
                                            print(viewModel.dateList[index]);

                                            // viewModel.notifyListeners();

                                            setState(() {
                                              viewModel.selectedIndex = index;
                                            });
                                          },
                                          child: Container(
                                            decoration: BoxDecoration(
                                                color:
                                                    viewModel.selectedIndex ==
                                                            index
                                                        ? Colors.blue
                                                        : grey100,
                                                border: Border.all(
                                                    color: const Color(
                                                        0xffEAE9F0)),
                                                borderRadius:
                                                    BorderRadius.circular(15)),
                                            margin: const EdgeInsets.all(10),
                                            width: 68,
                                            height: 65,
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  viewModel.dayList[index],
                                                  style: TextStyle(
                                                      color: viewModel
                                                                  .selectedIndex ==
                                                              index
                                                          ? Colors.white
                                                          : grey800,
                                                      fontWeight:
                                                          FontWeight.w700),
                                                ),
                                                const SizedBox(
                                                  height: 24,
                                                ),
                                                Text(
                                                    viewModel.dateList[index]
                                                        .toString(),
                                                    style: TextStyle(
                                                        color: viewModel
                                                                    .selectedIndex ==
                                                                index
                                                            ? Colors.white
                                                            : grey400,
                                                        fontWeight:
                                                            FontWeight.w400)),
                                              ],
                                            ),
                                          ),
                                        );
                                      }),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(left: 16),
                                  child: Text(
                                    'Session',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                                const SizedBox(
                                  height: 12,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    getContainer(
                                        width: 92,
                                        height: 48,
                                        label: 'Morning',
                                        clr: clr1,
                                        isChangeClrValue:
                                            viewModel.sessionListBool[0],
                                        onTap: () {
                                          setState(() {
                                            clr2 = grey100;
                                            clr3 = grey100;
                                            clr1 = Colors.blue;
                                            viewModel.sessionListBool[0] = true;
                                            viewModel.sessionListBool[1] =
                                                false;
                                            viewModel.sessionListBool[2] =
                                                false;
                                            // viewModel.notifyListeners();
                                          });
                                          print('object3');
                                        }),
                                    getContainer(
                                        width: 105,
                                        height: 48,
                                        label: 'Afternoon',
                                        clr: clr2,
                                        isChangeClrValue:
                                            viewModel.sessionListBool[1],
                                        onTap: () {
                                          setState(() {
                                            clr1 = grey100;
                                            clr3 = grey100;
                                            clr2 = Colors.blue;
                                            viewModel.sessionListBool[0] =
                                                false;
                                            viewModel.sessionListBool[1] = true;
                                            viewModel.sessionListBool[2] =
                                                false;
                                            // viewModel.notifyListeners();
                                          });
                                          print('object3');
                                        }),
                                    getContainer(
                                        width: 89,
                                        height: 48,
                                        label: 'Evenng',
                                        clr: clr3,
                                        isChangeClrValue:
                                            viewModel.sessionListBool[2],
                                        onTap: () {
                                          setState(() {
                                            clr1 = grey100;
                                            clr2 = grey100;
                                            clr3 = Colors.blue;
                                            viewModel.sessionListBool[0] =
                                                false;
                                            viewModel.sessionListBool[1] =
                                                false;
                                            viewModel.sessionListBool[2] = true;
                                            // viewModel.notifyListeners();
                                          });
                                          print('object3');
                                        }),
                                  ],
                                ),
                                const SizedBox(
                                  height: 16,
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(left: 16),
                                  child: Text(
                                    'Time',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                                GridView.count(
                                  primary: false,
                                  childAspectRatio: (92 / 48),
                                  scrollDirection: Axis.vertical,
                                  shrinkWrap: true,
                                  padding: const EdgeInsets.all(10),
                                  crossAxisSpacing: 10,
                                  mainAxisSpacing: 10,
                                  crossAxisCount: 3,
                                  children: <Widget>[
                                    getGridContainer(
                                        label: '08:30 AM',
                                        value: viewModel.timeListBools[0],
                                        onTap: () {
                                          setState(() {
                                            viewModel.timeListBools[0] = true;
                                            viewModel.timeListBools[1] = false;
                                            viewModel.timeListBools[2] = false;
                                            viewModel.timeListBools[3] = false;
                                            viewModel.timeListBools[4] = false;
                                          });
                                        }),
                                    getGridContainer(
                                        label: '09:30 AM',
                                        value: viewModel.timeListBools[1],
                                        onTap: () {
                                          setState(() {
                                            viewModel.timeListBools[0] = false;
                                            viewModel.timeListBools[1] = true;
                                            viewModel.timeListBools[2] = false;
                                            viewModel.timeListBools[3] = false;
                                            viewModel.timeListBools[4] = false;
                                          });
                                        }),
                                    getGridContainer(
                                        label: '10:30 AM',
                                        value: viewModel.timeListBools[2],
                                        onTap: () {
                                          setState(() {
                                            viewModel.timeListBools[0] = false;
                                            viewModel.timeListBools[1] = false;
                                            viewModel.timeListBools[2] = true;
                                            viewModel.timeListBools[3] = false;
                                            viewModel.timeListBools[4] = false;
                                          });
                                        }),
                                    getGridContainer(
                                        label: '11:30 AM',
                                        value: viewModel.timeListBools[3],
                                        onTap: () {
                                          setState(() {
                                            viewModel.timeListBools[0] = false;
                                            viewModel.timeListBools[1] = false;
                                            viewModel.timeListBools[2] = false;
                                            viewModel.timeListBools[3] = true;
                                            viewModel.timeListBools[4] = false;
                                          });
                                        }),
                                    getGridContainer(
                                        label: '12:30 AM',
                                        value: viewModel.timeListBools[4],
                                        onTap: () {
                                          setState(() {
                                            viewModel.timeListBools[0] = false;
                                            viewModel.timeListBools[1] = false;
                                            viewModel.timeListBools[2] = false;
                                            viewModel.timeListBools[3] = false;
                                            viewModel.timeListBools[4] = true;
                                          });
                                        }),
                                  ],
                                ),
                                CHIButton(
                                  onTap: () {
                                    CHIRouter.push(context, const PaymentVU());
                                  },
                                  btnLabel: 'btnLabel',
                                  expanded: true,
                                )
                              ],
                            ),
                          );
                        });
                      },
                    );
                  },
                  btnLabel: 'Confirm Payment'),
            )
          ],
        ),
      ),
    );
  }

  Widget getGridContainer({String? label, bool? value, Function()? onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            color: value! ? Colors.blue : Colors.white,
            border: Border.all(color: const Color(0xffEAE9F0)),
            borderRadius: BorderRadius.circular(15)),
        child: Center(
          child: Text(
            label!,
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: value ? Colors.white : grey800),
          ),
        ),
      ),
    );
  }

  Widget getContainer(
      {required double? width,
      required double? height,
      required String? label,
      Color? clr,
      bool? isChangeClrValue,
      required Function()? onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            color: clr,
            border: Border.all(color: const Color(0xffEAE9F0)),
            borderRadius: BorderRadius.circular(15)),
        height: height,
        width: width,
        child: Center(
          child: Text(
            label!,
            style: TextStyle(
                color: isChangeClrValue! ? Colors.white : grey800,
                fontSize: 16,
                fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }

  @override
  ConfirmAppointmentVM viewModelBuilder(BuildContext context) {
    return ConfirmAppointmentVM();
  }
}
