import 'package:akash_soam/mobile/about_mobile.dart';
import 'package:akash_soam/mobile/blog_mobile.dart';
import 'package:akash_soam/mobile/contact_mobile.dart';
import 'package:akash_soam/mobile/landing_page_mobile.dart';
import 'package:akash_soam/mobile/works_mobile.dart';
import 'package:akash_soam/web/about_web.dart';
import 'package:akash_soam/web/blog_web.dart';
import 'package:akash_soam/web/contact_web.dart';
import 'package:akash_soam/web/landing_page_web.dart';
import 'package:akash_soam/web/works_web.dart';
import 'package:flutter/material.dart';

import 'common/blog.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth > 800) {
                return LandingPageWeb();
              } else
                return LandingPageMobile();
            },
          ),
        );
      case '/contact':
        return MaterialPageRoute(
          builder: (_) => LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth > 800) {
                return ContactWeb();
              } else
                return ContactMobile();
            },
          ),
          settings: settings,
        );
      case '/about':
        return MaterialPageRoute(
          builder: (_) => LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth > 800) {
                return AboutWeb();
              } else
                return AboutMobile();
            },
          ),
          settings: settings,
        );
      case '/blog':
        return MaterialPageRoute(
          // builder: (_) => LayoutBuilder(
          //   builder: (context, constraints) {
          //     if (constraints.maxWidth > 800) {
          //       return BlogWeb();
          //     } else
          //       return BlogMobile();
          //   },
          // ),
          builder: (_) => Blog(),
          settings: settings,
        );
      case '/works':
        return MaterialPageRoute(
          builder: (_) => LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth > 800) {
                return WorksWeb();
              } else
                return WorksMobile();
            },
          ),
          settings: settings,
        );
      default:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth > 800) {
                return LandingPageWeb();
              } else
                return LandingPageMobile();
            },
          ),
        );
    }
  }
}
