// Inclui as bibliotecas do sensor
#include <DHT_U.h>
#include <DHT.h>

// Define o tipo de sensor e o pino do sensor
#define TIPO_SENSOR DHT11
const int PINO_SENSOR_DHT11 = A0;

// Cria um objeto do tipo sensor DHT
DHT sensorDHT(PINO_SENSOR_DHT11, TIPO_SENSOR);

// função faz o setup inicial do Arduino
void setup(){
  Serial.begin(9600);
  sensorDHT.begin();
}

// Faz o loop onde lê os dados de umidade e temperatura e exibe eles
void loop(){
  float umidade = sensorDHT.readHumidity();  // Lê o valor da umidade do sensor.
  float temperatura = sensorDHT.readTemperature();  // Lê o valor da temperatura.

  // Verifica se as leituras falharam
  if (isnan(temperatura) || isnan(umidade)) {
    Serial.println("Erro ao ler os dados do sensor");
  } else {
    // Imprime os dados com labels no Serial Plotter
    Serial.print("TempMaximo:");
    Serial.print(30);
    Serial.print(" ");
    Serial.print("Temperatura:");
    Serial.print(temperatura);
    Serial.println(" ");
    Serial.print("TempMinimo:");
    Serial.print(25);
    Serial.print(" ");
    
    Serial.print("UmiMaximo:");
    Serial.print(55);
    Serial.print(" ");
    Serial.print("Umidade:");
    Serial.print(umidade);
    Serial.println(" ");
    Serial.print("UmiMinimo:");
    Serial.print(45);
    Serial.print(" ");
  }

  delay(1000);  // Espera 1 segundo
}
