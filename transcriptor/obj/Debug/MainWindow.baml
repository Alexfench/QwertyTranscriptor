   M S B A M L   `   `   `  ����G  Ctranscriptor, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:transcriptortranscriptor  5   	   O Kmscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e0891&clr-namespace:System;assembly=mscorlibSystem 5   	       transcriptor.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   ,localclr-namespace:transcriptor     5   	   9System&clr-namespace:System;assembly=mscorlib     5   	   V RMaterialDesignThemes.Wpf, Version=3.1.3.1513, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	      MaterialDesignBody#���   5
   	   $��Regular"�5   	   $��13(�5   	   &   System.Windows.Media.TextOptions    TextFormattingMode$  Ideal=�5   	      TextRenderingMode$
 Auto=�5   	     MaterialDesignPaper#���  5   	     MaterialDesignFont#���  5   	    � Title$ Transcriptor��5   	   $	��458��5   	   $	��420��5   	    � Icon$ favicon.ico��5   	    � 
ResizeMode$ CanMinimize=�5   	   .��5      � $��10q�6   .+�5   
   �� -   5         ��Name$ combo��5      $��	10,0,0,10q�5      $
��Left=�5      $��Bottom=�5      $	��179��5      $��32��5       �� SelectedIndex$ 1��5       .@�5!      �� $��Russian → English��6   �� 5"      $��English → Russian ��6   5#      �� 5$   
   -   5         ��Name$
 text��5$       * &MaterialDesignOutlinedTextFieldTextBox#��[ 5%       �� AcceptsReturn . 	 �� TextWrapping$
	 Wrap=�5'      "
 �� VerticalScrollBarVisibility$

 Auto=�5(      )  #MaterialDesignThemes.Wpf.HintAssist   Hint$6 0Вставьте эльфийский текст��5)         FloatingScale$ 1Q�5*      $��10,38,10,99q�5,      {�5+      �� *	IsChecked+ �� ElementName$; 5MaterialDesignOutlinedTextFieldTextBoxEnabledComboBox��5,      d� 5-   
   -   5         d�Name$ toggle��5-       $  MaterialDesignSwitchToggleButton#��[ 5.       � ToolTip$  Default ToggleButton Style��5/      $��	10,0,0,55q�50       d� 	IsChecked$
 TrueY�51      $
��Left=�52      $��Bottom=�53      $��22��54      $��Center=�55      $��Bottom=�56      $��43��57      �� 58   
   $*��$Удалять другой язык��6   $
��Left=�59      $��	58,0,0,55q�5:      $��23��5;      $��Stretch=�5<      $��Bottom=�5=      $��Stretch=�5>      �� 5?   
   -   5         * &MaterialDesignFloatingActionMiniButton#��[ 5?      $��Right=�5@      $ Скопировать��5A      $��	0,0,55,47q�5B      $��Bottom=�5C      .��5E      '  !MaterialDesignThemes.Wpf.PackIcon     Kind$ ContentCopy=�6&   $��24��5F   &   $��24��5G   &   5H      �� 5I   
   -   5        #��[ 5I      $��Right=�5J      $ Очистить��5K      $��	0,0,10,47q�5L      $��Bottom=�5M      .��5O        $ Delete=�6&   $��24��5P   &   $��24��5Q   &   5R      �� 5S   
   -   5        #��[ 5S      $��Right=�5T      $ Вставить��5U      $��
0,0,100,47q�5V      $��Bottom=�5W      .��5Y        $ ContentPaste=�6&   $��24��5Z   &   $��24��5[   &   5]      �� 5^   
   -   5         ��Name$	 but��5^      $ Выполнить��5_      $��Выполнить��5`      $��	0,0,10,10q�5a      $	��130��5b      $��32��5d      $��Center=�5e      $��Right=�5f      $��Bottom=�5g      $��Center=�5h      '  !MaterialDesignThemes.Wpf.Snackbar  5i   
   -   5          Name$ SnackbarOne��5k   "      MessageF  @MaterialDesignThemes.Wpf.Converters.SnackbarMessageTypeConverter$ скопировал 5i   "      IsActive .  5k   "   d� 5l   
   -	   5        $ 
overtoggle��5l      #��[ 5m      $( "поверх других окон��5n      $��	10,10,0,0q�5o      $
��Left=�5p      $	��Top=�5q      $��18��5r      $��40��5s      .��5v        $	 Pin=�6&    J� RenderTransformOrigin$ .5,.5&�5w   &   z�5x      �� 5y       �� Angle$ 45Q�6&   5{      1  +MaterialDesignThemes.Wpf.ToggleButtonAssist   	OnContent 5|        5}      $	 Pin=�6*   5      �� 5�   
   $(��"Поверх других окон��6   $
��Left=�5�      $��55,8,0,0q�5�      $	��Top=�5�      d� 5�   
   -
   5        $ overtoggle_Copy��5�      #��[ 5�      $ темная тема��5�      $��
188,10,0,0q�5�      $
��Left=�5�      $	��Top=�5�      $��18��5�      $��37��5�       5�        5�      $ MoonWaningCrescent=�6*   .��5�        $ WeatherSunny=�6&   $ .5,.5&�5�   &   z�5�      �� 5�      $ 45Q�6&   5�      5�      5�      5�      