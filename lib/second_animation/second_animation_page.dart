import 'package:flutter/material.dart';
import 'package:flutter_and_animations/core/assets/images/app_images.dart';

import '../third_animation/third_animation_page.dart';

class SecondAnimationPage extends StatefulWidget {
  const SecondAnimationPage({Key? key}) : super(key: key);

  @override
  State<SecondAnimationPage> createState() => _SecondAnimationPageState();
}

class _SecondAnimationPageState extends State<SecondAnimationPage> {
  double positionedTopMaleDollImage = 120;
  double positionedTopCardImage = 90;
  double positionedTopFemaleDollImage = 30;
  bool hasAnimated = false;

  void _runAnimation() {
    if (hasAnimated) {
      positionedTopCardImage = 90;
      positionedTopMaleDollImage = 120;
      positionedTopFemaleDollImage = 30;
      hasAnimated = !hasAnimated;
    } else {
      positionedTopCardImage = 10;
      positionedTopMaleDollImage = 40;
      positionedTopFemaleDollImage = 120;
      hasAnimated = !hasAnimated;
    }

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xffA201C3),
        title: const Text('Second animation'),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
            child: TextButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.white)),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ThirdAnimationPage()));
              },
              child: const Text(
                "Next Page",
                style: TextStyle(color: Colors.purple),
              ),
            ),
          )
        ],
      ),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Image.asset(AppImages.backgroundImage),
                  AnimatedPositioned(
                    top: positionedTopFemaleDollImage,
                    left: 5,
                    duration: const Duration(milliseconds: 800),
                    curve: Curves.easeInOut,
                    onEnd: _runAnimation,
                    child: Image.asset(
                      AppImages.femaleDoll,
                      height: 150,
                    ),
                  ),
                  AnimatedPositioned(
                    top: positionedTopMaleDollImage,
                    right: 5,
                    duration: const Duration(milliseconds: 800),
                    curve: Curves.easeInOut,
                    child: Image.asset(
                      AppImages.maleDoll,
                      height: 150,
                    ),
                  ),
                  AnimatedPositioned(
                    top: positionedTopCardImage,
                    left: size.width * .5,
                    duration: const Duration(milliseconds: 800),
                    curve: Curves.easeInOut,
                    child: Image.asset(
                      AppImages.card,
                      height: 90,
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(left: 30, right: 30, top: 40),
                child: Text('Aprovamos a conta para você',
                    style: TextStyle(fontSize: 30)),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 30, right: 30, top: 25),
                child:
                    Text('Benefícios da conta', style: TextStyle(fontSize: 18)),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25),
                child: InkWell(
                  child: ListTile(
                    leading: Image.asset(
                      AppImages.transfer,
                      height: 40,
                      color: Colors.black54,
                    ),
                    title: const Text(
                        'Tranferências gratuitas e ilimitadas para todos os bancos',
                        style: TextStyle(color: Colors.black54)),
                    trailing: const Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 15,
                    ),
                  ),
                  onTap: () {},
                ),
              ),
              const Divider(
                height: 5,
                color: Colors.black45,
              ),
              InkWell(
                child: ListTile(
                  leading: Image.asset(
                    AppImages.currentMoney,
                    height: 35,
                    color: Colors.black38,
                  ),
                  title: const Text('Sem tarifas de manutenção',
                      style: TextStyle(color: Colors.black54)),
                  trailing: const Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 15,
                  ),
                ),
                onTap: () {},
              ),
              const Divider(
                height: 5,
                color: Colors.black45,
              ),
              InkWell(
                child: const ListTile(
                  leading: Icon(
                    Icons.credit_card_rounded,
                    color: Colors.black38,
                    size: 35,
                  ),
                  title: Text('Sem tarifas de manutenção',
                      style: TextStyle(color: Colors.black54)),
                  trailing: Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 15,
                  ),
                ),
                onTap: () {},
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20, top: 25),
                child: Text('Sobre o cartão de crédito',
                    style: TextStyle(fontSize: 18)),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20, right: 20, top: 20),
                child: Text(
                  'Nesse momento não podemos te oferecer um cartão de crédito. Caso você mantenha o interesse, aguarde 3 meses para fazer um novo pedido.',
                  style: TextStyle(fontSize: 18, color: Colors.black54),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 30),
                child: Divider(
                  height: 5,
                  color: Colors.black45,
                ),
              ),
              InkWell(
                child: const SizedBox(
                  height: 60,
                  width: 410,
                  child: Align(
                    child: Text(
                      'CONTINUAR',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.purple),
                    ),
                  ),
                ),
                onTap: () {},
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _runAnimation,
        tooltip: 'Increment',
        backgroundColor: Colors.purple,
        child: const Icon(
          Icons.play_arrow,
          color: Colors.white,
        ),
      ),
    );
  }
}
