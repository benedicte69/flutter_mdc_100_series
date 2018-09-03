// Copyright 2018-present the Flutter authors. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'package:flutter/material.dart';
import 'colors.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // TODO: Add text editing controllers (101)
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          children: <Widget>[
            SizedBox(height: 80.0),
            Column(
              children: <Widget>[
                //COLOR FIRST THEME
                //Image.asset('assets/diamond.png',color: kShrineBackgroundWhite),
                //COLOR SECOND THEME put it inside the assets!
                Image.asset('assets/diamond.png',
                    color: kShrineBackgroundWhite),
                SizedBox(height: 16.0),
                Text('SHRINE'),
              ],
            ),
            SizedBox(height: 120.0),

            // TODO: Add TextField widgets (101)
            // TODO: Wrap Username with PrimaryColorOverride (103)
            // [Name]
            AccentColorOverride(
              //COLOR FIRST THEME
              //color: kShrineBrown900,
              //COLOR SECOND THEME
              color: kShrineAltYellow,
              child: TextField(
                controller: _usernameController,
                decoration: InputDecoration(
                  labelText: 'Username',
                ),
              ),
            ),
            /*TextField(
              controller: _usernameController,
              decoration: InputDecoration(
                // TODO: Remove filled: true values (103)
                //filled: true,
                labelText: 'Username',
              ),
            ),*/
            //spacer
            SizedBox(height: 16.0),
            //[password]
            // TODO: Wrap Password with PrimaryColorOverride (103)
            AccentColorOverride(
              //COLOR FIRST THEME
              //color: kShrineBrown900,
              //COLOR SECOND THEME
              color: kShrineAltYellow,
              child: TextField(
                controller: _passwordController,
                decoration: InputDecoration(
                  labelText: 'Password',
                ),
                obscureText: true,
              ),
            ),

            /*TextField(
              controller: _passwordController,
              decoration: InputDecoration(
                // TODO: Remove filled: true values (103)
                // filled: true,
                labelText: 'Password',
              ),
              obscureText: true,
            ),*/
            // TODO: Add button bar (101)
            ButtonBar(
              // TODO: Add a beveled rectangular border to CANCEL (103)
              children: <Widget>[
                FlatButton(
                  child: Text('CANCEL'),
                  shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(7.0)),
                  ),
                  onPressed: () {
                    // TODO: Clear the text fields (101)
                    _usernameController.clear();
                    _passwordController.clear();
                  },
                ),
                // TODO: Add an elevation to NEXT (103)
                // TODO: Add a beveled rectangular border to NEXT (103)
                RaisedButton(
                  child: Text('NEXT'),
                  elevation: 8.0,
                  shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(7.0)),
                  ),
                  onPressed: () {
                    // TODO: Show the next page (101)
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// TODO: Add PrimaryColorOverride (103)
class AccentColorOverride extends StatelessWidget {
  const AccentColorOverride({Key key, this.color, this.child})
      : super(key: key);

  final Color color;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Theme(
      child: child,
      data: Theme.of(context).copyWith(accentColor: color),
    );
  }
}
