part of "translation_service.dart";

final langZHTW = LocaleConfig(() => Lang.titleLanguagesZHTW.tr, Locale("zh_TW"));

const Map<String, String> zh_TW = {
  Lang.appName: 'Getx 快速上手',
  Lang.titleHome: '首頁',
  Lang.itemRouteManagement: '路由管理',
  Lang.routeManagementLine1:
  '如果你想在不引用上下文 context 的情況下使用 route/snackbar/dialog/bottomsheet, GetX 是你最佳的選擇, 參考下方代碼:\n\n在你的 MaterialApp 前面加上 \"Get\", 使之變成 GetMaterialApp',
  Lang.routeManagementLine2: '導航到一個新的頁面:',
  Lang.routeManagementLine3: '使用命名路由導航到新頁面. 更多關於命名路由的信息參考這裏',
  Lang.routeManagementLine4:
  '關閉 snackbar, dialog, bottomsheet 等任何使用 Navigator.pop(context); 代碼做關閉動作時，可以使用',
  Lang.routeManagementLine5:
  '跳轉下一個頁面且無需給上一個頁面傳值時 (一般用於啟動頁 SplashScreens, 登錄頁面 login screens 等.)',
  Lang.routeManagementLine6:
  '註意：實現上述功能你不必使用 context。這是 Get 路由管理的最大優勢之一。有了 Get 你可以沒有後顧之憂的在 controller 類裏面使用上述所有方法',
  Lang.titleDetails: '詳情頁面',
  Lang.titleLanguages: '語言切換',
  Lang.titleLanguagesAuto: '跟隨系統(@language)',
  Lang.titleLanguagesENUS: 'English, US',
  Lang.titleLanguagesZHCN: '中文, 中國',
  Lang.titleLanguagesZHTW: '中文, 中國臺灣',
};
