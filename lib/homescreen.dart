import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Searchbar(),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(right: 16.0, left: 16.0, bottom: 16.0),
                  child: TheDevider(),
                ),
                DashTweet(),
                DashTweet(),
                DashTweet(),
                DashTweet(),
                DashTweet(),
                DashTweet(),
              ]),
        ),
      ),
    );
  }
}

class DashTweet extends StatelessWidget {
  const DashTweet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24.0),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.6,
        width: MediaQuery.of(context).size.width * 0.95,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.blue[900]!,
            width: 2,
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(10.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(
                      right: 16.0, left: 16.0, top: 8.0, bottom: 8.0),
                  child: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage("assets/dash.png"),
                    backgroundColor: Colors.transparent,
                  ),
                ),
                Column(
                  children: [
                    Text(
                      "dash",
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "@dash",
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            color: Colors.grey,
                          ),
                    ),
                  ],
                )
              ],
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                "🎓 Exciting news! I'm now a student at Flutter Training, learning more about mobile development with Flutter. Can't wait to gain new skills and become a skilled Flutter developer!",
                textAlign: TextAlign.start,
                style: TextStyle(fontWeight: FontWeight.normal),
              ),
            ),
            Image.asset(
              "assets/small.png",
              scale: 0.8,
            ),
            const Spacer(),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left: 16.0, right: 24.0, bottom: 16.0),
                  child: IconButton(
                    onPressed: () {},
                    icon: Image.asset("assets/heart.png"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 24.0, bottom: 16.0),
                  child: IconButton(
                    onPressed: () {},
                    icon: Image.asset("assets/comment.png"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 24.0, bottom: 16.0),
                  child: IconButton(
                    onPressed: () {},
                    icon: Image.asset("assets/retweet.png"),
                  ),
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 16.0, bottom: 16.0),
                  child: IconButton(
                    onPressed: () {},
                    icon: Image.asset("assets/BookmarkSimple.png"),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class TheDevider extends StatelessWidget {
  const TheDevider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "The latest",
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: Colors.blue[900],
              ),
        ),
        Expanded(
          child: Divider(
            color: Colors.blue[900],
            indent: 10,
            endIndent: 10,
          ),
        ),
      ],
    );
  }
}

class Searchbar extends StatelessWidget {
  const Searchbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(color: Colors.blue[900]),
      obscureText: true,
      decoration: const InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
        prefixIcon: Icon(Icons.search, color: Colors.blue),
        labelText: 'search',
        labelStyle: TextStyle(color: Colors.blue),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.blue),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
      ),
    );
  }
}
