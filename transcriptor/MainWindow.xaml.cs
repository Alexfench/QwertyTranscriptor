using MahApps.Metro.Controls;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Runtime.InteropServices;
using System.Text.RegularExpressions;
using System.Windows;
using System.Windows.Input;

namespace transcriptor
{

    public partial class MainWindow : Window
    {                                                                                                                                  //отсюда невожимые с клавиатуры символы которые надо будет найти
        readonly string RU_Symbols = "ё1234567890-=йцукенгшщзхъ\\фывапролджэячсмитьбю.Ё!\"№;%:?*()_+ЙЦУКЕНГШЩЗХЪ/ФЫВАПРОЛДЖЭЯЧСМИТЬБЮ, –";
        readonly string EN_Symbols = "`1234567890-=qwertyuiop[]\\asdfghjkl;'zxcvbnm,./~!@#$%^&*()_+QWERTYUIOP{}|ASDFGHJKL:\"ZXCVBNM<>? –";
        int i, j, k;

        public MainWindow()
        {
            InitializeComponent();
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
            label.Content = $"Символов: {k}";

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
                            text.Text += Line[i];
                            break;
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
                            text.Text += Line[i];
                            break;
                        }
                    }
                }
                j = 0;
            }
        }
    }
}