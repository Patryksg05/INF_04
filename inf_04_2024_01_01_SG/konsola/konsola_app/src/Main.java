import java.util.Scanner;

public class Main {

    public static char personType(String idNumber) {
        return (Character.getNumericValue(idNumber.charAt(9)) % 2 == 0) ? 'K' : 'M';
    }

    /**
     * *********************************************
     * nazwa funkcji: validateIdNumber
     * opis funkcji: na postawie podanego ciagu znakow sprawdzana
     * jest poprawnosc numeru pesel
     * parametry: idNumber - ciag znakow
     * zwracany typ i opis: zwracana wartosc logiczna, na podstawie
     * porownania ostatniej liczby wpisanego peselu z otrzymanym
     * wynikiem wewnatrz funkcji
     * autor: 0000000000
     * **********************************************
     **/
    public static boolean validateIdNumber(String idNumber) {
        if (idNumber.length() != 11)
            return false;

        int[] weights = {1, 3, 7, 9, 1, 3, 7, 9, 1, 3};
        int sum = 0;

        for (int i = 0; i < 10; i++)
            sum += (Character.getNumericValue(idNumber.charAt(i))) * weights[i];

        int m = sum % 10;

        int r = (m == 0) ? 0 : 10 - m;

        return r == Character.getNumericValue(idNumber.charAt(10));
    }

    public static void main(String[] args) {
//        String idNumber = "55030101193"; // 55030101193
//        System.out.println(personType(idNumber));
//        System.out.println(validateIdNumber(idNumber));

        Scanner scanner = new Scanner(System.in);
        System.out.printf("Wpisz numer pesel: ");
        String userNumber = scanner.next();

        boolean validatedIdNumber = validateIdNumber(userNumber) ? true : false;
        if (validatedIdNumber) {
            char personTypeChar = personType(userNumber);
            String personType = (personTypeChar == 'K') ? "Kobieta" : "Mężczyzna";
            System.out.println(personType);
        }

        System.out.println((validatedIdNumber) ? "poprawny" : "niepoprawny");

        /**
         * 5 5 0 3 0 1 0 1 1 9
         * 1 3 7 9 1 3 7 9 1 3
         *
         * sum = 5 + 15 + 0 + 27 + 0 + 3 + 0 + 9 + 1 + 27 = 87
         */
    }
}