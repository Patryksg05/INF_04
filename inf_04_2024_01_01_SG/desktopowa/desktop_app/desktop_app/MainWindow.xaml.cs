using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace desktop_app
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }

        private void btnClickMethod_Click(object sender, RoutedEventArgs e)
        {
            if (nameEditText.Text != string.Empty && surnameEditText.Text != string.Empty)
            {
                string radioBtnText = string.Empty;

                if (blueRadioBtn.IsChecked == true) radioBtnText = "niebieskie";
                else if (greenRadioBtn.IsChecked == true) radioBtnText = "zielone";
                else if (darkRadioBtn.IsChecked == true) radioBtnText = "piwne";

                MessageBox.Show(nameEditText.Text + " " + surnameEditText.Text + " kolor oczu " + radioBtnText);
            }
            else
                MessageBox.Show("Wprowadź dane");
        }

        private void numberEditText_TextChanged(object sender, TextChangedEventArgs e)
        {
            if (numberEditText.Text != null && numberEditText.Text.Length > 2)
            {
                string imageNum = numberEditText.Text;
                personImage.Visibility = Visibility.Visible;
                touchImage.Visibility = Visibility.Visible;

                if (imageNum.Equals("000"))
                {
                    personImage.Source = new BitmapImage(new Uri("../../materialy/000-zdjecie.jpg", UriKind.Relative));
                    touchImage.Source = new BitmapImage(new Uri("../../materialy/000-odcisk.jpg", UriKind.Relative));
                }
                else if (imageNum.Equals("111"))
                {
                    personImage.Source = new BitmapImage(new Uri("../../materialy/111-zdjecie.jpg", UriKind.Relative));
                    touchImage.Source = new BitmapImage(new Uri("../../materialy/111-odcisk.jpg", UriKind.Relative));
                }
                else if (imageNum.Equals("333"))
                {
                    personImage.Source = new BitmapImage(new Uri("../../materialy/333-zdjecie.jpg", UriKind.Relative));
                    touchImage.Source = new BitmapImage(new Uri("../../materialy/333-odcisk.jpg", UriKind.Relative));
                }
                else
                {
                    personImage.Visibility = Visibility.Hidden;
                    touchImage.Visibility = Visibility.Hidden;
                }
            }
        }
    }
}
