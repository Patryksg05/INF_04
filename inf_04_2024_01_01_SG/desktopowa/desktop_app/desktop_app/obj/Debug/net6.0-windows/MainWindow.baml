   M S B A M L   `   `   `  ����F  Bdesktop_app, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null)clr-namespace:desktop_appdesktop_app  5   	       desktop_app.MainWindow   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   +localclr-namespace:desktop_app     5   	     � Title$:  4Wprowadzenie danych do paszportu. Wykonał: 00000000��5   	   $	��400��5	   	   $	��800��5
   	   
�����_�.��5      �  � ColumnDefinitions 5   
   �� 5      �� 5       � RowDefinitions 5   
   �� 5      �� 5      .+�5   
   ��  �� Orientation$ Vertical=�5      $��Center=�5      $��Center=�5      .+�5      �� $ 
Horizontal=�6   $��0 0 0 20q�62   .+�5      �� $��Numer��5      $��14(�5      �� 5       -   5         ��Name$ numberEditText��5!      $	��230��5"      $��50 0 0 0q�5#      
�������5%      5&      �� 5(      $ 
Horizontal=�6   $��0 0 0 20q�62   .+�5)      �� $��Imię��5*      $��14(�5+      �� 5,      -   5        $ nameEditText��5-      $	��230��5.      $��66 0 0 0q�5/      
�������50      51      �� 53      $ 
Horizontal=�6   $��0 0 0 20q�62   .+�54      �� $��Nazwisko��55      $��14(�56      �� 57      -   5        $ surnameEditText��58      $	��230��59      $��33 0 0 0q�5:      
�������5;      5<      5>      �� 5@   
   $��1��5A      $��
Kolor oczu��5B      $��Center=�5C      $��Center=�5D      $	��330��5E      $��14(�5F      .��5H      �� $ Vertical=�6   $��15q�60   .+�5J      	� -   5         	�Name$ blueRadioBtn��5K      $��
niebieskie��5L       	� 	GroupName$  ��5M      $��5q�5N      $��14(�5O      	� 5Q      -   5        $ greenRadioBtn��5R      $��zielone��5S      $��5q�5T      $��14(�5U      	� 5W      -   5        $ darkRadioBtn��5X      $��piwne��5Y      $��5q�5Z       d� 	IsChecked$
 TrueY�5[      $��14(�5\      5^      5`      �� 5b   
   $ Vertical=�5c      $��1��5d      $��2��5e      .+�5g      �� $ 
Horizontal=�5h      $	��305��5i      $��Center=�5j      $��Center=�5k      .+�5m      �� -   5         ��Name$ personImage��5n      $%��../../materialy/000-zdjecie.jpg��5o      $	��180��5p      �� 5r      -   5        $ 
touchImage��5s      $$��../../materialy/000-odcisk.jpg��5t      $��30 0 0 0q�5u      $	��180��5v      5x      �� 5z      $��Center=�5{      $��Center=�5|      .+�5~      �� -	   5        	 ��Name$	 btnClickMethod��5      $��OK��5�      $	��230��5�      $��40��5�      
�������5�      5�      5�      5�      5�      