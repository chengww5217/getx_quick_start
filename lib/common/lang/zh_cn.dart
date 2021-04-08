part of "translation_service.dart";

const Map<String, String> zh_CN = {
  Keys.appName: 'Getx 快速上手',
  Keys.titleHome: '首页',
  Keys.itemRouteManagement: '路由管理',
  Keys.routeManagementLine1:
      '如果你想在不引用上下文 context 的情况下使用 route/snackbar/dialog/bottomsheet, GetX 是你最佳的选择, 参考下方代码:\n\n在你的 MaterialApp 前面加上 \"Get\", 使之变成 GetMaterialApp',
  Keys.routeManagementLine2: '导航到一个新的页面:',
  Keys.routeManagementLine3: '使用命名路由导航到新页面. 更多关于命名路由的信息参考这里',
  Keys.routeManagementLine4:
      '关闭 snackbar, dialog, bottomsheet 等任何使用 Navigator.pop(context); 代码做关闭动作时，可以使用',
  Keys.routeManagementLine5:
      '跳转下一个页面且无需给上一个页面传值时 (一般用于启动页 SplashScreens, 登录页面 login screens 等.)',
  Keys.routeManagementLine6:
      '注意：实现上述功能你不必使用 context。这是 Get 路由管理的最大优势之一。有了 Get 你可以没有后顾之忧的在 controller 类里面使用上述所有方法',
  Keys.titleDetails: '详情页面',
};