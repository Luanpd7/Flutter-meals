import 'package:flutter/material.dart';
import '../models/meal.dart';
import '../models/category.dart';
 
const DUMMY_CATEGORIES =  [
  Category(
    id: 'c1',
    title: 'Italiano',
    color: Colors.purple,
  ),
  Category(
    id: 'c2',
    title: 'Rápido & Fácil',
    color: Colors.red,
  ),
  Category(
    id: 'c3',
    title: 'Hamburgers',
    color: Colors.orange,
  ),
  Category(
    id: 'c4',
    title: 'Alemã',
    color: Colors.amber,
  ),
  Category(
    id: 'c5',
    title: 'Leve & Saudável',
    color: Colors.indigo,
  ),
  Category(
    id: 'c6',
    title: 'Exótica',
    color: Colors.green,
  ),
  Category(
    id: 'c7',
    title: 'Café da Manhã',
    color: Colors.lightBlue,
  ),
  Category(
    id: 'c8',
    title: 'Asiática',
    color: Colors.lightGreen,
  ),
  Category(
    id: 'c9',
    title: 'Francesa',
    color: Colors.pink,
  ),
  Category(
    id: 'c10',
    title: 'Verão',
    color: Colors.teal,
  ),
];

 const DUMMY_MEALS = [
  Meal(
    id: 'm1',
    categories: ['c1', 'c2'],
    title: 'Espaguete com molho de tomate',
    cost: Cost.cheap,
    complexity: Complexity.simple,
    imageUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/2/20/Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg/800px-Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg',
    duration: 20,
    ingredients: [
      '4 Tomates',
      '1 Colher de azeite de olivia',
      '1 Cebola',
      '250g Espaguete',
      'Salsa',
      'Queijo (opcional)'
    ],
    steps: [
      'Corte o tomates e as cebolas em pequenos pedaços.',
      'Ferva um pouco de água - adicione sal assim que ferver.',
      'Coloque o espaguete dentro da água fervida - eles devem ficar feitos em cerca de 10 a 12 minutos.',
      'Enquanto isso, Esquente o azeite e coloque os pedaços de cebolas.',
      'Apos 2 minutos, adicione os pedações de tomate, sal, pimenta e outros ingredientes.',
      'O molho estará pronto assim que o espaguete estiver.',
      'Sente a vontade ao colocar queijo em cima do prato finalizado.'
    ],
    isGlutenFree: false,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm2',
    categories: ['c2'],
    title: 'Torrada Hawaii',
    cost: Cost.cheap,
    complexity: Complexity.simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/07/11/21/51/toast-3532016_1280.jpg',
    duration: 10,
    ingredients: [
      '1 Fatia de Pão Branco',
      '1 Fatia de Presunto',
      '1 Fatia de Abacaxi',
      '1-2 Faitais de Queijo',
      'Manteiga'
    ],
    steps: [
      'Passe manteiga em um lado do pão branco',
      'Camada de presunto, abacaxi e queijo no pão branco',
      'Assar a torrada por volta de 10 minutos no forno em 200°C'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm3',
    categories: ['c2', 'c3'],
    title: 'Hambúrguer Clássico',
    cost: Cost.fair,
    complexity: Complexity.simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2014/10/23/18/05/burger-500054_1280.jpg',
    duration: 45,
    ingredients: [
      '300g Carne de gado',
      '1 Tomate',
      '1 Pepino',
      '1 Cebola',
      'Ketchup',
      '2 Pão de hambúrger'
    ],
    steps: [
      'Forme 2 Habúrgueres',
      'Frite os hambúrgueres por c. 4 minutos de cada lado',
      'Frite rapidamente os pães por c. 1 minute de cada lado',
      'Pães de bruch com ketchup',
      'Servir hamburger com tomate, pepino e cebola'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm4',
    categories: ['c4'],
    title: 'Salsicha de Schnitzel',
    cost: Cost.expensive,
    complexity: Complexity.medium,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/03/31/19/29/schnitzel-3279045_1280.jpg',
    duration: 60,
    ingredients: [
      '8 Costela de vitela',
      '4 Ovos',
      '200g Migalhas de pão',
      '100g Farinha',
      '300ml Butter',
      '100g Olho vegetal',
      'Sal',
      'Rodelas de limão'
    ],
    steps: [
      'Amaciar a vitela até cerca de 2–4 mm e salgar dos dois lados',
      'Em um prato raso, mexa os ovos rapidamente com um garfo.',
      'Cubra levemente as costeletas com farinha, depois mergulhe-as no ovo e, por fim, cubra-as com pão ralado.',
      'Numa frigideira grande aqueça a manteiga e o azeite (deixe a gordura ficar bem quente) e frite os schnitzels até dourar dos dois lados.',
      'Certifique-se de mexer a frigideira regularmente para que os schnitzels fiquem rodeados de óleo e o miolo fique “fofo”.',
      'Retire e escorra em papel de cozinha. Frite a salsa no azeite restante e escorra.',
      'Coloque os schnitzels num prato aquecido e sirva decorado com salsa e rodelas de limão.'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm5',
    categories: ['c2', 'c5', 'c10'],
    title: 'Salada com salmão Defumado',
    cost: Cost.expensive,
    complexity: Complexity.simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2016/10/25/13/29/smoked-salmon-salad-1768890_1280.jpg',
    duration: 15,
    ingredients: [
      'Rúcula',
      'Alface de cordeiro',
      'Salsicha',
      'Funcho',
      '200g Salmão defumado',
      'Mostarda',
      'vinagre',
      'Azeite de olivia',
      'Sal e pimenta'
    ],
    steps: [
      'Lavar e cortar salada e ervas',
      'Corte o  salmão',
      'Processe a mostarda, o vinagre e o azeite em uma sobremesa',
      'Preparae a salada',
      'Adicione o salmão cubos e molho'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm6',
    categories: ['c6', 'c10'],
    title: 'Delicioso Mousse de laranja',
    cost: Cost.cheap,
    complexity: Complexity.difficult,
    imageUrl:
        'https://cdn.pixabay.com/photo/2017/05/01/05/18/pastry-2274750_1280.jpg',
    duration: 240,
    ingredients: [
      '4 Folhas de Gelatinas',
      '150ml Suco de laranja',
      '80g Açucar',
      '300g Iorgute',
      '200g Cremer',
      'Casca de laranja',
    ],
    steps: [
      'Dissolver a gelatina na panela',
      'Adicione a laranja e o açucar',
      'tire a panela do fogão',
      'Adicione 2 colheres de sopa de iorgute',
      'misture a gelatina sob o iogurte restante',
      'Esfrie tudo na geladeira',
      'Bata as natas e levante-as sob a massa de laranja',
      'Deixe esfriar novamente por pelo menos 4 horas',
      'Sirva com casca de laranja',
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm7',
    categories: ['c7'],
    title: 'Panquecas',
    cost: Cost.cheap,
    complexity: Complexity.simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/07/10/21/23/pancake-3529653_1280.jpg',
    duration: 20,
    ingredients: [
      '1 1/2 Xícaras de farinha de trigo',
      '3 1/2 Colheres de chá de fermento em pó',
      '1 Colher de chá de sal',
      '1 Colher de chá de açucar branco',
      '1 1/4 xicara de leite',
      '1 Ovo',
      '3 Colher de chá Manteiga, derretido',
    ],
    steps: [
      'Em uma tigela grande, peneire a farinha, o fermento, o sal e o açúcar.',
      'Faça um buraco no centro e despeje o leite, o ovo e a manteiga derretida; misture até ficar homogêneo.',
      'Aqueça uma frigideira ou frigideira levemente untada com óleo em fogo médio-alto',
      'Despeje ou coloque a massa na frigideira, usando aproximadamente 1/4 de xícara para cada panqueca. Marrom em ambos os lados e servir quente.'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm8',
    categories: ['c8'],
    title: 'Curry Cremoso de Frango Indiano',
    cost: Cost.fair,
    complexity: Complexity.medium,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/06/18/16/05/indian-food-3482749_1280.jpg',
    duration: 35,
    ingredients: [
      '4 peitos de frango',
      '1 Cebola',
      '2 Dentes de alho',
      '1 Pedaço de Gengibre',
      '4 colheres de sopa de amêndoas',
      '1 Colher de chá de pimenta caiena',
      '500ml Leite de côco',
    ],
    steps: [
      'Fatie e frite o peito de frango',
      'Processe a cebola, o alho e o gengibre até formar uma pasta e refogue tudo',
      'Adicione temperos e frite',
      'Add chicken breast + 250ml of water and cook everything for 10 minutes',
      'Adicione leite de côco',
      'Serve com arroz'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm9',
    categories: ['c9'],
    title: 'Suflê de chocolate',
    cost: Cost.cheap,
    complexity: Complexity.difficult,
    imageUrl:
        'https://cdn.pixabay.com/photo/2014/08/07/21/07/souffle-412785_1280.jpg',
    duration: 45,
    ingredients: [
      '1 Colher de chá de manteiga derretida',
      '2 Colher de chá de açucar branco',
      '2 Barra de chocolate amargo 70%, quebrado em pedaços',
      '1 Colher de chá de manteiga',
      '1 Colher de sopa de farinha multiuso',
      '4 1/3 colheres de sopa de leite frio',
      '1 Pitada de sal',
      '1 Pitada pimenta caiene',
      '1 Grande gema de ovo',
      '2 Claras de ovo grandes',
      '1 Pitada de creme de tártaro',
      '1 Colher de chá de açucar branco',
    ],
    steps: [
      'Pré-aqueça o forno a 190°C. Forre uma assadeira de borda com papel manteiga.',
      'Pincele levemente o fundo e as laterais de 2 ramequins com 1 colher de chá de manteiga derretida; cubra o fundo e as laterais até a borda.',
      'Adicione 1 colher de sopa de açúcar branco aos ramequins. Gire os ramequins até que o açúcar cubra todas as superfícies.',
      'Coloque os pedaços de chocolate em uma tigela de metal.',
      'Coloque a tigela sobre uma panela com cerca de 3 xícaras de água quente em fogo baixo.',
      'Derrreta 1 colher de sopa de manteiga em uma frigideira em fogo médio. Polvilhe a farinha. Bata até que a farinha esteja incorporada à manteiga e a mistura engrosse.',
      'Adicione leite frio, mexendo até que a mistura fique lisa e engrosse. Transfira a mistura para a tigela com o chocolate derretido.',
      'Adicione sal e pimenta caiena. Misture bem. Adicione a gema de ovo e misture para combinar.',
      'Deixe a tigela sobre a água quente (sem ferver) para manter o chocolate aquecido enquanto bate as claras de ovo.',
      'Coloque 2 claras de ovo em uma tigela de mistura; adicione o cremor tártaro. Bata até que a mistura comece a engrossar e um fio do batedor permaneça na superfície por cerca de 1 segundo antes de desaparecer na mistura.',
      'Adicione 1/3 do açúcar e bata. Bata mais um pouco de açúcar por cerca de 15 segundos.',
      'Adicione o restante do açúcar. Continue batendo até que a mistura fique com a consistência de creme de barbear e forme picos suaves, de 3 a 5 minutos.',
      'Transfira um pouco menos da metade das claras de ovo para o chocolate.',
      'Misture até que as claras de ovo estejam completamente incorporadas ao chocolate.',
      'Adicione o restante das claras de ovo; dobre gentilmente no chocolate com uma espátula, levantando do fundo e dobrando por cima.',
      'Pare de misturar quando as claras de ovo desaparecerem. Divida a mistura entre 2 ramequins preparados. Coloque os ramequins na assadeira preparada.',
      'Asse no forno pré-aquecido até que os suflês estejam inchados e tenham subido acima do topo das bordas, de 12 a 15 minutos.'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm10',
    categories: ['c2', 'c5', 'c10'],
    title: 'Salada de Espargos com Tomate Cereja',
    cost: Cost.expensive,
    complexity: Complexity.simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/04/09/18/26/asparagus-3304997_1280.jpg',
    duration: 30,
    ingredients: [
      'Espargos Brancos e Verdes',
      '30g Pinhões',
      '300g Tomate cereja',
      'Salada',
      'Sal, pimenta e azeita de olivia'
    ],
    steps: [
      'Lave, descasque e corte os aspargos',
      'Cozinhe em água salgada',
      'Salgue e apimente os aspargos',
      'Assar os pinhões',
      'Corte os tomates pela metade',
      'Misture com aspargos, salada e molho',
      'Sirva com baguete'
    ],
    isGlutenFree: true,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),
];
