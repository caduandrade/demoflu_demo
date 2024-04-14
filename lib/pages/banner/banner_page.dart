import 'package:demoflu/demoflu.dart';
import 'package:flutter/material.dart';

class BannerPage extends DemoFluPage {
  @override
  void initialize(BuildContext context) {
    code('lib/pages/banner/banner_page.dart',
        mark: 'banner', loadMode: LoadMode.readOnlyMarked);

    //@demoflu_start:banner
    banner(text: 'My first banner.');
    //@demoflu_end:banner

    heading('Icon');

    code('lib/pages/banner/banner_page.dart',
        mark: 'icon', loadMode: LoadMode.readOnlyMarked);

    //@demoflu_start:icon
    banner(text: 'You can add any icon.', icon: Icons.search);
    //@demoflu_end:icon

    heading('Custom colors');

    code('lib/pages/banner/banner_page.dart',
        mark: 'custom', loadMode: LoadMode.readOnlyMarked);

    //@demoflu_start:custom
    banner(
        text: 'You can also change the colors.',
        background: Colors.purple[50],
        border: Colors.purple[700]);
    //@demoflu_end:custom

    heading('Warning');

    code('lib/pages/banner/banner_page.dart',
        mark: 'warning', loadMode: LoadMode.readOnlyMarked);

    //@demoflu_start:warning
    warningBanner(text: 'This is a warning banner.');
    //@demoflu_end:warning

    heading('Info');

    code('lib/pages/banner/banner_page.dart',
        mark: 'info', loadMode: LoadMode.readOnlyMarked);

    //@demoflu_start:info
    infoBanner(text: 'This is an info banner.');
    //@demoflu_end:info

    heading('Tip');

    code('lib/pages/banner/banner_page.dart',
        mark: 'tip', loadMode: LoadMode.readOnlyMarked);

    //@demoflu_start:tip
    tipBanner(text: 'This is a tip banner.');
    //@demoflu_end:tip
  }
}
