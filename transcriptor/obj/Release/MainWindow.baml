   M S B A M L   `   `   `  ���� G  Ctranscriptor, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:transcriptortranscriptor  O Kmscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e0891&clr-namespace:System;assembly=mscorlibSystem     transcriptor.MainWindow   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     ,localclr-namespace:transcriptor     9System&clr-namespace:System;assembly=mscorlib     V RMaterialDesignThemes.Wpf, Version=3.1.3.1513, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  -     �Name$  window��   MaterialDesignBody#���   $��Regular"�$��13(�&   System.Windows.Media.TextOptions   TextFormattingMode$ Ideal=�   TextRenderingMode$
 Auto=�  MaterialDesignPaper#���    MaterialDesignFont#���   � Title$ Transcriptor��$	��458��$	��420�� � Icon$ favicon.ico��
���   � J� OpacityMask
 �   � � 
ResizeMode$ CanMinimize=�.��� -    �Name$
 grid��$��10q�.+��� -    ��Name$ combo��$��	10,0,0,55q�$
��Left=�$��Bottom=�$	��179��$��32��	 �� SelectedIndex$	 1�����	#00000000.@��� -   
 ��Name$
 item1��$��Russian → English��
������ �� -   $
 item2��$��English → Russian ���� -    ��Name$
 text�� * &MaterialDesignOutlinedTextFieldTextBox#��[  �� AcceptsReturn .  �� TextWrapping$
 Wrap=�" �� VerticalScrollBarVisibility$
 Auto=�)  #MaterialDesignThemes.Wpf.HintAssist   Hint$6 0Вставьте эльфийский текст��   FloatingScale$ 1Q�$��10,45,10,99q�{��� *	IsChecked+ �� ElementName$; 5MaterialDesignOutlinedTextFieldTextBoxEnabledComboBox��d� -    d�Name$ toggle�� $  MaterialDesignSwitchToggleButton#��[  � ToolTip$* $Удалять другой язык��$��	10,10,0,0q�$
��Left=�$	��Top=�$��18��$��Center=�$��Center=�$��37��1  +MaterialDesignThemes.Wpf.ToggleButtonAssist   	OnContent '  !MaterialDesignThemes.Wpf.PackIcon     Kind$ Delete=�.��  $ 	DeleteOff=� J� RenderTransformOrigin$ .5,.5&�z���  �� Angle$ 0Q��� -    * &MaterialDesignFloatingActionMiniButton#��[ $��Right=�$ Скопировать��$��	0,0,55,47q�$��Bottom=�.��  $ ContentCopy=�$��24��$��24���� -	   #��[ $��Right=�$ Очистить��$��	0,0,10,47q�$��Bottom=�.��  $ Delete=�$��24��$��24���� -
   #��[ $��Right=�$ Вставить��$��
0,0,100,47q�$��Bottom=�.��  $ ContentPaste=�$��24��$��24���� -    ��Name$	 but��$ Выполнить��$��Выполнить��$��	0,0,10,10q�$	��130��$��32��$��Center=�$��Right=�$��Bottom=�$��Center=�'  !MaterialDesignThemes.Wpf.Snackbar  -     Name$ SnackbarOne��   MessageF  @MaterialDesignThemes.Wpf.Converters.SnackbarMessageTypeConverter$ скопировал    IsActive .  $
��Left=�$	��190��$	��190��d� -   $ 
overtoggle��#��[ $( "поверх других окон��$��	52,10,0,0q�$
��Left=�$	��Top=�$��18��$��40��   $	 Pin=�.��  $	 Pin=�$ .5,.5&�z��� $ 45Q�d� -   $ theme��#��[ $ темная тема��$��	97,10,0,0q�$
��Left=�$	��Top=�$��18��$��37��   $ MoonWaningCrescent=�.��  $ WhiteBalanceSunny=�$ .5,.5&�z��� $ 45Q�