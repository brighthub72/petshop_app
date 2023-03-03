import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_2/UI/home.dart';
import 'package:flutter_app_2/utilities/abdul.dart';
import 'package:flutter_app_2/utilities/payment.dart';
import 'package:flutter_app_2/utilities/privacy.dart';
import 'package:flutter_app_2/utilities/toggle.dart';
import 'package:flutter_app_2/utilities/var.dart';

import '../UI/auth/login.dart';

List bags = [
  {'image': 'pbag', 'title': 'RC Kitten', 'price': r'$20,99'},
  {'image': 'bag5', 'title': 'RC Persian', 'price': r'$22,99'},
];


List help = [
  {'icon': Icons.call_outlined, 'title' : 'Contact Us'},
  {'icon': Icons.book_outlined, 'title' : 'FAQ'},
];


List details = [
  {'icon': Icons.person_outline, 'title' : 'Account', 'ont' : Abdul()},
  {'icon': Icons.home_outlined, 'title' : 'Address', 'ont' : Home()},
  {'icon': Icons.notifications_outlined, 'title' : 'Notification', 'ont' : Toggle()},
  {'icon': Icons.payment_outlined, 'title' : 'Payment Method', 'ont' : Payment()},
  {'icon': Icons.privacy_tip_outlined, 'title' : 'Privacy', 'ont' : Privacy()},
  {'icon': Icons.security_outlined, 'title' : 'Security', 'ont' : Login()},
];

List bags2 = [
  {'image': 'pbag', 'title': 'RC Kitten', 'price': r'$20,99'},
  {'image': 'bag5', 'title': 'RC Persian', 'price': r'$22,99'},
  {'image': 'pbag', 'title': 'RC Kitten', 'price': r'$20,99'},
  {'image': 'bag5', 'title': 'RC Persian', 'price': r'$22,99'},
  {'image': 'pbag', 'title': 'RC Kitten', 'price': r'$20,99'},
  {'image': 'bag5', 'title': 'RC Persian', 'price': r'$22,99'},
];

List sel = [
  {'image': 'bag5', 'title': newo, 'sub': deliv, 't' : Icons.arrow_forward_ios},
  {'image': 'sharp2', 'title': 'Moman', 'sub': like, 't' : null},
  {'image': 'sharp3', 'title': 'Ola', 'sub': like, 't' : null},
  {'image': 'sharp4', 'title': 'Raul', 'sub': like, 't' : null},
  {'image': 'bag5', 'title': newo, 'sub': deliv, 't' : Icons.arrow_forward_ios},
  {'image': 'bag5', 'title': newo, 'sub': deliv, 't' : Icons.arrow_forward_ios},
  {'image': 'bag5', 'title': newo, 'sub': deliv, 't' : Icons.arrow_forward_ios},
  {'image': 'sharp', 'title': 'Vito', 'sub': like, 't' : null},
];

