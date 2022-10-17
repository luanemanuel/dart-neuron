import 'package:rede_neural/rede_neural.dart' as rede_neural;

void main(List<String> arguments) {
  // Valor desejado
  double outputDesire = 0;

  // Entrada
  double input = 1;
  // Pesos inicial da entrada
  double inputWeight = 0.5;

  // Taxa de aprendizado da IA
  double learningRate = 0.001;

  // Valor inicial de viés
  double bias = 1;
  // Peso inicial para o valor de viés
  double biasWeight = 0.5;

  // Erro sendo infinito no inicio
  double error = double.infinity;

  // Contador de interações
  int interation = 0;

  while (error != 0) {
    interation += 1;

    print('\n####### Sobre (Interação: $interation) ##########\n');

    print("Entrada: $input");
    print("Valor de saída desejado: $outputDesire");

    double sum = (input * inputWeight) + (bias * biasWeight);

    print("Soma: $sum");

    double output = rede_neural.activation(sum);

    print('Saída: $output');

    error = outputDesire - output;

    print('Erro: $error');

    print('\n####### Pesos (Interação: $interation) ##########\n');

    if (error != 0) {
      inputWeight = inputWeight + (learningRate * error * input);
      biasWeight = biasWeight + (learningRate * error * bias);
    }

    print('Pesos de entrada: $inputWeight');
    print('Pesos do viés: $biasWeight');
    print("\n#################################");
  }

  print("\nTreinamento finalizado!");
}
