   M S B A M L   `   `   `  ����M  IPassword Generator, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:Password_GeneratorPassword_Generator  5   	   #    Password_Generator.MainWindow   5   	   W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   2local clr-namespace:Password_Generator     5   	   -   5          � Title$  Password Generator��5   	   $	��400��6$   $	��600��61    � 
ResizeMode$ CanMinimize=�6=    � WindowStartupLocation$ CenterScreen=�5	   	   ���	#99262F49 � AllowsTransparency$
 True��5
        � WindowStyle$
 None=�6:   $��1q�6M   ���	#FF0E0D4E���#EEEE.��5      � .+�5   
   �� -   5         ��Name$ checkBoxLowercase��5      $P��JБукви нижнього регістра: (abcdefghijklmnopqrstuvwxyz)��6.   $
��Left=�6n   $��	30,66,0,0q�6�   $	��Top=�6�   $��16(�6�   ���#EEEE$��Cascadia Mono SemiLight)�6�   �� 5   
   -   5        $ checkBoxUpperCase��5      $P��JБукви вернього регістра: (ABCDEFGHIJKLMNOPQRSTUVWXYZ)��6.   $
��Left=�6n   $��	30,86,0,0q�6�   $	��Top=�6�   $��16(�6�   ���#EEEE$��Cascadia Mono SemiLight)�6�   �� 5   
   -   5        $ checkBoxDigits��5      $��Цифри: (0123456789)��6+   $
��Left=�6I   $��
30,106,0,0q�6d   $	��Top=�6x   $��16(�6�   ���#EEEE$��Cascadia Mono SemiLight)�6�   �� 5   
   -   5        $ checkBoxSpecial��5      $4��.Спеціальні символи: (%$#@!?):��6,   $
��Left=�6T   $��
30,126,0,0q�6o   $	��Top=�6�   $��16(�6�   ���#EEEE$��Cascadia Mono SemiLight)�6�   �� 5   
   -   5        $ checkBoxEvenMoreSpecial��5      $I��CДодаткові спец. символи: (():;[]{}<>,./\|*+-_):��64   $
��Left=�6q   $��
30,149,0,0q�6�   $	��Top=�6�   $��16(�6�   ���#EEEE$��Cascadia Mono SemiLight)�6�   �� 5   
   -   5         ��Name$ textBoxPasswordLength��5      $
��Left=�61   $��27��6L   $��178,187,0,0q�6X    �� TextWrapping$
 Wrap=�6m   $��8��6�   $	��Top=�6�   $��69��6�   $��16(�6�   ���	#72262F49$��1q�5   )   ���	#FF0E0D4E���#EEEE$��Cascadia Mono SemiLight)�6h    �� TextAlignment$ Center=�6�   �� 5   
   $"��Довжина паролю:��6   $
��Left=�6*   $��
30,183,0,0q�6E   $	��Top=�6Y   $��16(�6q   ���#EEEE$��Cascadia Mono SemiLight)�6�   �� 5   
   -   5        	 ��Name$	 ButtonGenerate��5      $��Згенерувати��6)   $��460,236,33,0q�6?   $	��Top=�6U   $��69��6�   $��16(�6�   ���	#72262F49$��1q�5   (   ���	#FF0E0D4E���#EEEE$��Cascadia Mono SemiLight)�6g   5      �� 5   
   -	   5        $ textBoxPassword��5      $
��Left=�6+   $	��138��6F   $��
30,236,0,0q�6S   $
 Wrap=�6g   $�� ��6{   $	��Top=�6�   $	��410��6�   $��16(�6�   ���	#72262F49$��1q�5   )   ���	#FF0E0D4E���#EEEE
 �� 
IsReadOnly$

 True��6h   $��Cascadia Mono SemiLight)�6z   �� 5   
   -
   5        $	 ButtonReturn��5      $��Зкопіювати��6'   $��460,310,33,0q�6<   $	��Top=�6R   $��16(�6�   ���	#72262F49$��1q�5   (   ���	#FF0E0D4E���#EEEE$��64��6g   $��Cascadia Mono SemiLight)�6s   �� 5   
   $P��JВиберіть з яких даних генерувати пароль:��6   $��	30,22,0,0q�6C   $	��Top=�6V   $��22(�6n   ���#EEEE$
��Left=�6�   $	��535��6�   $��Cascadia Mono SemiLight)�6�   �� 5   
   -   5         ��Name$ Close_Button��5      $	��✕��6&   $
��Left=�62   $	��Top=�6N   $��18(�6f   
�������$��
570,-4,0,0q�6�   $��31��6�   6�   5      5       