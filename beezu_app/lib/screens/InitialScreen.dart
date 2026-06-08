import 'package:flutter/material.dart';
import 'LoginScreen.dart';
class InitialScreen extends StatefulWidget {
	const InitialScreen({super.key});
	@override
	InitialScreenState createState() => InitialScreenState();
}
class InitialScreenState extends State<InitialScreen> {
	@override
	Widget build(BuildContext context) {
		return Scaffold(
			body: SafeArea(
				child: Container(
					constraints: const BoxConstraints.expand(),
					color: Color(0xFFFFFFFF),
					child: Column(
						crossAxisAlignment: CrossAxisAlignment.start,
						children: [
							Expanded(
								child: IntrinsicHeight(
									child: Container(
										color: Color(0xFFFFFBED),
										width: double.infinity,
										height: double.infinity,
										child: SingleChildScrollView(
											padding: const EdgeInsets.only( top: 637),
											child: Column(
												crossAxisAlignment: CrossAxisAlignment.start,
												children: [
													IntrinsicHeight(
														child: Container(
															decoration: BoxDecoration(
																borderRadius: BorderRadius.only(
																	topLeft: Radius.circular(32),
																	topRight: Radius.circular(32),
																),
																color: Color(0xFFF8D253),
															),
															padding: const EdgeInsets.symmetric(vertical: 25),
															width: double.infinity,
															child: Column(
																children: [
																	Container(
																		margin: const EdgeInsets.only( bottom: 43),
																		child: Text(
																			"Você não precisa estudar sozinho",
																			style: TextStyle(
																				color: Color(0xFF49290C),
																				fontSize: 14,
																				fontWeight: FontWeight.bold,
																			),
																		),
																	),
																	IntrinsicWidth(
																		child: IntrinsicHeight(
																			child: Column(
																				children: [
																					InkWell(
                                            onTap: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) => const LoginScreen(),
                                                ),
                                              );
                                            },
                                            child: IntrinsicWidth(
																							child: IntrinsicHeight(
																								child: Container(
																									decoration: BoxDecoration(
																										borderRadius: BorderRadius.circular(3),
																										color: Color(0xFF49290C),
																									),
																									padding: const EdgeInsets.only( top: 10, bottom: 10, left: 21, right: 21),
																									margin: const EdgeInsets.only( bottom: 21),
																									child: Column(
																										crossAxisAlignment: CrossAxisAlignment.start,
																										children: [
																											Text(
																												"COMEÇAR AGORA",
																												style: TextStyle(
																													color: Color(0xFFF4F4F2),
																													fontSize: 14,
																													fontWeight: FontWeight.bold,
																												),
																											),
																										]
																									),
																								),
																							),
																						),
																					),
																					InkWell(
                                            onTap: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) => const LoginScreen(),
                                                ),
                                              );
                                            },
                                            child: IntrinsicWidth(
																							child: IntrinsicHeight(
																								child: Container(
																									decoration: BoxDecoration(
																										border: Border.all(
																											color: Color(0xFF171706),
																											width: 1,
																										),
																										borderRadius: BorderRadius.circular(3),
																									),
																									padding: const EdgeInsets.only( top: 10, bottom: 10, left: 22, right: 22),
																									child: Column(
																										crossAxisAlignment: CrossAxisAlignment.start,
																										children: [
																											Text(
																												"Entrar",
																												style: TextStyle(
																													color: Color(0xFF171706),
																													fontSize: 14,
																													fontWeight: FontWeight.bold,
																												),
																											),
																										]
																									),
																								),
																							),
																						),
																					),
																				]
																			),
																		),
																	),
																]
															),
														),
													),
												],
											)
										),
									),
								),
							),
						],
					),
				),
			),
		);
	}
}