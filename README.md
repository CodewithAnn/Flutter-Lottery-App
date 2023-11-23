
# Lottery App

This App shows how The Lottery and casino machines 
system works. I built this app as a project to accumulate what I learned in the initial days of the flutter-leaning journey. 


## User interface

<img src ="https://github.com/CodewithAnn/Flutter-Lottery-App/blob/main/Screenshot_1700756082.png" width = "20%"> <img src ="https://github.com/CodewithAnn/Flutter-Lottery-App/blob/main/Screenshot_1700756420.png" width = "20%">


## Badges

[![MIT License](https://img.shields.io/badge/License-MIT-green.svg)](https://choosealicense.com/licenses/mit/)

![Lines of code](https://img.shields.io/tokei/lines/github/codewithann/flutter-lottery-app)

![GitHub language count](https://img.shields.io/github/languages/count/codewithann/flutter-lottery-app)

![GitHub top language](https://img.shields.io/github/languages/top/codewithann/flutter-lottery-app)

![GitHub last commit](https://img.shields.io/github/last-commit/openfoodfacts/smooth-app)

![Github Repo Size](https://img.shields.io/github/repo-size/codewithann/flutter-lottery-app)

## Usage/Examples
This is `logic` behind the app `Lottery_number`
```dart
 luckyNumber == 5 //ternary operator used here
                        ? Column(
                            // this colum widget display
                            //if condition is true(lucky num == 5 as genrated random num)
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                'icons/Lottery_win.svg',
                                height: 90,
                                // width: ,
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              const Text(
                                "Congrats you won\n 1B Euro Lottery",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          )
                        : Column(
                            // else this column display
                            // when condition is false
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                'icons/oops.svg',
                                height: 70,
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Text(
                                "Better luck next time your number is $luckyNumber \n try again ",
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
```



## Authors

- [@codewithann](https://www.github.com/codewithann)

