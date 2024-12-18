#include <stdio.h> 
#include <fcgiapp.h> // FastCGI application server programs
#include "fcgi_stdio.h" // там функция FCGI_Accept.

int main(/*int argc, char* argv*/ void) { // не требуем и не считываем входные параметры
  
  while (FCGI_Accept() >= 0) { // Функция FCGI_Accept блокируется до тех пор, пока не поступит новый запрос на выполнение программы.
    printf("Content-Type: text/html\n\n"); //отправляем заголовок Content-type и сообщаем что тип документа text/html
    printf("Hello World!\n");
  }

  return 0;
}
