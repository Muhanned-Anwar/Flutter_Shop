import 'package:avatar_course2_5_shop/core/resources/manager_assets.dart';
import 'package:avatar_course2_5_shop/core/resources/manager_colors.dart';
import 'package:avatar_course2_5_shop/core/resources/manager_font_sizes.dart';
import 'package:avatar_course2_5_shop/core/resources/manager_font_weight.dart';
import 'package:avatar_course2_5_shop/core/resources/manager_height.dart';
import 'package:avatar_course2_5_shop/core/resources/manager_icon_sizes.dart';
import 'package:avatar_course2_5_shop/core/resources/manager_strings.dart';
import 'package:avatar_course2_5_shop/core/resources/manager_text_styles.dart';
import 'package:avatar_course2_5_shop/core/resources/manager_width.dart';
import 'package:flutter/material.dart';
import '../../../../core/widgets/page_view_indicator.dart';
import '../../../home/presentation/model/review.dart';

class ItemDetails extends StatefulWidget {
  const ItemDetails({Key? key}) : super(key: key);

  @override
  _ItemDetailsState createState() => _ItemDetailsState();
}

class _ItemDetailsState extends State<ItemDetails> {
  late PageController _pageController;
  int currentPageIndex = 0;
  bool isFavorite = false;

  bool isDetails = true;
  bool isReviews = false;
  double itemHeight = 95;
  late double reviewHeight;
  late int counter;

  int numQuantity = 1;

  List<Review> reviews = [
    Review(
        id: 0,
        name: 'Mohanned Anwar',
        imgPath: ManagerAssets.logo,
        numStars: 5.0,
        time: '2',
        content: 'Exercitationem neque aut architecto eum. '
            'Ea blanditiis aliquid odit ipsa. Alias qui minus '
            'quia similique voluptas sit doloremque. '
            'Harum eaque officia reiciendis sit beatae voluptatem.'
            ' Inventore sequi expedita maiores aliquid et pariatur.'),
    Review(
        id: 0,
        name: 'Mohanned Anwar',
        imgPath: ManagerAssets.logo,
        numStars: 5.0,
        time: '2',
        content: 'Exercitationem neque aut architecto eum. '
            'Ea blanditiis aliquid odit ipsa. Alias qui minus '
            'quia similique voluptas sit doloremque. '
            'Harum eaque officia reiciendis sit beatae voluptatem.'
            ' Inventore sequi expedita maiores aliquid et pariatur.'),
    Review(
        id: 0,
        name: 'Mohanned Anwar',
        imgPath: ManagerAssets.logo,
        numStars: 5.0,
        time: '2',
        content: 'Exercitationem neque aut architecto eum. '
            'Ea blanditiis aliquid odit ipsa. Alias qui minus '
            'quia similique voluptas sit doloremque. '
            'Harum eaque officia reiciendis sit beatae voluptatem.'
            ' Inventore sequi expedita maiores aliquid et pariatur.'),
    Review(
        id: 0,
        name: 'Mohanned Anwar',
        imgPath: ManagerAssets.logo,
        numStars: 5.0,
        time: '2',
        content: 'Exercitationem neque aut architecto eum. '
            'Ea blanditiis aliquid odit ipsa. Alias qui minus '
            'quia similique voluptas sit doloremque. '
            'Harum eaque officia reiciendis sit beatae voluptatem.'
            ' Inventore sequi expedita maiores aliquid et pariatur.'),
    Review(
        id: 0,
        name: 'Mohanned Anwar',
        imgPath: ManagerAssets.logo,
        numStars: 5.0,
        time: '2',
        content: 'Exercitationem neque aut architecto eum. '
            'Ea blanditiis aliquid odit ipsa. Alias qui minus '
            'quia similique voluptas sit doloremque. '
            'Harum eaque officia reiciendis sit beatae voluptatem.'
            ' Inventore sequi expedita maiores aliquid et pariatur.'),
    Review(
        id: 0,
        name: 'Mohanned Anwar',
        imgPath: ManagerAssets.logo,
        numStars: 5.0,
        time: '2',
        content: 'Exercitationem neque aut architecto eum. '
            'Ea blanditiis aliquid odit ipsa. Alias qui minus '
            'quia similique voluptas sit doloremque. '
            'Harum eaque officia reiciendis sit beatae voluptatem.'
            ' Inventore sequi expedita maiores aliquid et pariatur.'),
  ];

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
    counter = 3;
    reviewHeight = itemHeight * counter + 120;
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
            size: 34,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          ManagerStrings.productDetails,
          style: getMediumTextStyle(
            fontSize: ManagerFontSizes.s18,
          ),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          SizedBox(
            width: ManagerWidth.w320,
            height: ManagerHeight.h310,
            child: Stack(
              children: [
                SizedBox(
                  width: double.infinity,
                  child: PageView(
                    controller: _pageController,
                    onPageChanged: (int index) {
                      setState(() {
                        currentPageIndex = index;
                      });
                    },
                    children: [
                      Image.asset(
                        ManagerAssets.product,
                        fit: BoxFit.fill,
                      ),
                      Image.asset(
                        ManagerAssets.product,
                        fit: BoxFit.fill,
                      ),
                      Image.asset(
                        ManagerAssets.product,
                        fit: BoxFit.fill,
                      ),
                      Image.asset(
                        ManagerAssets.product,
                        fit: BoxFit.fill,
                      ),
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.centerRight,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                          right: ManagerWidth.w16,
                          top: ManagerHeight.h6,
                        ),
                        alignment: AlignmentDirectional.centerEnd,
                        child: IconButton(
                          onPressed: () {
                            setState(() {
                              isFavorite = !isFavorite;
                            });
                          },
                          icon: isFavorite
                              ? Icon(
                                  Icons.favorite,
                                  color: Colors.white.withOpacity(0.5),
                                  size: ManagerIconSizes.s36,
                                )
                              : const Icon(
                                  Icons.favorite,
                                  color: Colors.red,
                                  size: ManagerIconSizes.s36,
                                ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          bottom: ManagerHeight.h12,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            PageViewIndicator(
                              selected: currentPageIndex == 0,
                              color: Colors.white,
                              elseColor: Colors.white.withOpacity(0.6),
                            ),
                            SizedBox(
                              width: ManagerWidth.w8,
                            ),
                            PageViewIndicator(
                              selected: currentPageIndex == 1,
                              color: Colors.white,
                              elseColor: Colors.white.withOpacity(0.6),
                            ),
                            SizedBox(
                              width: ManagerWidth.w8,
                            ),
                            PageViewIndicator(
                              selected: currentPageIndex == 2,
                              color: Colors.white,
                              elseColor: Colors.white.withOpacity(0.6),
                            ),
                            SizedBox(
                              width: ManagerWidth.w8,
                            ),
                            PageViewIndicator(
                              selected: currentPageIndex == 3,
                              color: Colors.white,
                              elseColor: Colors.white.withOpacity(0.6),
                            ),
                            SizedBox(
                              width: ManagerWidth.w8,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Expanded(
                child: SizedBox(
                  height: 57,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                          isDetails ? Colors.transparent : Colors.grey.shade300,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: Colors.grey.shade300,
                        ),
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        isDetails = true;
                        isReviews = false;
                      });
                    },
                    child: Text(
                      'DETAILS',
                      style: getBoldTextStyle(),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: SizedBox(
                  height: 57,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: isReviews
                            ? Colors.transparent
                            : Colors.grey.shade300,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                            side: BorderSide(color: Colors.grey.shade300))),
                    onPressed: () {
                      setState(() {
                        isDetails = false;
                        isReviews = true;
                      });
                    },
                    child: Text(
                      'REVIEWS',
                      style: getBoldTextStyle(),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Visibility(
            visible: isDetails,
            replacement: buildContainerReviews(),
            child: buildContainerDetails(),
          )
        ],
      ),
    );
  }

  Container buildContainerReviews() {
    return Container(
      margin: EdgeInsets.only(
        bottom: ManagerHeight.h6,
        left: ManagerWidth.w24,
        right: ManagerWidth.w24,
        top: ManagerHeight.h24,
      ),
      child: Column(
        children: [
          SizedBox(
            height: reviewHeight,
            child: ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              itemCount: reviews.length,
              itemBuilder: (context, index) {
                return Container(
                  width: ManagerWidth.w320,
                  height: itemHeight,
                  margin: EdgeInsets.symmetric(
                    vertical: ManagerHeight.h18,
                  ),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.grey,
                                child: Image.asset(
                                  reviews[index].imgPath,
                                  width: ManagerWidth.w38,
                                  height: ManagerHeight.h38,
                                ),
                              ),
                              SizedBox(width: ManagerWidth.w12),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    reviews[index].name,
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Colors.yellow.shade700,
                                        size: 20,
                                      ),
                                      Text(
                                        '(${reviews[index].numStars})',
                                        style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 5,
                            ),
                            child: Text(
                              '${reviews[index].time}min',
                              style: getMediumTextStyle(
                                color: ManagerColors.gray,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: ManagerHeight.h6,
                      ),
                      SizedBox(
                        width: ManagerWidth.w320,
                        height: ManagerHeight.h40,
                        child: Text(
                          reviews[index].content!,
                          style: TextStyle(
                            color: Colors.grey.shade700,
                            fontWeight: FontWeight.w300,
                          ),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          const Divider(height: 10, color: Colors.grey),
          Visibility(
            visible: counter < reviews.length,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.zero,
                  primary: Colors.transparent,
                  elevation: 0,
                ),
                onPressed: () {
                  setState(() {
                    if (counter < reviews.length) {
                      reviewHeight += itemHeight + 30;
                      counter++;
                    }
                  });
                },
                child: const Column(
                  children: [
                    Text(
                      'more',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                      ),
                    ),
                    Icon(
                      Icons.keyboard_arrow_down,
                      color: Colors.grey,
                    ),
                  ],
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(260, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                backgroundColor: Colors.deepOrangeAccent,
              ),
              onPressed: () {},
              child: const Text(
                'Add Review',
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container buildContainerDetails() {
    return Container(
      margin: EdgeInsets.only(
        left: ManagerWidth.w30,
        right: ManagerWidth.w30,
        bottom: ManagerHeight.h10,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      ManagerStrings.spray,
                      style: getTextStyle(
                        fontSize: ManagerFontSizes.s20,
                        fontWeight: ManagerFontWeight.w600,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        top: ManagerHeight.h6,
                      ),
                      padding: EdgeInsets.zero,
                      height: ManagerHeight.h20,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.yellow.shade800,
                            size: 16,
                          ),
                          const Text(
                            '(5.0) ',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Text(
                            '26 orders',
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                const Text(
                  '\$5.35',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey),
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Quantity',
                  style: TextStyle(
                    color: Colors.deepOrangeAccent,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  height: 32,
                  width: 110,
                  padding: const EdgeInsets.only(
                    top: 6,
                    bottom: 5,
                    // left: 8,
                    // right: 7,
                  ),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      IconButton(
                        padding: EdgeInsets.zero,
                        onPressed: () {
                          setState(() {
                            if (numQuantity > 1) {
                              numQuantity--;
                            }
                          });
                        },
                        icon: const Icon(
                          Icons.remove_circle_outline,
                          size: 18,
                          color: Colors.grey,
                        ),
                      ),
                      Text(
                        numQuantity.toString(),
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      IconButton(
                        padding: EdgeInsets.zero,
                        onPressed: () {
                          setState(() {
                            numQuantity++;
                          });
                        },
                        icon: const Icon(
                          Icons.add_circle_outline,
                          size: 18,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            'Description ',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
          const SizedBox(height: 11),
          const SizedBox(
            width: 330,
            height: 65,
            child: Text(
              'Exercitationem neque aut architecto eum. '
              'Ea blanditiis aliquid odit ipsa. Alias qui minus quia similique voluptas'
              ' sit doloremque. Harum eaque officia reiciendis '
              'sit beatae voluptatem. Inventore sequi expedita maiores aliquid et pariatur.',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 14,
              ),
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            'Notes ',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
          const TextField(
            cursorColor: Colors.deepOrangeAccent,
            decoration: InputDecoration(
              labelText: 'Write here',
              labelStyle: TextStyle(
                fontSize: 15,
                color: Colors.grey,
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.deepOrangeAccent),
              ),
            ),
          ),
          const SizedBox(height: 35),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'PRICE',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
              Text(
                '\$5.35',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepOrangeAccent),
              )
            ],
          ),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(155, 50),
                    backgroundColor: ManagerColors.primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    ManagerStrings.addToCart,
                    style: getMediumTextStyle(
                      color: ManagerColors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(155, 50),
                    backgroundColor: ManagerColors.primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    ManagerStrings.checkout,
                    style: getMediumTextStyle(
                      color: ManagerColors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
