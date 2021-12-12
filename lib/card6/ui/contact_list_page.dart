import 'package:cards/card6/models/contact.dart';
import 'package:cards/card6/ui/widgets/cards.dart';
import 'package:cards/card6/ui/widgets/perspective_list_view.dart';
import 'package:flutter/material.dart';

class ContactListPage extends StatefulWidget {
  const ContactListPage({
    Key key,
  }) : super(key: key);

  @override
  _ContactListPageState createState() => _ContactListPageState();
}

class _ContactListPageState extends State<ContactListPage> {
  int _visibleItems;
  double _itemExtent;

  @override
  void initState() {
    _visibleItems = 8;
    _itemExtent = 270.0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
        ],
        title: const Text('UI Cards'),
      ),
      body: PerspectiveListView(
        visualizedItems: _visibleItems,
        itemExtent: _itemExtent,
        initialIndex: 7,
        enableBackItemsShadow: true,
        backItemsShadowColor: Theme.of(context).scaffoldBackgroundColor,
        padding: const EdgeInsets.all(10),
        onTapFrontItem: (value) {},
        children: List.generate(Contact.contacts.length, (index) {
          final borderColor = Colors.accents[index % Colors.accents.length];
          final contact = Contact.contacts[index];
          return ContactCard(
            borderColor: borderColor,
            contact: contact,
          );
        }),
      ),
      //---------------------------------------
      // Drawer
      //---------------------------------------
      drawer: Drawer(
        child: Material(
          textStyle: const TextStyle(color: Colors.white, fontSize: 16),
          child: Container(
            color: const Color(0xFF5B4382),
            padding: const EdgeInsets.all(20),
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //----------------------------
                  // Drawer title
                  //----------------------------
                  Row(
                    children: const [
                      Icon(
                        Icons.settings_outlined,
                        color: Colors.white,
                        size: 30,
                      ),
                      Text(
                        ' Settings',
                        style: TextStyle(
                          fontSize: 26,
                        ),
                      ),
                    ],
                  ),
                  const Divider(height: 40),
                  //----------------------------
                  // Visible Items Control
                  //----------------------------
                  Row(
                    children: [
                      const Icon(
                        Icons.visibility_rounded,
                        color: Colors.white,
                        size: 16,
                      ),
                      const Text(
                        ' Visible items',
                        style: TextStyle(),
                      ),
                      Expanded(
                        child: Slider(
                          value: _visibleItems.toDouble(),
                          min: 2,
                          max: 15,
                          divisions: 15,
                          label: '$_visibleItems',
                          activeColor: Colors.deepPurple[200],
                          inactiveColor: Colors.deepPurple[400],
                          onChanged: (value) {
                            setState(() {
                              _visibleItems = value.toInt();
                            });
                          },
                        ),
                      )
                    ],
                  ),
                  const Divider(height: 40),
                  //----------------------------
                  // Item Extent Control
                  //----------------------------
                  Row(
                    children: [
                      const Icon(
                        Icons.widgets,
                        color: Colors.white,
                        size: 16,
                      ),
                      const Text(
                        ' Item Extent',
                        style: TextStyle(),
                      ),
                      Expanded(
                        child: Slider(
                          value: _itemExtent,
                          min: 270,
                          max: MediaQuery.of(context).size.height * .8,
                          label: '$_itemExtent',
                          activeColor: Colors.deepPurple[200],
                          inactiveColor: Colors.deepPurple[400],
                          onChanged: (value) {
                            setState(() {
                              _itemExtent = value;
                            });
                          },
                        ),
                      )
                    ],
                  ),
                  const Divider(height: 40),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
