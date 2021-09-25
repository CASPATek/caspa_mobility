import 'dart:ui' as ui;

import 'package:flutter/material.dart';

//Add this CustomPaint widget to the Widget Tree
// CustomPaint(
// size: Size(WIDTH, (WIDTH*1.049132628632463).toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
// painter: RPSCustomPainter(),
// )

//Copy this CustomPainter code to the Bottom of the File
class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {

    Path path_0 = Path();
    path_0.moveTo(size.width*0.9674291,size.height*0.2484700);
    path_0.cubicTo(size.width*0.9677974,size.height*0.2490551,size.width*0.9729537,size.height*0.2519806,size.width*0.9788467,size.height*0.2549061);
    path_0.cubicTo(size.width*1.001191,size.height*0.2661401,size.width*1.035444,size.height*0.2915336,size.width*1.060857,size.height*0.3156398);
    path_0.cubicTo(size.width*1.088112,size.height*0.3416184,size.width*1.110579,size.height*0.3718097,size.width*1.128872,size.height*0.4070329);
    path_0.cubicTo(size.width*1.148270,size.height*0.4445966,size.width*1.159442,size.height*0.4798198,size.width*1.165212,size.height*0.5217132);
    path_0.cubicTo(size.width*1.167790,size.height*0.5402024,size.width*1.168158,size.height*0.5850214,size.width*1.165826,size.height*0.6024574);
    path_0.cubicTo(size.width*1.160301,size.height*0.6456381,size.width*1.147533,size.height*0.6869463,size.width*1.128749,size.height*0.7226376);
    path_0.cubicTo(size.width*1.119173,size.height*0.7408929,size.width*1.118559,size.height*0.7429992,size.width*1.123716,size.height*0.7417120);
    path_0.cubicTo(size.width*1.141886,size.height*0.7373822,size.width*1.150848,size.height*0.7362120,size.width*1.169018,size.height*0.7356269);
    path_0.cubicTo(size.width*1.185837,size.height*0.7350418,size.width*1.189029,size.height*0.7346908,size.width*1.189643,size.height*0.7330525);
    path_0.cubicTo(size.width*1.192221,size.height*0.7268504,size.width*1.203025,size.height*0.6933825,size.width*1.204989,size.height*0.6855421);
    path_0.cubicTo(size.width*1.212356,size.height*0.6565210,size.width*1.214934,size.height*0.6327658,size.width*1.215057,size.height*0.5956702);
    path_0.cubicTo(size.width*1.215057,size.height*0.5633725,size.width*1.214074,size.height*0.5528407,size.width*1.209164,size.height*0.5296706);
    path_0.cubicTo(size.width*1.199710,size.height*0.4846176,size.width*1.172455,size.height*0.4210754,size.width*1.151830,size.height*0.3954479);
    path_0.cubicTo(size.width*1.149006,size.height*0.3919373,size.width*1.139185,size.height*0.3796501,size.width*1.130100,size.height*0.3681821);
    path_0.cubicTo(size.width*1.110334,size.height*0.3434907,size.width*1.102599,size.height*0.3354163,size.width*1.078045,size.height*0.3145866);
    path_0.cubicTo(size.width*1.050790,size.height*0.2914165,size.width*1.026236,size.height*0.2753847,size.width*0.9922286,size.height*0.2584167);
    path_0.cubicTo(size.width*0.9751513,size.height*0.2498742,size.width*0.9659436,size.height*0.2462466,size.width*0.9674291,size.height*0.2484700);
    path_0.close();

    Paint paint_0_fill = Paint()..style=PaintingStyle.fill;
    paint_0_fill.color = Colors.white;
    canvas.drawPath(path_0,paint_0_fill);

    Path path_1 = Path();
    path_1.moveTo(size.width*0.6129793,size.height*0.2600550);
    path_1.cubicTo(size.width*0.5685365,size.height*0.2825230,size.width*0.5491388,size.height*0.2963314,size.width*0.5121849,size.height*0.3312036);
    path_1.cubicTo(size.width*0.4688471,size.height*0.3721608,size.width*0.4452752,size.height*0.4046925,size.width*0.4231766,size.height*0.4544263);
    path_1.cubicTo(size.width*0.4023056,size.height*0.5013516,size.width*0.3929751,size.height*0.5464045,size.width*0.3930979,size.height*0.6001170);
    path_1.cubicTo(size.width*0.3930979,size.height*0.6516061,size.width*0.4023056,size.height*0.6972442,size.width*0.4214578,size.height*0.7411269);
    path_1.arcToPoint(Offset(size.width*0.4725302,size.height*0.8264350),radius: Radius.elliptical(size.width*0.3990031, size.height*0.3803171),rotation: 0 ,largeArc: false,clockwise: false);
    path_1.cubicTo(size.width*0.4798964,size.height*0.8357966,size.width*0.4822290,size.height*0.8379030,size.width*0.4877537,size.height*0.8402434);
    path_1.cubicTo(size.width*0.5007673,size.height*0.8457434,size.width*0.5276540,size.height*0.8524136,size.width*0.5542951,size.height*0.8569774);
    path_1.cubicTo(size.width*0.5620296,size.height*0.8582646,size.width*0.5709919,size.height*0.8599029,size.width*0.5740611,size.height*0.8606050);
    path_1.cubicTo(size.width*0.5844966,size.height*0.8628284,size.width*0.5910034,size.height*0.8621263,size.width*0.6009478,size.height*0.8577965);
    path_1.cubicTo(size.width*0.6313948,size.height*0.8443391,size.width*0.6780475,size.height*0.8325200,size.width*0.7237180,size.height*0.8265520);
    path_1.arcToPoint(Offset(size.width*0.7992216,size.height*0.8218712),radius: Radius.elliptical(size.width*0.6447399, size.height*0.6145457),rotation: 0 ,largeArc: false,clockwise: true);
    path_1.cubicTo(size.width*0.8127264,size.height*0.8218712,size.width*0.8246351,size.height*0.8214031,size.width*0.8254945,size.height*0.8208180);
    path_1.cubicTo(size.width*0.8269677,size.height*0.8198818,size.width*0.8273360,size.height*0.8163712,size.width*0.8273360,size.height*0.8042010);
    path_1.lineTo(size.width*0.8274588,size.height*0.7886373);
    path_1.lineTo(size.width*0.8151818,size.height*0.7818501);
    path_1.cubicTo(size.width*0.7963979,size.height*0.7714353,size.width*0.7884179,size.height*0.7679246,size.width*0.7825249,size.height*0.7678076);
    path_1.cubicTo(size.width*0.7745448,size.height*0.7674566,size.width*0.7334168,size.height*0.7714353,size.width*0.7175795,size.height*0.7740097);
    path_1.cubicTo(size.width*0.6579132,size.height*0.7834884,size.width*0.6312720,size.height*0.7908607,size.width*0.5929677,size.height*0.8080627);
    path_1.cubicTo(size.width*0.5676771,size.height*0.8195307,size.width*0.5615386,size.height*0.8218712,size.width*0.5574871,size.height*0.8218712);
    path_1.cubicTo(size.width*0.5546634,size.height*0.8218712,size.width*0.5367390,size.height*0.8053712,size.width*0.5309688,size.height*0.7974138);
    path_1.lineTo(size.width*0.5280223,size.height*0.7934351);
    path_1.lineTo(size.width*0.5323193,size.height*0.7899245);
    path_1.cubicTo(size.width*0.5346519,size.height*0.7880522,size.width*0.5409132,size.height*0.7837224,size.width*0.5463151,size.height*0.7803288);
    path_1.cubicTo(size.width*0.5803224,size.height*0.7590311,size.width*0.6236603,size.height*0.7433503,size.width*0.6850454,size.height*0.7300099);
    path_1.cubicTo(size.width*0.6958491,size.height*0.7276695,size.width*0.7054252,size.height*0.7255632,size.width*0.7062846,size.height*0.7252121);
    path_1.cubicTo(size.width*0.7102133,size.height*0.7241589,size.width*0.7065301,size.height*0.7209994,size.width*0.6922888,size.height*0.7135100);
    path_1.cubicTo(size.width*0.6722773,size.height*0.7030952,size.width*0.6654021,size.height*0.6973612,size.width*0.6628240,size.height*0.6889357);
    path_1.cubicTo(size.width*0.6618418,size.height*0.6855421,size.width*0.6604913,size.height*0.6823825,size.width*0.6598775,size.height*0.6820315);
    path_1.cubicTo(size.width*0.6570538,size.height*0.6803932,size.width*0.6213276,size.height*0.6912761,size.width*0.5997201,size.height*0.7004037);
    path_1.cubicTo(size.width*0.5883025,size.height*0.7052016,size.width*0.5643623,size.height*0.7171377,size.width*0.5536813,size.height*0.7232227);
    path_1.cubicTo(size.width*0.5399310,size.height*0.7311802,size.width*0.5172185,size.height*0.7467439,size.width*0.5108345,size.height*0.7524779);
    path_1.cubicTo(size.width*0.5060464,size.height*0.7568077,size.width*0.5055554,size.height*0.7593821,size.width*0.5082563,size.height*0.7659353);
    path_1.cubicTo(size.width*0.5087474,size.height*0.7671055,size.width*0.5086246,size.height*0.7680417,size.width*0.5081335,size.height*0.7680417);
    path_1.cubicTo(size.width*0.5059237,size.height*0.7680417,size.width*0.4918051,size.height*0.7455737,size.width*0.4798964,size.height*0.7229887);
    path_1.cubicTo(size.width*0.4609898,size.height*0.6870634,size.width*0.4514137,size.height*0.6585103,size.width*0.4449069,size.height*0.6176701);
    path_1.cubicTo(size.width*0.4412238,size.height*0.5949681,size.width*0.4403644,size.height*0.5485109,size.width*0.4430653,size.height*0.5245217);
    path_1.cubicTo(size.width*0.4503088,size.height*0.4628518,size.width*0.4738806,size.height*0.4049266,size.width*0.5132899,size.height*0.3526183);
    path_1.cubicTo(size.width*0.5387033,size.height*0.3189164,size.width*0.5804452,size.height*0.2833421,size.width*0.6229236,size.height*0.2590018);
    path_1.cubicTo(size.width*0.6311493,size.height*0.2544380,size.width*0.6380244,size.height*0.2501082,size.width*0.6385155,size.height*0.2495231);
    path_1.cubicTo(size.width*0.6402342,size.height*0.2468317,size.width*0.6343413,size.height*0.2492540,size.width*0.6129793,size.height*0.2600550);
    path_1.close();

    Paint paint_1_fill = Paint()..style=PaintingStyle.fill;
    paint_1_fill.color = Colors.white;
    canvas.drawPath(path_1,paint_1_fill);

    Path path_2 = Path();
    path_2.moveTo(size.width*0.7679152,size.height*0.3439588);
    path_2.cubicTo(size.width*0.7123003,size.height*0.3507460,size.width*0.6542300,size.height*0.3728629,size.width*0.6092962,size.height*0.4043415);
    path_2.cubicTo(size.width*0.5971419,size.height*0.4127670,size.width*0.5594515,size.height*0.4484583,size.width*0.5513486,size.height*0.4589901);
    path_2.cubicTo(size.width*0.5432458,size.height*0.4695220,size.width*0.5453329,size.height*0.4704581,size.width*0.5588376,size.height*0.4627348);
    path_2.cubicTo(size.width*0.5848649,size.height*0.4479902,size.width*0.6156802,size.height*0.4361711,size.width*0.6568082,size.height*0.4251711);
    path_2.cubicTo(size.width*0.7033381,size.height*0.4127670,size.width*0.7396781,size.height*0.4078521,size.width*0.7936970,size.height*0.4069159);
    path_2.cubicTo(size.width*0.8405952,size.height*0.4059798,size.width*0.8728837,size.height*0.4079691,size.width*0.9127841,size.height*0.4141712);
    path_2.cubicTo(size.width*0.9573496,size.height*0.4209584,size.width*0.9906204,size.height*0.4297349,size.width*1.019962,size.height*0.4420221);
    path_2.cubicTo(size.width*1.039360,size.height*0.4502136,size.width*1.047954,size.height*0.4534901,size.width*1.048691,size.height*0.4527880);
    path_2.cubicTo(size.width*1.051269,size.height*0.4503306,size.width*1.036045,size.height*0.4346498,size.width*1.012228,size.height*0.4151074);
    path_2.cubicTo(size.width*0.9970044,size.height*0.4025862,size.width*0.9891471,size.height*0.3969692,size.width*0.9766246,size.height*0.3898309);
    path_2.cubicTo(size.width*0.9442132,size.height*0.3713416,size.width*0.9138890,size.height*0.3591715,size.width*0.8820915,size.height*0.3521503);
    path_2.cubicTo(size.width*0.8559415,size.height*0.3462992,size.width*0.8370349,size.height*0.3443099,size.width*0.8035186,size.height*0.3438418);
    path_2.cubicTo(size.width*0.7863308,size.height*0.3436077,size.width*0.7702479,size.height*0.3437248,size.width*0.7679152,size.height*0.3439588);
    path_2.close();

    Paint paint_2_fill = Paint()..style=PaintingStyle.fill;
    paint_2_fill.color = Colors.white;
    canvas.drawPath(path_2,paint_2_fill);

    Path path_3 = Path();
    path_3.moveTo(size.width*0.7685414,size.height*0.4580539);
    path_3.arcToPoint(Offset(size.width*0.6886180,size.height*0.4683518),radius: Radius.elliptical(size.width*0.6987711, size.height*0.6660465),rotation: 0 ,largeArc: false,clockwise: false);
    path_3.cubicTo(size.width*0.6768320,size.height*0.4705752,size.width*0.6479810,size.height*0.4777134,size.width*0.6339852,size.height*0.4819262);
    path_3.cubicTo(size.width*0.5923661,size.height*0.4947984,size.width*0.5595865,size.height*0.5097771,size.width*0.5356463,size.height*0.5272132);
    path_3.cubicTo(size.width*0.5172308,size.height*0.5405535,size.width*0.5015162,size.height*0.5540109,size.width*0.4983242,size.height*0.5591598);
    path_3.cubicTo(size.width*0.4951322,size.height*0.5643087,size.width*0.4914491,size.height*0.5753086,size.width*0.4893620,size.height*0.5854894);
    path_3.cubicTo(size.width*0.4886253,size.height*0.5890001,size.width*0.4875204,size.height*0.5946170,size.width*0.4867838,size.height*0.5980106);
    path_3.cubicTo(size.width*0.4860472,size.height*0.6014042,size.width*0.4851878,size.height*0.6091276,size.width*0.4848195,size.height*0.6152127);
    path_3.cubicTo(size.width*0.4838373,size.height*0.6290211,size.width*0.4851878,size.height*0.6297232,size.width*0.4925540,size.height*0.6196595);
    path_3.cubicTo(size.width*0.5018845,size.height*0.6070212,size.width*0.5280346,size.height*0.5849043,size.width*0.5500104,size.height*0.5710959);
    path_3.cubicTo(size.width*0.5996096,size.height*0.5399684,size.width*0.6814973,size.height*0.5178515,size.width*0.7701374,size.height*0.5116494);
    path_3.cubicTo(size.width*0.7955508,size.height*0.5098941,size.width*0.8604962,size.height*0.5108303,size.width*0.8833315,size.height*0.5134047);
    path_3.cubicTo(size.width*0.9788467,size.height*0.5237025,size.width*1.050667,size.height*0.5492130,size.width*1.103704,size.height*0.5914575);
    path_3.cubicTo(size.width*1.120155,size.height*0.6046808,size.width*1.120032,size.height*0.6045638,size.width*1.121260,size.height*0.6037447);
    path_3.cubicTo(size.width*1.124698,size.height*0.6017553,size.width*1.109474,size.height*0.5452343,size.width*1.103458,size.height*0.5377450);
    path_3.cubicTo(size.width*1.096583,size.height*0.5290855,size.width*1.048457,size.height*0.5021707,size.width*1.021448,size.height*0.4918729);
    path_3.cubicTo(size.width*0.9720943,size.height*0.4730326,size.width*0.9181982,size.height*0.4617986,size.width*0.8577953,size.height*0.4579369);
    path_3.cubicTo(size.width*0.8361755,size.height*0.4566497,size.width*0.7902594,size.height*0.4566497,size.width*0.7685414,size.height*0.4580539);
    path_3.close();

    Paint paint_3_fill = Paint()..style=PaintingStyle.fill;
    paint_3_fill.color = Colors.white;
    canvas.drawPath(path_3,paint_3_fill);

    Path path_4 = Path();
    path_4.moveTo(size.width*0.7845015,size.height*0.5610321);
    path_4.cubicTo(size.width*0.7464427,size.height*0.5631385,size.width*0.7064197,size.height*0.5682874,size.width*0.6765865,size.height*0.5748406);
    path_4.cubicTo(size.width*0.5985047,size.height*0.5920426,size.width*0.5422759,size.height*0.6184893,size.width*0.5048310,size.height*0.6555848);
    path_4.cubicTo(size.width*0.4913263,size.height*0.6690422,size.width*0.4855561,size.height*0.6775847,size.width*0.4855561,size.height*0.6841379);
    path_4.cubicTo(size.width*0.4855561,size.height*0.6916272,size.width*0.4904669,size.height*0.7158504,size.width*0.4923084,size.height*0.7177228);
    path_4.cubicTo(size.width*0.4939045,size.height*0.7191270,size.width*0.4959916,size.height*0.7176058,size.width*0.5085141,size.height*0.7059037);
    path_4.cubicTo(size.width*0.5296306,size.height*0.6861272,size.width*0.5443630,size.height*0.6762975,size.width*0.5737051,size.height*0.6622550);
    path_4.cubicTo(size.width*0.6105361,size.height*0.6447019,size.width*0.6460167,size.height*0.6332339,size.width*0.6881269,size.height*0.6252765);
    path_4.cubicTo(size.width*0.7126809,size.height*0.6207127,size.width*0.7182056,size.height*0.6198935,size.width*0.7568782,size.height*0.6156808);
    path_4.cubicTo(size.width*0.7757848,size.height*0.6135744,size.width*0.8585319,size.height*0.6135744,size.width*0.8747376,size.height*0.6156808);
    path_4.cubicTo(size.width*0.8811216,size.height*0.6164999,size.width*0.8927848,size.height*0.6180212,size.width*0.9005193,size.height*0.6189573);
    path_4.cubicTo(size.width*0.9801972,size.height*0.6290211,size.width*1.058033,size.height*0.6585103,size.width*1.105546,size.height*0.6965420);
    path_4.cubicTo(size.width*1.111316,size.height*0.7011058,size.width*1.116840,size.height*0.7047335,size.width*1.117823,size.height*0.7046165);
    path_4.cubicTo(size.width*1.120155,size.height*0.7041484,size.width*1.122365,size.height*0.6964250,size.width*1.124084,size.height*0.6821485);
    path_4.cubicTo(size.width*1.126171,size.height*0.6657656,size.width*1.125066,size.height*0.6602656,size.width*1.118682,size.height*0.6537125);
    path_4.cubicTo(size.width*1.112666,size.height*0.6475104,size.width*1.091550,size.height*0.6321807,size.width*1.074853,size.height*0.6218829);
    path_4.cubicTo(size.width*1.042442,size.height*0.6018723,size.width*0.9871951,size.height*0.5811597,size.width*0.9422612,size.height*0.5720321);
    path_4.arcToPoint(Offset(size.width*0.7845015,size.height*0.5610321),radius: Radius.elliptical(size.width*0.6160731, size.height*0.5872213),rotation: 0 ,largeArc: false,clockwise: false);
    path_4.close();

    Paint paint_4_fill = Paint()..style=PaintingStyle.fill;
    paint_4_fill.color = Colors.white;
    canvas.drawPath(path_4,paint_4_fill);

    Path path_5 = Path();
    path_5.moveTo(size.width*0.3740685,size.height*0.6490317);
    path_5.cubicTo(size.width*0.3627736,size.height*0.6524253,size.width*0.3430076,size.height*0.6782868,size.width*0.3334315,size.height*0.7025101);
    path_5.cubicTo(size.width*0.3223822,size.height*0.7302440,size.width*0.3264336,size.height*0.7630098,size.width*0.3453403,size.height*0.7975309);
    path_5.cubicTo(size.width*0.3636330,size.height*0.8311158,size.width*0.4008324,size.height*0.8669241,size.width*0.4372951,size.height*0.8863495);
    path_5.cubicTo(size.width*0.4828429,size.height*0.9104558,size.width*0.5565050,size.height*0.9250834,size.width*0.6316403,size.height*0.9250834);
    path_5.cubicTo(size.width*0.6667526,size.height*0.9250834,size.width*0.6854137,size.height*0.9236791,size.width*0.7286288,size.height*0.9177111);
    path_5.cubicTo(size.width*0.7547788,size.height*0.9142005,size.width*0.7595669,size.height*0.9126792,size.width*0.7603035,size.height*0.9076473);
    path_5.cubicTo(size.width*0.7612856,size.height*0.9014452,size.width*0.7486403,size.height*0.9000410,size.width*0.7218764,size.height*0.9036686);
    path_5.arcToPoint(Offset(size.width*0.6306582,size.height*0.9072962),radius: Radius.elliptical(size.width*0.5190969, size.height*0.4947867),rotation: 0 ,largeArc: false,clockwise: true);
    path_5.cubicTo(size.width*0.6053675,size.height*0.9061260,size.width*0.6030349,size.height*0.9058920,size.width*0.5843738,size.height*0.9036686);
    path_5.cubicTo(size.width*0.5260580,size.height*0.8965303,size.width*0.4791598,size.height*0.8838921,size.width*0.4441703,size.height*0.8656369);
    path_5.cubicTo(size.width*0.4311566,size.height*0.8588497,size.width*0.4072164,size.height*0.8435200,size.width*0.4042699,size.height*0.8401264);
    path_5.cubicTo(size.width*0.3978859,size.height*0.8326371,size.width*0.4054976,size.height*0.8345094,size.width*0.4242815,size.height*0.8451583);
    path_5.cubicTo(size.width*0.4678649,size.height*0.8697326,size.width*0.5463151,size.height*0.8874027,size.width*0.6118743,size.height*0.8874027);
    path_5.cubicTo(size.width*0.6399887,size.height*0.8874027,size.width*0.6807484,size.height*0.8829559,size.width*0.6893423,size.height*0.8788602);
    path_5.cubicTo(size.width*0.6946214,size.height*0.8764028,size.width*0.6994095,size.height*0.8707858,size.width*0.6975679,size.height*0.8691475);
    path_5.cubicTo(size.width*0.6954808,size.height*0.8671582,size.width*0.6825900,size.height*0.8664560,size.width*0.6666298,size.height*0.8676262);
    path_5.cubicTo(size.width*0.6328680,size.height*0.8700837,size.width*0.5848649,size.height*0.8683284,size.width*0.5610475,size.height*0.8639986);
    path_5.cubicTo(size.width*0.5577327,size.height*0.8634135,size.width*0.5502437,size.height*0.8620092,size.width*0.5444735,size.height*0.8610731);
    path_5.cubicTo(size.width*0.5083791,size.height*0.8548710,size.width*0.4697065,size.height*0.8418817,size.width*0.4444158,size.height*0.8276052);
    path_5.cubicTo(size.width*0.4221944,size.height*0.8152010,size.width*0.3960443,size.height*0.7922649,size.width*0.3826624,size.height*0.7735416);
    path_5.cubicTo(size.width*0.3746823,size.height*0.7625417,size.width*0.3660884,size.height*0.7455737,size.width*0.3633875,size.height*0.7356269);
    path_5.cubicTo(size.width*0.3604410,size.height*0.7246270,size.width*0.3608093,size.height*0.7069569,size.width*0.3641241,size.height*0.6964250);
    path_5.cubicTo(size.width*0.3674389,size.height*0.6858932,size.width*0.3698943,size.height*0.6810953,size.width*0.3782427,size.height*0.6692762);
    path_5.cubicTo(size.width*0.3856089,size.height*0.6590954,size.width*0.3867138,size.height*0.6539465,size.width*0.3824169,size.height*0.6498508);
    path_5.cubicTo(size.width*0.3797159,size.height*0.6472763,size.width*0.3797159,size.height*0.6472763,size.width*0.3740685,size.height*0.6490317);
    path_5.close();

    Paint paint_5_fill = Paint()..style=PaintingStyle.fill;
    paint_5_fill.color = Colors.white;
    canvas.drawPath(path_5,paint_5_fill);

    Path path_6 = Path();
    path_6.moveTo(size.width*0.7691429,size.height*0.6645954);
    path_6.cubicTo(size.width*0.7355039,size.height*0.6671699,size.width*0.7049341,size.height*0.6709145,size.width*0.7032154,size.height*0.6725528);
    path_6.cubicTo(size.width*0.7012510,size.height*0.6744251,size.width*0.7076351,size.height*0.6769996,size.width*0.7353811,size.height*0.6858932);
    path_6.cubicTo(size.width*0.7515868,size.height*0.6910421,size.width*0.7729488,size.height*0.6979463,size.width*0.7830160,size.height*0.7012229);
    path_6.cubicTo(size.width*0.8210747,size.height*0.7139781,size.width*0.8345795,size.height*0.7169036,size.width*0.8630621,size.height*0.7188930);
    path_6.cubicTo(size.width*0.8732521,size.height*0.7195951,size.width*0.8850380,size.height*0.7206483,size.width*0.8894577,size.height*0.7213504);
    path_6.cubicTo(size.width*0.8938775,size.height*0.7220525,size.width*0.9013664,size.height*0.7229887,size.width*0.9060317,size.height*0.7236908);
    path_6.cubicTo(size.width*0.9520705,size.height*0.7302440,size.width*1.002038,size.height*0.7437014,size.width*1.033099,size.height*0.7577438);
    path_6.cubicTo(size.width*1.044271,size.height*0.7627757,size.width*1.049427,size.height*0.7645310,size.width*1.052128,size.height*0.7641800);
    path_6.cubicTo(size.width*1.057162,size.height*0.7634779,size.width*1.082944,size.height*0.7558715,size.width*1.094729,size.height*0.7515417);
    path_6.cubicTo(size.width*1.101482,size.height*0.7490843,size.width*1.104306,size.height*0.7474460,size.width*1.104306,size.height*0.7460418);
    path_6.cubicTo(size.width*1.104183,size.height*0.7419461,size.width*1.077787,size.height*0.7249781,size.width*1.052865,size.height*0.7131590);
    path_6.cubicTo(size.width*1.001792,size.height*0.6887017,size.width*0.9485102,size.height*0.6741911,size.width*0.8833192,size.height*0.6667018);
    path_6.cubicTo(size.width*0.8677274,size.height*0.6649465,size.width*0.7845015,size.height*0.6634252,size.width*0.7691429,size.height*0.6645954);
    path_6.close();

    Paint paint_6_fill = Paint()..style=PaintingStyle.fill;
    paint_6_fill.color = Colors.white;
    canvas.drawPath(path_6,paint_6_fill);

    Path path_7 = Path();
    path_7.moveTo(size.width*0.6773108,size.height*0.6814464);
    path_7.cubicTo(size.width*0.6731367,size.height*0.6830847,size.width*0.6726456,size.height*0.6858932,size.width*0.6759604,size.height*0.6892868);
    path_7.cubicTo(size.width*0.6807484,size.height*0.6943186,size.width*0.6814850,size.height*0.6946697,size.width*0.7571115,size.height*0.7359780);
    path_7.cubicTo(size.width*0.7803150,size.height*0.7486162,size.width*0.8035186,size.height*0.7616055,size.width*0.8087977,size.height*0.7647651);
    path_7.cubicTo(size.width*0.8140768,size.height*0.7679246,size.width*0.8192332,size.height*0.7703821,size.width*0.8202153,size.height*0.7703821);
    path_7.cubicTo(size.width*0.8215658,size.height*0.7703821,size.width*0.8219341,size.height*0.7681587,size.width*0.8219341,size.height*0.7594992);
    path_7.arcToPoint(Offset(size.width*0.8269677,size.height*0.7332865),radius: Radius.elliptical(size.width*0.06902140, size.height*0.06578901),rotation: 0 ,largeArc: false,clockwise: true);
    path_7.cubicTo(size.width*0.8283182,size.height*0.7300099,size.width*0.8283182,size.height*0.7291908,size.width*0.8268449,size.height*0.7277866);
    path_7.cubicTo(size.width*0.8258628,size.height*0.7269674,size.width*0.8156728,size.height*0.7232227,size.width*0.8041324,size.height*0.7194781);
    path_7.cubicTo(size.width*0.7925920,size.height*0.7157334,size.width*0.7722122,size.height*0.7091803,size.width*0.7587075,size.height*0.7048505);
    path_7.cubicTo(size.width*0.6765742,size.height*0.6781698,size.width*0.6819761,size.height*0.6796911,size.width*0.6773108,size.height*0.6814464);
    path_7.close();

    Paint paint_7_fill = Paint()..style=PaintingStyle.fill;
    paint_7_fill.color = Colors.white;
    canvas.drawPath(path_7,paint_7_fill);

    Path path_8 = Path();
    path_8.moveTo(size.width*0.8483420,size.height*0.7415950);
    path_8.cubicTo(size.width*0.8418352,size.height*0.7442865,size.width*0.8413441,size.height*0.7467439,size.width*0.8402392,size.height*0.7844246);
    path_8.cubicTo(size.width*0.8392570,size.height*0.8188286,size.width*0.8382748,size.height*0.8295945,size.width*0.8352056,size.height*0.8355626);
    path_8.cubicTo(size.width*0.8343462,size.height*0.8373179,size.width*0.8298037,size.height*0.8415306,size.width*0.8251384,size.height*0.8448072);
    path_8.cubicTo(size.width*0.8113882,size.height*0.8546369,size.width*0.8096694,size.height*0.8579135,size.width*0.8155623,size.height*0.8639986);
    path_8.cubicTo(size.width*0.8198593,size.height*0.8685624,size.width*0.8322591,size.height*0.8726581,size.width*0.8484648,size.height*0.8747645);
    path_8.cubicTo(size.width*0.8676169,size.height*0.8772219,size.width*0.9332990,size.height*0.8768709,size.width*0.9638687,size.height*0.8740624);
    path_8.cubicTo(size.width*0.9835120,size.height*0.8723071,size.width*0.9900188,size.height*0.8720730,size.width*0.9954207,size.height*0.8731262);
    path_8.cubicTo(size.width*0.9991038,size.height*0.8738283,size.width*1.016905,size.height*0.8802645,size.width*1.035075,size.height*0.8875197);
    path_8.cubicTo(size.width*1.053245,size.height*0.8947750,size.width*1.079395,size.height*0.9049558,size.width*1.093269,size.height*0.9102218);
    path_8.cubicTo(size.width*1.134519,size.height*0.9261366,size.width*1.204253,size.height*0.9537534,size.width*1.224019,size.height*0.9619449);
    path_8.cubicTo(size.width*1.244521,size.height*0.9704874,size.width*1.255325,size.height*0.9725938,size.width*1.259377,size.height*0.9688491);
    path_8.arcToPoint(Offset(size.width*1.261464,size.height*0.9653385),radius: Radius.elliptical(size.width*0.007636306, size.height*0.007278685),rotation: 0 ,largeArc: false,clockwise: false);
    path_8.cubicTo(size.width*1.261464,size.height*0.9620619,size.width*1.253606,size.height*0.9528173,size.width*1.245258,size.height*0.9463811);
    path_8.cubicTo(size.width*1.240347,size.height*0.9425195,size.width*1.233349,size.height*0.9367854,size.width*1.229543,size.height*0.9335089);
    path_8.cubicTo(size.width*1.222300,size.height*0.9271897,size.width*1.159810,size.height*0.8749985,size.width*1.138080,size.height*0.8573284);
    path_8.cubicTo(size.width*1.130836,size.height*0.8513604,size.width*1.123838,size.height*0.8451583,size.width*1.122611,size.height*0.8435200);
    path_8.lineTo(size.width*1.120155,size.height*0.8407115);
    path_8.lineTo(size.width*1.124820,size.height*0.8388392);
    path_8.cubicTo(size.width*1.130591,size.height*0.8364987,size.width*1.143604,size.height*0.8325200,size.width*1.161652,size.height*0.8278392);
    path_8.cubicTo(size.width*1.184978,size.height*0.8215201,size.width*1.199096,size.height*0.8153180,size.width*1.214197,size.height*0.8046691);
    path_8.cubicTo(size.width*1.234700,size.height*0.7901586,size.width*1.237892,size.height*0.7769352,size.width*1.223773,size.height*0.7646481);
    path_8.cubicTo(size.width*1.211865,size.height*0.7542332,size.width*1.189643,size.height*0.7469779,size.width*1.169509,size.height*0.7469779);
    path_8.cubicTo(size.width*1.146428,size.height*0.7469779,size.width*1.127276,size.height*0.7517758,size.width*1.063067,size.height*0.7734246);
    path_8.cubicTo(size.width*1.036549,size.height*0.7823182,size.width*1.024026,size.height*0.7855948,size.width*1.016046,size.height*0.7855948);
    path_8.cubicTo(size.width*1.006838,size.height*0.7855948,size.width*0.9940702,size.height*0.7819671,size.width*0.9563798,size.height*0.7686268);
    path_8.cubicTo(size.width*0.9141468,size.height*0.7537651,size.width*0.8992916,size.height*0.7495524,size.width*0.8992916,size.height*0.7524779);
    path_8.cubicTo(size.width*0.8992916,size.height*0.7541162,size.width*0.9092360,size.height*0.7833714,size.width*0.9129191,size.height*0.7926160);
    path_8.cubicTo(size.width*0.9159884,size.height*0.8002223,size.width*0.9178299,size.height*0.8027968,size.width*0.9223724,size.height*0.8066585);
    path_8.cubicTo(size.width*0.9293703,size.height*0.8123925,size.width*0.9283882,size.height*0.8139138,size.width*0.9173388,size.height*0.8146159);
    path_8.cubicTo(size.width*0.9098499,size.height*0.8150840,size.width*0.9096043,size.height*0.8149669,size.width*0.9040797,size.height*0.8102861);
    path_8.cubicTo(size.width*0.8967134,size.height*0.8042010,size.width*0.8914343,size.height*0.7937862,size.width*0.8834543,size.height*0.7695629);
    path_8.cubicTo(size.width*0.8798939,size.height*0.7592651,size.width*0.8759653,size.height*0.7494354,size.width*0.8747376,size.height*0.7477971);
    path_8.cubicTo(size.width*0.8705511,size.height*0.7427652,size.width*0.8545910,size.height*0.7390205,size.width*0.8483420,size.height*0.7415950);
    path_8.close();

    Paint paint_8_fill = Paint()..style=PaintingStyle.fill;
    paint_8_fill.color = Colors.white;
    canvas.drawPath(path_8,paint_8_fill);

    Path path_9 = Path();
    path_9.moveTo(size.width*0.7648583,size.height*0.8724241);
    path_9.cubicTo(size.width*0.7125582,size.height*0.8779241,size.width*0.7099800,size.height*0.8782751,size.width*0.6875130,size.height*0.8843602);
    path_9.cubicTo(size.width*0.6706935,size.height*0.8889240,size.width*0.6578027,size.height*0.8907963,size.width*0.6328803,size.height*0.8922006);
    path_9.cubicTo(size.width*0.6073441,size.height*0.8936048,size.width*0.5883147,size.height*0.8930197,size.width*0.5604459,size.height*0.8897431);
    path_9.cubicTo(size.width*0.5379790,size.height*0.8870517,size.width*0.5342959,size.height*0.8869346,size.width*0.5349097,size.height*0.8888070);
    path_9.cubicTo(size.width*0.5355236,size.height*0.8906793,size.width*0.5443630,size.height*0.8924346,size.width*0.5696537,size.height*0.8960623);
    path_9.cubicTo(size.width*0.6249002,size.height*0.9039026,size.width*0.6797785,size.height*0.9047218,size.width*0.7237302,size.height*0.8985197);
    path_9.cubicTo(size.width*0.7395676,size.height*0.8962963,size.width*0.7555277,size.height*0.8966474,size.width*0.7611752,size.height*0.8992218);
    path_9.cubicTo(size.width*0.7644900,size.height*0.9007431,size.width*0.7648583,size.height*0.9014452,size.width*0.7647355,size.height*0.9064771);
    path_9.cubicTo(size.width*0.7646127,size.height*0.9161898,size.width*0.7615435,size.height*0.9179451,size.width*0.7372350,size.height*0.9213387);
    path_9.cubicTo(size.width*0.7322014,size.height*0.9220408,size.width*0.7260629,size.height*0.9230940,size.width*0.7237302,size.height*0.9236791);
    path_9.arcToPoint(Offset(size.width*0.7077701,size.height*0.9255515),radius: Radius.elliptical(size.width*0.1350472, size.height*0.1287227),rotation: 0 ,largeArc: false,clockwise: true);
    path_9.arcToPoint(Offset(size.width*0.6881269,size.height*0.9280089),radius: Radius.elliptical(size.width*0.1507863, size.height*0.1437248),rotation: 0 ,largeArc: false,clockwise: false);
    path_9.cubicTo(size.width*0.6824795,size.height*0.9291791,size.width*0.6686064,size.height*0.9298812,size.width*0.6406148,size.height*0.9303493);
    path_9.cubicTo(size.width*0.6187617,size.height*0.9307004,size.width*0.6009601,size.height*0.9314025,size.width*0.6009601,size.height*0.9318706);
    path_9.cubicTo(size.width*0.6009601,size.height*0.9347961,size.width*0.6278467,size.height*0.9469662,size.width*0.6531374,size.height*0.9556258);
    path_9.cubicTo(size.width*0.6948793,size.height*0.9699023,size.width*0.7155046,size.height*0.9749342,size.width*0.7538089,size.height*0.9800831);
    path_9.cubicTo(size.width*0.7690324,size.height*0.9821895,size.width*0.8356967,size.height*0.9820724,size.width*0.8520251,size.height*0.9800831);
    path_9.cubicTo(size.width*0.8979411,size.height*0.9741150,size.width*0.9380870,size.height*0.9641683,size.width*0.9674291,size.height*0.9511790);
    path_9.cubicTo(size.width*0.9695162,size.height*0.9503598,size.width*0.9728310,size.height*0.9489556,size.width*0.9747953,size.height*0.9482535);
    path_9.cubicTo(size.width*0.9767596,size.height*0.9475513,size.width*0.9943157,size.height*0.9381897,size.width*1.013713,size.height*0.9275408);
    path_9.cubicTo(size.width*1.040232,size.height*0.9129132,size.width*1.048703,size.height*0.9076473,size.width*1.047721,size.height*0.9065941);
    path_9.cubicTo(size.width*1.046370,size.height*0.9049558,size.width*1.023412,size.height*0.8954772,size.width*1.005733,size.height*0.8892751);
    path_9.cubicTo(size.width*0.9914920,size.height*0.8842432,size.width*0.9890366,size.height*0.8840091,size.width*0.9563798,size.height*0.8859985);
    path_9.cubicTo(size.width*0.9113231,size.height*0.8886900,size.width*0.8808761,size.height*0.8890410,size.width*0.8575498,size.height*0.8869346);
    path_9.cubicTo(size.width*0.8328729,size.height*0.8847113,size.width*0.8221919,size.height*0.8820198,size.width*0.8107743,size.height*0.8755836);
    path_9.lineTo(size.width*0.8027942,size.height*0.8710198);
    path_9.lineTo(size.width*0.7886757,size.height*0.8711369);
    path_9.cubicTo(size.width*0.7809289,size.height*0.8712539,size.width*0.7702479,size.height*0.8718039,size.width*0.7648583,size.height*0.8724241);
    path_9.close();

    Paint paint_9_fill = Paint()..style=PaintingStyle.fill;
    paint_9_fill.color = Colors.white;
    canvas.drawPath(path_9,paint_9_fill);

    Path path_10 = Path();
    path_10.moveTo(size.width*0.5972647,size.height*1.127061);
    path_10.cubicTo(size.width*0.5949320,size.height*1.130104,size.width*0.5910034,size.height*1.134901,size.width*0.5885480,size.height*1.137827);
    path_10.cubicTo(size.width*0.5860926,size.height*1.140752,size.width*0.5787264,size.height*1.149646,size.width*0.5720968,size.height*1.157720);
    path_10.cubicTo(size.width*0.5654672,size.height*1.165795,size.width*0.5571188,size.height*1.175742,size.width*0.5536813,size.height*1.179954);
    path_10.cubicTo(size.width*0.5007673,size.height*1.243731,size.width*0.4997852,size.height*1.245018,size.width*0.5007673,size.height*1.246539);
    path_10.cubicTo(size.width*0.5013812,size.height*1.247358,size.width*0.5100978,size.height*1.247826,size.width*0.5272857,size.height*1.247826);
    path_10.lineTo(size.width*0.5528219,size.height*1.247826);
    path_10.lineTo(size.width*0.5784808,size.height*1.216231);
    path_10.cubicTo(size.width*0.5924766,size.height*1.198912,size.width*0.6046309,size.height*1.184869,size.width*0.6053675,size.height*1.184986);
    path_10.cubicTo(size.width*0.6061041,size.height*1.185103,size.width*0.6113833,size.height*1.190837,size.width*0.6170307,size.height*1.197624);
    path_10.cubicTo(size.width*0.6226781,size.height*1.204412,size.width*0.6344640,size.height*1.218571,size.width*0.6430580,size.height*1.228869);
    path_10.lineTo(size.width*0.6587725,size.height*1.247826);
    path_10.lineTo(size.width*0.6845543,size.height*1.247826);
    path_10.cubicTo(size.width*0.7061618,size.height*1.247826,size.width*0.7104588,size.height*1.247592,size.width*0.7109499,size.height*1.246071);
    path_10.cubicTo(size.width*0.7114410,size.height*1.245018,size.width*0.7072668,size.height*1.239401,size.width*0.7000233,size.height*1.231092);
    path_10.cubicTo(size.width*0.6935165,size.height*1.223720,size.width*0.6850454,size.height*1.213890,size.width*0.6809939,size.height*1.209093);
    path_10.cubicTo(size.width*0.6769425,size.height*1.204295,size.width*0.6709268,size.height*1.197273,size.width*0.6676120,size.height*1.193412);
    path_10.cubicTo(size.width*0.6642972,size.height*1.189550,size.width*0.6511608,size.height*1.174220,size.width*0.6383927,size.height*1.159476);
    path_10.cubicTo(size.width*0.6061041,size.height*1.121795,size.width*0.6057358,size.height*1.121444,size.width*0.6035260,size.height*1.121444);
    path_10.cubicTo(size.width*0.6024210,size.height*1.121444,size.width*0.5995973,size.height*1.124018,size.width*0.5972647,size.height*1.127061);
    path_10.close();

    Paint paint_10_fill = Paint()..style=PaintingStyle.fill;
    paint_10_fill.color = Colors.white;
    canvas.drawPath(path_10,paint_10_fill);

    Path path_11 = Path();
    path_11.moveTo(size.width*1.191350,size.height*1.136891);
    path_11.cubicTo(size.width*1.175758,size.height*1.155731,size.width*1.173916,size.height*1.158071,size.width*1.166918,size.height*1.166731);
    path_11.cubicTo(size.width*1.163972,size.height*1.170476,size.width*1.159798,size.height*1.175391,size.width*1.157711,size.height*1.177731);
    path_11.cubicTo(size.width*1.155623,size.height*1.180071,size.width*1.148748,size.height*1.188380,size.width*1.142364,size.height*1.196337);
    path_11.cubicTo(size.width*1.135980,size.height*1.204295,size.width*1.124563,size.height*1.218103,size.width*1.116951,size.height*1.227231);
    path_11.cubicTo(size.width*1.109339,size.height*1.236358,size.width*1.103201,size.height*1.244667,size.width*1.103078,size.height*1.245720);
    path_11.cubicTo(size.width*1.103078,size.height*1.247709,size.width*1.105165,size.height*1.247826,size.width*1.128860,size.height*1.247826);
    path_11.cubicTo(size.width*1.154150,size.height*1.247826,size.width*1.154764,size.height*1.247826,size.width*1.156974,size.height*1.245135);
    path_11.cubicTo(size.width*1.159675,size.height*1.242326,size.width*1.170970,size.height*1.228518,size.width*1.184106,size.height*1.212135);
    path_11.cubicTo(size.width*1.188771,size.height*1.206284,size.width*1.195524,size.height*1.197859,size.width*1.199207,size.height*1.193412);
    path_11.cubicTo(size.width*1.202890,size.height*1.188965,size.width*1.206328,size.height*1.185220,size.width*1.207064,size.height*1.185220);
    path_11.cubicTo(size.width*1.208415,size.height*1.185220,size.width*1.214430,size.height*1.191773,size.width*1.225848,size.height*1.205699);
    path_11.cubicTo(size.width*1.230268,size.height*1.211082,size.width*1.235792,size.height*1.217752,size.width*1.238125,size.height*1.220326);
    path_11.cubicTo(size.width*1.240458,size.height*1.222901,size.width*1.246596,size.height*1.230273,size.width*1.251630,size.height*1.236475);
    path_11.lineTo(size.width*1.260838,size.height*1.247826);
    path_11.lineTo(size.width*1.286865,size.height*1.247826);
    path_11.cubicTo(size.width*1.302088,size.height*1.247826,size.width*1.313138,size.height*1.247358,size.width*1.313629,size.height*1.246656);
    path_11.cubicTo(size.width*1.314120,size.height*1.245954,size.width*1.311664,size.height*1.242560,size.width*1.308472,size.height*1.238699);
    path_11.cubicTo(size.width*1.305280,size.height*1.234837,size.width*1.299265,size.height*1.227933,size.width*1.295213,size.height*1.223135);
    path_11.cubicTo(size.width*1.291162,size.height*1.218337,size.width*1.282568,size.height*1.208390,size.width*1.276184,size.height*1.201018);
    path_11.cubicTo(size.width*1.269800,size.height*1.193646,size.width*1.257277,size.height*1.179135,size.width*1.248561,size.height*1.168954);
    path_11.cubicTo(size.width*1.239844,size.height*1.158774,size.width*1.230268,size.height*1.147657,size.width*1.227444,size.height*1.144380);
    path_11.cubicTo(size.width*1.224620,size.height*1.141104,size.width*1.219096,size.height*1.134550,size.width*1.215167,size.height*1.129870);
    path_11.cubicTo(size.width*1.211238,size.height*1.125189,size.width*1.207187,size.height*1.121444,size.width*1.206082,size.height*1.121444);
    path_11.cubicTo(size.width*1.204977,size.height*1.121444,size.width*1.198470,size.height*1.128348,size.width*1.191350,size.height*1.136891);
    path_11.close();

    Paint paint_11_fill = Paint()..style=PaintingStyle.fill;
    paint_11_fill.color = Colors.white;
    canvas.drawPath(path_11,paint_11_fill);

    Path path_12 = Path();
    path_12.moveTo(size.width*0.3725952,size.height*1.124370);
    path_12.cubicTo(size.width*0.3545480,size.height*1.127880,size.width*0.3428849,size.height*1.133614,size.width*0.3317128,size.height*1.144497);
    path_12.cubicTo(size.width*0.3205407,size.height*1.155380,size.width*0.3137883,size.height*1.170476,size.width*0.3136655,size.height*1.184167);
    path_12.cubicTo(size.width*0.3136655,size.height*1.190135,size.width*0.3173487,size.height*1.203358,size.width*0.3210318,size.height*1.210848);
    path_12.cubicTo(size.width*0.3272930,size.height*1.223369,size.width*0.3443581,size.height*1.237060,size.width*0.3609321,size.height*1.242794);
    path_12.cubicTo(size.width*0.3739457,size.height*1.247358,size.width*0.3804525,size.height*1.247826,size.width*0.4329982,size.height*1.247826);
    path_12.lineTo(size.width*0.4843161,size.height*1.247826);
    path_12.lineTo(size.width*0.4843161,size.height*1.236908);
    path_12.cubicTo(size.width*0.4843161,size.height*1.231057,size.width*0.4846844,size.height*1.223451,size.width*0.4850527,size.height*1.220057);
    path_12.lineTo(size.width*0.4859121,size.height*1.213972);
    path_12.lineTo(size.width*0.4356991,size.height*1.213504);
    path_12.cubicTo(size.width*0.3813119,size.height*1.213036,size.width*0.3805753,size.height*1.213036,size.width*0.3705081,size.height*1.206366);
    path_12.cubicTo(size.width*0.3512332,size.height*1.193845,size.width*0.3547936,size.height*1.169387,size.width*0.3773833,size.height*1.159558);
    path_12.cubicTo(size.width*0.3827852,size.height*1.157334,size.width*0.3847495,size.height*1.157217,size.width*0.4334893,size.height*1.157568);
    path_12.lineTo(size.width*0.4840706,size.height*1.157919);
    path_12.lineTo(size.width*0.4845616,size.height*1.141068);
    path_12.cubicTo(size.width*0.4849300,size.height*1.131824,size.width*0.4849300,size.height*1.123983,size.width*0.4846844,size.height*1.123398);
    path_12.cubicTo(size.width*0.4838250,size.height*1.121912,size.width*0.3814347,size.height*1.122731,size.width*0.3725952,size.height*1.124370);
    path_12.close();

    Paint paint_12_fill = Paint()..style=PaintingStyle.fill;
    paint_12_fill.color = Colors.white;
    canvas.drawPath(path_12,paint_12_fill);

    Path path_13 = Path();
    path_13.moveTo(size.width*0.7596896,size.height*1.124370);
    path_13.cubicTo(size.width*0.7493769,size.height*1.126476,size.width*0.7421335,size.height*1.129753,size.width*0.7362405,size.height*1.134784);
    path_13.cubicTo(size.width*0.7240863,size.height*1.145316,size.width*0.7208943,size.height*1.164040,size.width*0.7287515,size.height*1.178901);
    path_13.cubicTo(size.width*0.7315753,size.height*1.184401,size.width*0.7398009,size.height*1.191305,size.width*0.7466760,size.height*1.194114);
    path_13.cubicTo(size.width*0.7558838,size.height*1.197859,size.width*0.7664420,size.height*1.198678,size.width*0.8087977,size.height*1.198678);
    path_13.cubicTo(size.width*0.8424367,size.height*1.198678,size.width*0.8496802,size.height*1.199029,size.width*0.8526267,size.height*1.200433);
    path_13.cubicTo(size.width*0.8588879,size.height*1.203593,size.width*0.8569236,size.height*1.210614,size.width*0.8491891,size.height*1.212720);
    path_13.cubicTo(size.width*0.8463654,size.height*1.213422,size.width*0.8227935,size.height*1.213890,size.width*0.7860852,size.height*1.213890);
    path_13.lineTo(size.width*0.7274011,size.height*1.213890);
    path_13.lineTo(size.width*0.7274011,size.height*1.228986);
    path_13.cubicTo(size.width*0.7274011,size.height*1.237294,size.width*0.7277694,size.height*1.244901,size.width*0.7281377,size.height*1.245954);
    path_13.cubicTo(size.width*0.7287515,size.height*1.247592,size.width*0.7356267,size.height*1.247826,size.width*0.7923465,size.height*1.247826);
    path_13.cubicTo(size.width*0.8598701,size.height*1.247826,size.width*0.8646581,size.height*1.247475,size.width*0.8761985,size.height*1.241858);
    path_13.arcToPoint(Offset(size.width*0.8874934,size.height*1.233316),radius: Radius.elliptical(size.width*0.05505015, size.height*0.05247206),rotation: 0 ,largeArc: false,clockwise: false);
    path_13.cubicTo(size.width*0.8949824,size.height*1.226178,size.width*0.8980516,size.height*1.218337,size.width*0.8980516,size.height*1.206518);
    path_13.cubicTo(size.width*0.8980516,size.height*1.190954,size.width*0.8910537,size.height*1.180774,size.width*0.8764441,size.height*1.175157);
    path_13.cubicTo(size.width*0.8693234,size.height*1.172465,size.width*0.8680957,size.height*1.172348,size.width*0.8213203,size.height*1.171763);
    path_13.cubicTo(size.width*0.7950475,size.height*1.171412,size.width*0.7724577,size.height*1.170710,size.width*0.7712300,size.height*1.170125);
    path_13.cubicTo(size.width*0.7673014,size.height*1.168369,size.width*0.7655826,size.height*1.163454,size.width*0.7679152,size.height*1.160061);
    path_13.cubicTo(size.width*0.7688974,size.height*1.158540,size.width*0.7777369,size.height*1.158189,size.width*0.8313874,size.height*1.157720);
    path_13.lineTo(size.width*0.8937547,size.height*1.157135);
    path_13.lineTo(size.width*0.8937547,size.height*1.123199);
    path_13.lineTo(size.width*0.8305280,size.height*1.122965);
    path_13.cubicTo(size.width*0.7814200,size.height*1.122848,size.width*0.7655826,size.height*1.123199,size.width*0.7596896,size.height*1.124370);
    path_13.close();

    Paint paint_13_fill = Paint()..style=PaintingStyle.fill;
    paint_13_fill.color = Colors.white;
    canvas.drawPath(path_13,paint_13_fill);

    Path path_14 = Path();
    path_14.moveTo(size.width*0.9173266,size.height*1.123316);
    path_14.cubicTo(size.width*0.9162216,size.height*1.124370,size.width*0.9162216,size.height*1.153274,size.width*0.9172038,size.height*1.155848);
    path_14.cubicTo(size.width*0.9178176,size.height*1.157486,size.width*0.9243245,size.height*1.157720,size.width*0.9771156,size.height*1.157720);
    path_14.cubicTo(size.width*1.021681,size.height*1.157720,size.width*1.036905,size.height*1.158071,size.width*1.039237,size.height*1.159242);
    path_14.arcToPoint(Offset(size.width*1.044516,size.height*1.164976),radius: Radius.elliptical(size.width*0.01518667, size.height*0.01447545),rotation: 0 ,largeArc: false,clockwise: true);
    path_14.cubicTo(size.width*1.046481,size.height*1.168837,size.width*1.046604,size.height*1.169657,size.width*1.044885,size.height*1.173401);
    path_14.cubicTo(size.width*1.041202,size.height*1.181710,size.width*1.041938,size.height*1.181593,size.width*0.9760107,size.height*1.182295);
    path_14.lineTo(size.width*0.9170810,size.height*1.182880);
    path_14.lineTo(size.width*0.9170810,size.height*1.247241);
    path_14.lineTo(size.width*0.9600506,size.height*1.247241);
    path_14.lineTo(size.width*0.9604189,size.height*1.232380);
    path_14.lineTo(size.width*0.9607872,size.height*1.217518);
    path_14.lineTo(size.width*1.000319,size.height*1.217167);
    path_14.cubicTo(size.width*1.039237,size.height*1.216699,size.width*1.039974,size.height*1.216699,size.width*1.050778,size.height*1.213539);
    path_14.cubicTo(size.width*1.064528,size.height*1.209444,size.width*1.070789,size.height*1.205933,size.width*1.078401,size.height*1.197976);
    path_14.cubicTo(size.width*1.086381,size.height*1.189667,size.width*1.089573,size.height*1.181593,size.width*1.089573,size.height*1.169774);
    path_14.cubicTo(size.width*1.089573,size.height*1.148008,size.width*1.075946,size.height*1.132444,size.width*1.050655,size.height*1.125306);
    path_14.cubicTo(size.width*1.044394,size.height*1.123550,size.width*1.035800,size.height*1.123199,size.width*0.9809215,size.height*1.122848);
    path_14.cubicTo(size.width*0.9464231,size.height*1.122731,size.width*0.9178176,size.height*1.122848,size.width*0.9173266,size.height*1.123316);
    path_14.close();

    Paint paint_14_fill = Paint()..style=PaintingStyle.fill;
    paint_14_fill.color = Colors.white;
    canvas.drawPath(path_14,paint_14_fill);

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}