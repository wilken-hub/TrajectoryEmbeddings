# Trajectory Embedding Similarity
Pipeline para Avaliação de Similaridade Espacial entre Trajetórias usando Embeddings obtidos via abordagens PLN (Processamento de Linguagem Natural). Para o treino dessas abordagens e obtenção dos embeddings, utilizamos como referência a mesma grade espacial do trabalho t2vec. Já para o cálculo de similaridade envolvendo métodos clássicos, utilizamos os dados brutos (lon, lat) das trajetórias.

Os modelos de PLN, assim como o t2vec, necessitam das trajetórias em formato sequencial de células para que possam ser treinados. Desta forma, inicialmente, treinamos o modelo t2vec a fim de obter a mesma grade espacial para o treinamento dos modelos de linguagem (Word2Vec, DOc2Vec e BERT).

Quanto aos métodos clássicos de similaridade espacial entre trajetórias (EDR, DTW e LCSS), foram utilizadas as trajetórias reais (trajetos constituídos por pontos geoespaciais). Na execução de tais métodos, iniciamos primeiramente pelo notebook do método EDR, pois nele há o código necessário para processo inicial desses dados de GPS. Uma vez executado o notebook do EDR, as trajetórias processadas podem ser utilizadas diretamente pelo outros dois métodos (DTW e LCSS).

## Used libraries:
Gensim 4.2.0 <br/>
Python 3.8.10 <br/>
Pytorch 1.13.1+cu117 <br/>
Transformers 4.30.2



