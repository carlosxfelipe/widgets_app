import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const MenuItem(
      {required this.title,
      required this.subTitle,
      required this.link,
      required this.icon});
}

const appMenuItems = <MenuItem>[
  MenuItem(
      title: "Contador Riverpod",
      subTitle: "Introdução a Riverpod",
      link: "/counter-river",
      icon: Icons.add),
  MenuItem(
      title: "Botões",
      subTitle: "Vários botões em Flutter",
      link: "/buttons",
      icon: Icons.smart_button_outlined),
  MenuItem(
      title: "Cards",
      subTitle: "Um container estilizado",
      link: "/cards",
      icon: Icons.credit_card),
  MenuItem(
      title: "Indicadores de progresso",
      subTitle: "Comuns e controlados",
      link: "/progress",
      icon: Icons.refresh_rounded),
  MenuItem(
      title: "Snackbars e diálogos",
      subTitle: "Indicadores na tela",
      link: "/snackbars",
      icon: Icons.info_outline),
  MenuItem(
      title: "Animated Container",
      subTitle: "Stateful widget animado",
      link: "/animated",
      icon: Icons.check_box_outline_blank_outlined),
  MenuItem(
      title: "UI Controls + Tiles",
      subTitle: "Uma série de controles de Flutter",
      link: "/ui-controls",
      icon: Icons.car_rental_outlined),
  MenuItem(
      title: "Introdução ao aplicativo",
      subTitle: "Pequeno tutorial introdutório",
      link: "/tutorial",
      icon: Icons.help_outline_rounded),
  MenuItem(
      title: "InfiniteScroll e Pull",
      subTitle: "Listas infinitas e pull to refresh",
      link: "/infinite",
      icon: Icons.list_alt_rounded),
  MenuItem(
      title: "Seletor de temas",
      subTitle: "Vários temas para o aplicativo",
      link: "/theme-changer",
      icon: Icons.color_lens_outlined),
];
