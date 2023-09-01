import 'package:flutter/material.dart';

class CommonMenu {
  String id;
  String name;
  IconData icon;

  CommonMenu({required this.id, required this.name, required this.icon});

  static List<CommonMenu> loadCommonMenus() {
    return [
      CommonMenu(id: 'account', name: '账号设置', icon: Icons.fingerprint),
      CommonMenu(id: 'bug', name: '意见征集', icon: Icons.bug_report_outlined),
      CommonMenu(id: 'about', name: '关于我们', icon: Icons.highlight_alt),
      CommonMenu(
          id: 'upgrade', name: '版本升级', icon: Icons.rocket_launch_outlined),
      // CommonMenu(id: 'evaluate', name: '评价管理', icon: Icons.commute_outlined),
      // CommonMenu(
      //     id: 'dislike', name: '屏蔽司机', icon: Icons.thumb_down_alt_outlined),
      CommonMenu(id: 'rule', name: '平台规则', icon: Icons.rule),
      CommonMenu(
          id: 'donate', name: '捐赠支持', icon: Icons.card_giftcard_outlined),
      // CommonMenu(id: 'role', name: '切换身份', icon: Icons.swipe_vertical_outlined),
      CommonMenu(id: 'exit', name: '退出登录', icon: Icons.settings_power)
    ];
  }

  static List<CommonMenu> loadAccountMenus() {
    return [
      CommonMenu(id: 'profile', name: '基本资料', icon: Icons.person_pin_outlined),
      CommonMenu(id: 'mobile', name: '手机换绑', icon: Icons.phonelink_erase),
      CommonMenu(id: 'password', name: '修改密码', icon: Icons.vpn_key_outlined),
      CommonMenu(id: 'delete', name: '注销账号', icon: Icons.person_remove_outlined)
    ];
  }
}
