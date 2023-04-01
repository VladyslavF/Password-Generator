using System;
using System.Linq;
using System.Windows;
using System.Windows.Input;

namespace Password_Generator
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
        // Ініціалізую клас Random
        Random rnd = new Random();

        // Обробник кнопки Згенерувати
        private void ButtonGenerate_Click(object sender, RoutedEventArgs e)
        {
            // Перевіряємо чи вибрана хоча б один алфавіт для генерації паролю
            if (checkBoxLowercase.IsChecked == true || checkBoxUpperCase.IsChecked == true || checkBoxDigits.IsChecked == true || checkBoxSpecial.IsChecked == true || checkBoxEvenMoreSpecial.IsChecked == true)
                textBoxPassword.Text = GeneratePassword();
            // якщо ні -- виводимо помилку
            else
                MessageBox.Show("Помилка, виберіть які символи використовувати для генерації пароля!", "Помилка", MessageBoxButton.OK, MessageBoxImage.Error);
        }
        // Метод генерування пароля
        public string GeneratePassword()
        {
            // Усього 5 алфавітів, нижній та верхній регістр, цифри, спец символи, та додаткові спец символи
            string lowerCase = "abcdefghijklmnopqrstuvwxyz";
            string upperCase = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
            string digit = "0123456789";
            string specialCharacter = @"%$#@!?";
            string extendedSpecialChar = @"():;[]{}<>,./\|*+-_";
            
            // Змінні для довжини паролю, загального алфавіту генерації та сам пароль
            int passwordLength;
            string passwordLib = "";
            string password = "";

            // Перевірка довжини паролю, пароль повинен бути від 5 до 256 символів, якщо не відповідає вимозі, виводимо помилку та пусте поле замість паролю
            if (!int.TryParse(textBoxPasswordLength.Text, out passwordLength) || passwordLength < 5 || passwordLength > 256)
            {
                MessageBox.Show("Помилка, мінімальна довжина пароля 5 символів, максимальна 256!", "Помилка", MessageBoxButton.OK, MessageBoxImage.Error);
                return "";
            }

            // Генерація паролю працює таким чином:
            // Додається один символ з кожного алфавіту
            // Та цей алфавіт додається до глобального алфавіту passwordLib
            // Після того як додали по одному символу з кожного алфавіту
            // Поки довжина паролю не відповідає заданій, беремо випадковий символ з глобального алфавіту passwordLib
            // В кінці перемішуємо отриманий рядок паролю
            
            if (checkBoxLowercase.IsChecked == true)
            {
                // Випадковий символ з алфавіту
                password += RandomChar(lowerCase);

                // Додавання вибраного алфавіту у глобальний
                passwordLib += lowerCase;
            }
            // Далі за таким ще принципом
            if (checkBoxUpperCase.IsChecked == true)
            {
                password += RandomChar(upperCase);
                passwordLib += upperCase;
            }
            if (checkBoxDigits.IsChecked == true)
            {
                password += RandomChar(digit);
                passwordLib += digit;
            }
            if (checkBoxSpecial.IsChecked == true)
            {
                password += RandomChar(specialCharacter);
                passwordLib += specialCharacter;
            }
            if (checkBoxEvenMoreSpecial.IsChecked == true)
            {
                password += RandomChar(extendedSpecialChar);
                passwordLib += extendedSpecialChar;
            }
            // Додано по одному символу з кожного алфавіту, тепер заповнюємо випадковими символами з глобального алфавіту
            while (password.Length < passwordLength)
            {
                password += RandomChar(passwordLib);
            }
            // Перемішуємо отриманий рядок і повертаємо його у текстове поле програми.
            return RandomizeString(password);
        }
        // Метод, що бере випадковий символ з заданої бібліотеки
        private char RandomChar(string input)
        {
            // Вибирається випадковий індекс з довжини усього заданого рядка
            int index = rnd.Next(input.Length);
            return input[index];
        }
        // Метод, який випадково перемішує заданий рядок тексту
        private string RandomizeString(string input)
        {
            // Створення нового перемішаного рядка із заданого рядка тексту
            string randomizedString = new string(input.OrderBy(s => (rnd.Next(2) % 2) == 0).ToArray());
            return randomizedString;
        }
        
        // Обробник кастомної кнопки закриття програми
        private void Close_Button_MouseDown(object sender, MouseButtonEventArgs e)
        {
            this.Close();
        }
        // Обробник кнопки копіювання в буфер
        public void ButtonReturn_Click(object sender, RoutedEventArgs e)
        {
            this.textBoxPassword.Copy();
            Clipboard.SetText(this.textBoxPassword.Text);
        }

        // Блюр фону програми
        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            Visual.EnableBlur(this);
        }
        // При натисканні на пусте місце програми, її можна переміщати
        private void Window_MouseDown(object sender, MouseButtonEventArgs e)
        {
            DragMove();
        }

    }
}
