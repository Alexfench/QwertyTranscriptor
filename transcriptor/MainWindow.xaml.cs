﻿using MahApps.Metro.Controls;
using MaterialDesignThemes.Wpf;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Runtime.InteropServices;
using System.Text.RegularExpressions;
using System.Threading;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Media3D;
using MaterialDesignColors;




namespace transcriptor
{

    public partial class MainWindow : Window
    {                                                                                                                                  //отсюда невожимые с клавиатуры символы которые надо будет найти
        readonly string RU_Symbols = "ё1234567890-=йцукенгшщзхъ\\фывапролджэячсмитьбю.Ё!\"№;%:?*()_+ЙЦУКЕНГШЩЗХЪ/ФЫВАПРОЛДЖЭЯЧСМИТЬБЮ, –\n";
        readonly string EN_Symbols = "`1234567890-=qwertyuiop[]\\asdfghjkl;'zxcvbnm,./~!@#$%^&*()_+QWERTYUIOP{}|ASDFGHJKL:\"ZXCVBNM<>? –\n";
        int i, j, k;

        public MainWindow()
        {
            InitializeComponent();

            overtoggle.IsChecked = Properties.Settings.Default.overing;
            theme.IsChecked = Properties.Settings.Default.theme;
            toggle.IsChecked = Properties.Settings.Default.txtdel;

            PrimaryColor primary = PrimaryColor.DeepPurple;
            Color primaryColor = SwatchHelper.Lookup[(MaterialDesignColor)primary];
            SecondaryColor secondary = SecondaryColor.Teal;
            Color secondaryColor = SwatchHelper.Lookup[(MaterialDesignColor)secondary];
            IBaseTheme baseTheme = Theme.Light;
            ITheme themee = Theme.Create(baseTheme, primaryColor, secondaryColor);
        }
        private void toggle_Checked(object sender, RoutedEventArgs e)
        {
            Properties.Settings.Default.txtdel = true;
            Properties.Settings.Default.Save();
        }
        private void toggle_UnChecked(object sender, RoutedEventArgs e)
        {
            Properties.Settings.Default.txtdel = false;
            Properties.Settings.Default.Save();
        }
        private void overtoggle_Checked(object sender, RoutedEventArgs e)
        {
            Properties.Settings.Default.overing = true;
            Properties.Settings.Default.Save();
            Topmost = true;

        }
        private void toggleButton_Unchecked(object sender, RoutedEventArgs e)
        {
            Properties.Settings.Default.overing = false;
            Properties.Settings.Default.Save();
            Topmost = false;

        }
        private void overtoggle2_Checked(object sender, RoutedEventArgs e)
        {
            Properties.Settings.Default.theme = true;
            Properties.Settings.Default.Save();

            var paletteHelper = new PaletteHelper();
            ITheme themee = paletteHelper.GetTheme();
            themee.SetBaseTheme(Theme.Dark);
            themee.SetPrimaryColor(Color.FromRgb(105, 176, 255));
            paletteHelper.SetTheme(themee);
        }
        private void toggleButton2_Unchecked(object sender, RoutedEventArgs e)
        {
            Properties.Settings.Default.theme = false;
            Properties.Settings.Default.Save();

            var paletteHelper = new PaletteHelper();
            ITheme themee = paletteHelper.GetTheme();
            themee.SetBaseTheme(Theme.Light);
            themee.SetPrimaryColor(Color.FromRgb(103, 58, 183));
            paletteHelper.SetTheme(themee);
        }

        private void But_Click_1(object sender, RoutedEventArgs e)
        {
            k = 0;
            string line = text.Text;

            List<char> RU = new List<char> { };
            List<char> EN = new List<char> { };
            List<char> Line = new List<char> { };

            foreach (char a in line)
            {
                text.Clear();
                k++;
                Line.Add(a);
            }
            foreach (char a in RU_Symbols)
            {
                RU.Add(a);
            }
            foreach (char a in EN_Symbols)
            {
                EN.Add(a);
            }

            for (i = 0; i <= k - 1; i++)
            {
                for (j = 0; j <= 96; j++)
                {
                    if (combo.SelectedIndex == 1)
                    {
                        if (Line[i] == EN[j])
                        {
                            text.Text += RU[j];
                            break;
                        }

                        if (Line[i] == RU[j])
                        {
                            if (toggle.IsChecked == false)
                            {
                                text.Text += Line[i];
                                break;
                            }
                            if (toggle.IsChecked == true)
                            {
                                break;
                            }
                        }
                    }

                    if (combo.SelectedIndex == 0)
                    {
                        if (Line[i] == RU[j])
                        {
                            text.Text += EN[j];
                            break;
                        }
                        if (Line[i] == EN[j])
                        {
                            if (toggle.IsChecked == false)
                            {
                                text.Text += Line[i];
                                break;
                            }
                            if (toggle.IsChecked == true)
                            {
                                break;
                            }
                        }
                    }
                }
                j = 0;
            }
        }
        private async void Button_Click(object sender, RoutedEventArgs e)
        {
            SnackbarOne.IsActive = false;
            SnackbarOne.IsActive = true;
            SnackbarOne.Message.Content = "Вставил";
            text.Text += Clipboard.GetText();
            await Task.Delay(1000);
            SnackbarOne.IsActive = false;

        }
        private async void Button_Click_1(object sender, RoutedEventArgs e)
        {
            SnackbarOne.IsActive = false;
            SnackbarOne.IsActive = true;
            SnackbarOne.Message.Content = "Скопировал";
            Clipboard.SetText(text.Text);
            await Task.Delay(1000);
            SnackbarOne.IsActive = false;
        }
        private async void Button_Click_2(object sender, RoutedEventArgs e)
        {
            SnackbarOne.IsActive = false;
            SnackbarOne.IsActive = true;
            SnackbarOne.Message.Content = "Очистил";
            MaterialDesignThemes.Wpf.HintAssist.SetHint(text, "Вставьте эльфийский текст");
            text.Text = null;
            await Task.Delay(1000);
            SnackbarOne.IsActive = false;
        }
        private void text_TextChanged(object sender, System.Windows.Controls.TextChangedEventArgs e)
        {
            string line2 = text.Text;

            List<char> Line2 = new List<char> { };

            foreach (char a in line2)
            {
                Line2.Add(a);
            }
            HintAssist.SetHint(text, $"Символов: {Line2.Count}");
        }
    }
}