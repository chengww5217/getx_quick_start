part of "translation_service.dart";

final langZHCN = LocaleConfig(() => Lang.titleLanguagesZHCN.tr, Locale("zh_CN"));

const Map<String, String> zh_CN = {
  Lang.appName: 'Getx 快速上手',
  Lang.titleHome: '首页',
  Lang.itemRouteManagement: '路由管理',
  Lang.routeManagementLine1:
      '如果你想在不引用上下文 context 的情况下使用 route/snackbar/dialog/bottomsheet, GetX 是你最佳的选择, 参考下方代码:\n\n在你的 MaterialApp 前面加上 \"Get\", 使之变成 GetMaterialApp',
  Lang.routeManagementLine2: '导航到一个新的页面:',
  Lang.routeManagementLine3: '使用命名路由导航到新页面. 更多关于命名路由的信息参考这里',
  Lang.routeManagementLine4:
      '关闭 snackbar, dialog, bottomsheet 等任何使用 Navigator.pop(context); 代码做关闭动作时，可以使用',
  Lang.routeManagementLine5:
      '跳转下一个页面且无需给上一个页面传值时 (一般用于启动页 SplashScreens, 登录页面 login screens 等.)',
  Lang.routeManagementLine6:
      '注意：实现上述功能你不必使用 context。这是 Get 路由管理的最大优势之一。有了 Get 你可以没有后顾之忧的在 controller 类里面使用上述所有方法',
  Lang.titleDetails: '详情页面',
  Lang.titleLanguages: '语言切换',
  Lang.titleLanguagesAuto: '跟随系统(@language)',
  Lang.titleLanguagesENUS: 'English, US',
  Lang.titleLanguagesZHCN: '中文, 中国',
  Lang.titleLanguagesZHTW: '中文, 中國臺灣',
};
