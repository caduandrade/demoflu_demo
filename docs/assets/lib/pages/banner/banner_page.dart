import 'package:demoflu/demoflu.dart';
import 'package:flutter/material.dart';

class BannerPage extends DemoFluPage {
  @override
  PageSections buildSections(BuildContext context) {
    PageSections sections = PageSections();

    sections.code('lib/pages/banner/banner_page.dart',
        mark: 'banner', loadMode: LoadMode.readOnlyMarked);

    //@demoflu_start:banner
    sections.banner(text: 'My first banner.');
    //@demoflu_end:banner

    sections.heading('Icon');

    sections.code('lib/pages/banner/banner_page.dart',
        mark: 'icon', loadMode: LoadMode.readOnlyMarked);

    //@demoflu_start:icon
    sections.banner(text: 'You can add any icon.', icon: Icons.search);
    //@demoflu_end:icon

    sections.heading('Custom colors');

    sections.code('lib/pages/banner/banner_page.dart',
        mark: 'custom', loadMode: LoadMode.readOnlyMarked);

    //@demoflu_start:custom
    sections.banner(
        text: 'You can also change the colors.',
        background: Colors.purple[50],
        border: Colors.purple[700]);
    //@demoflu_end:custom

    sections.heading('Warning');

    sections.code('lib/pages/banner/banner_page.dart',
        mark: 'warning', loadMode: LoadMode.readOnlyMarked);

    //@demoflu_start:warning
    sections.warningBanner(text: 'This is a warning banner.');
    //@demoflu_end:warning

    sections.heading('Info');

    sections.code('lib/pages/banner/banner_page.dart',
        mark: 'info', loadMode: LoadMode.readOnlyMarked);

    //@demoflu_start:info
    sections.infoBanner(text: 'This is an info banner.');
    //@demoflu_end:info

    sections.heading('Tip');

    sections.code('lib/pages/banner/banner_page.dart',
        mark: 'tip', loadMode: LoadMode.readOnlyMarked);

    //@demoflu_start:tip
    sections.tipBanner(text: 'This is a tip banner.');
    //@demoflu_end:tip

    return sections;
  }
}
