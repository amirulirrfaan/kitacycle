import 'package:flutter/material.dart';

class RequestCard extends StatelessWidget {
  const RequestCard({
    Key? key,
    required this.imgUrl,
    required this.title,
    required this.color,
    required this.onTap,
    this.width = 400,
  }) : super(key: key);

  final String imgUrl;
  final String title;
  final Color color;
  final Function onTap;
  final double width;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(22)),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                offset: const Offset(5, 5),
                blurRadius: 10,
                spreadRadius: 0,
                color: Colors.grey.withOpacity(.3)),
            BoxShadow(
                offset: const Offset(-3, -3),
                blurRadius: 10,
                spreadRadius: 0,
                color: Colors.grey.withOpacity(.3)),
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: () {
              onTap();
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: width,
                  height: 150,
                  decoration: BoxDecoration(),
                  clipBehavior: Clip.antiAlias,
                  child: Container(
                    child: Padding(
                      padding:
                          const EdgeInsets.only(top: 20, left: 20, right: 20),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(22),
                        child: Image.asset(
                          imgUrl,
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Text(
                    title,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w200),
                  ),
                ),
              ],
            ),
          ),
          Container(
              width: width,
              child: LikeListTile(
                title: "Helen",
                likes: "",
                subtitle: "5km away | 15 mins",
                color: color,
              ))
        ],
      ),
    );
  }
}

class LikeListTile extends StatelessWidget {
  const LikeListTile(
      {Key? key,
      required this.title,
      required this.likes,
      required this.subtitle,
      this.color = Colors.grey})
      : super(key: key);
  final String title;
  final String likes;
  final String subtitle;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.all(10),
      leading: Container(
        width: 50,
        child: AspectRatio(
          aspectRatio: 1,
          child: Container(
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: NetworkImage(
                        "https://www.linkpicture.com/q/helen.png"))),
          ),
        ),
      ),
      title: Text(title),
      subtitle: Row(
        children: [
          Icon(Icons.location_on_outlined, color: Colors.grey, size: 25),
          SizedBox(width: 2),
          Text(likes),
          Text(subtitle)
        ],
      ),
      trailing: LikeButton(
          onPressed: () {}, color: Color.fromARGB(255, 194, 185, 172)),
    );
  }
}

class LikeButton extends StatefulWidget {
  const LikeButton(
      {Key? key, required this.onPressed, this.color = Colors.black12})
      : super(key: key);
  final Function onPressed;
  final Color color;
  @override
  _LikeButtonState createState() => _LikeButtonState();
}

class _LikeButtonState extends State<LikeButton> {
  bool isLiked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: IconButton(
      icon: Icon(Icons.double_arrow_rounded,
          size: 40, color: Colors.lightGreen[300]),
      onPressed: () {
        setState(() {
          isLiked = !isLiked;
        });
        widget.onPressed();
      },
    ));
  }
}
