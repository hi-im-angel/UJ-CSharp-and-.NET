   M S B A M L   `   `   `  ����K  GStock Simulation, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null3clr-namespace:Stock_SimulationStock_Simulation  5   	   !    Stock_Simulation.MainWindow   5   	   W SPresentationCore, Version=6.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   0localclr-namespace:Stock_Simulation     5   	     � Title$  Stock Simulation��5   	   $	��535��6"   $	��510��6/   .��5
      �  � ShowGridLines$ False��6    � RowDefinitions 5      �� 5      $	��250 �6   6"   �� 5      $	��250 �6   6"    � ColumnDefinitions 5      �� 5      $	��250 �6   �� 5      $	��250 �6   .+�5      �� -   5        $��rect1��5      $��0��6   $��0��6+   $
��auto��68   $
��auto��6E   
���  ��$��Stretch=�6^   $��Stretch=�6|   �� 5      -   5        $��
nameLabel1��5   
   $��50(�6   $��0��6*   $��0��6:   $
��auto��6G   $
��auto��6T   $��Center=�6b   $	��Top=�6   �� 5      -   5        $��currPriceLabel1��5   
   $��50(�6!   $��0��6/   $��0��6?   $
��auto��6L   $
��auto��6Y   $��Center=�6g   $��Center=�6�   �� 5      -   5        $��changePriceLabel1��5   
   $��50(�6#   $��0��61   $��0��6A   $
��auto��6N   $
��auto��6[   $��Center=�6i   $��Bottom=�6�   �� 5      -   5        $��rect2��5      $��1��6   $��0��6+   $
��auto��68   $
��auto��6E   
��� ���$��Stretch=�6a   $��Stretch=�6   �� 5      -   5        $��
nameLabel2��5   
   $��50(�6   $��1��6*   $��0��6:   $
��auto��6G   $
��auto��6T   $��Center=�6b   $	��Top=�6   �� 5      -   5        $��currPriceLabel2��5   
   $��50(�6!   $��1��6/   $��0��6?   $
��auto��6L   $
��auto��6Y   $��Center=�6g   $��Center=�6�   �� 5      -   5        $��changePriceLabel2��5   
   $��50(�6#   $��1��61   $��0��6A   $
��auto��6N   $
��auto��6[   $��Center=�6i   $��Bottom=�6�   �� 5       -	   5        $��rect3��5       $��0��6   $��1��6+   $
��auto��68   $
��auto��6E   
��� ���$��Stretch=�6a   $��Stretch=�6   �� 5!      -
   5        $��
nameLabel3��5!   
   $��50(�6   $��0��6*   $��1��6:   $
��auto��6G   $
��auto��6T   $��Center=�6b   $	��Top=�6   �� 5"      -   5        $��currPriceLabel3��5"   
   $��50(�6!   $��0��6/   $��1��6?   $
��auto��6L   $
��auto��6Y   $��Center=�6g   $��Center=�6�   �� 5#      -   5        $��changePriceLabel3��5#   
   $��50(�6#   $��0��61   $��1��6A   $
��auto��6N   $
��auto��6[   $��Center=�6i   $��Bottom=�6�   �� 5%      -   5        $��rect4��5%      $��1��6   $��1��6+   $
��auto��68   $
��auto��6E   
������$��Stretch=�6e   $��Stretch=�6�   �� 5&      -   5        $��
nameLabel4��5&   
   $��50(�6   $��1��6*   $��1��6:   $
��auto��6G   $
��auto��6T   $��Center=�6b   $	��Top=�6   �� 5'      -   5        $��currPriceLabel4��5'   
   $��50(�6!   $��1��6/   $��1��6?   $
��auto��6L   $
��auto��6Y   $��Center=�6g   $��Center=�6�   �� 5(      -   5        $��changePriceLabel4��5(   
   $��50(�6#   $��1��61   $��1��6A   $
��auto��6N   $
��auto��6[   $��Center=�6i   $��Bottom=�6�   5*      5,      