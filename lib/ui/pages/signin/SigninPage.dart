import 'package:flutter/material.dart';

class SigninPage extends StatelessWidget {

  Widget _renderTitle() {
    return new Expanded(child: new Container(
      child: new Center(
        child: new Text(
          "GRAVITY",
          style: new TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
              decorationStyle: null
          ),
        ),
      ),
    ));
  }

  Widget _renderForm() {
    return new Expanded(
      child: new Container(
        child: new Padding(
          padding: new EdgeInsets.all(20.0),
          child: new Column(
            children: <Widget>[
              new TextField(
                keyboardType: TextInputType.emailAddress,
                autocorrect: false,
                decoration: new InputDecoration(
                  labelText: 'E-mail',
                  labelStyle: new TextStyle(
                      color: Colors.blue
                  )
                ),
              ),
              new TextField(
                autocorrect: false,
                obscureText: true,
                decoration: new InputDecoration(
                  labelText: 'Password',
                  labelStyle: new TextStyle(
                    color: Colors.blue
                  )
                ),
              ),
              new Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  new Padding(
                    padding: new EdgeInsets.only(top: 20.0),
                    child: new RaisedButton(
                      textColor: Colors.white,
                      onPressed: () {
                        print('Sign In');
                      },
                      child: new Text('Sign In')
                    ))
                ]
              ),
              this._renderCreateAccountLink()
            ],
          ),
        ),
      ),
    );
  }

  Widget _renderCreateAccountLink() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        new Padding(
          padding: new EdgeInsets.only(top: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Don\'t have and account?',
                style: new TextStyle(
                    color: Colors.blue,
                )
              ),
              new Padding(
                padding: new EdgeInsets.only(left: 5.0),
                child: new InkWell(
                  child: Text(
                    'Sign Up',
                    style: new TextStyle(
                        color: Colors.blue,
                        decoration: TextDecoration.underline
                    )
                  ),
                  onTap: () {
                    print('Sign up touched!');
                  },
                )
              )
            ],
          )
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {

    return new Container(
      color: Colors.white,
      child: new Column(
        children: <Widget>[
          this._renderTitle(),
          this._renderForm()
        ],
      ),
    );
  }
}