import 'package:flutter/material.dart';

import './model/category.dart';
import './model/meal.dart';
const DUMMY_CATEGORIES = [
  Category(
    id: 'c1',
    title: 'Italian', img: Image(image: AssetImage("lib/images/Italian.png")),

  ),
  Category(
    id: 'c2',
    title: 'Quick & Easy', img: Image(image: AssetImage("lib/images/fast_food.png")),

  ),
  Category(
    id: 'c3',
    title: 'Indian', img: Image(image: AssetImage("lib/images/indian.png")),

  ),
  Category(
    id: 'c4',
    title: 'Asian', img: Image(image: AssetImage("lib/images/asian2.png"))
  ),
  Category(
    id: 'c5',
    title: 'Light & Lovely',
      img: Image(image: AssetImage("lib/images/bibimbap.png"))
  ),
  Category(
    id: 'c6',
    title: 'Exotic',
      img: Image(image: AssetImage("lib/images/boba.png"))
  ),
  Category(
    id: 'c7',
    title: 'Breakfast',
      img: Image(image: AssetImage("lib/images/bibimbap.png"))
  ),
  Category(
    id: 'c8',
    title: 'German',
      img: Image(image: AssetImage("lib/images/bibimbap.png"))
  ),
  Category(
    id: 'c9',
    title: 'French',
      img: Image(image: AssetImage("lib/images/bibimbap.png"))
  ),
  Category(
    id: 'c10',
    title: 'Summer',
      img: Image(image: AssetImage("lib/images/bibimbap.png"))
  ),
];
const DUMMY_MEALS =  [
  const Meal(
    id: 'm1',
    categories: [
      'c1',
      'c2',
    ],
    title: 'Spaghetti ',
    affordability: Affordability.Affordable,
    complexity: Complexity.Simple,
    imageUrl:
    'https://lh3.googleusercontent.com/b64qtZKC6x98k611ZA893uBO2tW8357jQq72_KjMZNtGF1zTxoVCjFLA4XDFyk2re9jz7piL5o9SS9sqod4a-3LtxvkW9DjFkBWhKAnpzsKGsIf4Cbo-9rB5ISmwlYhB-0Y_tDY24xlqlqkf2f5ugVPrz-VSNuSCtdr6uMqDS_vfv14N6kwTonEGvrHs-B1i4fPtiwsl5z5VljXfTTLgKs1Lk5VqJfP2MWf-JQz_cTge60DDRUJzzoZTtwmLlPd8m_5fHb5dni5-foeZvBHzbV7qmXNgSR5C7tMjLDtptmLPiCfYoGA2MZtvNqWcYeJpPFEKzjrN0OvcNvn1n0w8htufmg3onfGBVEiN63M_1NjJ__ib3XMgu0JH_gX-mBMhTt0Tgxxeh2MnH_5VMdr622xTmEV2NTabQBaHYKg9xmaRjp1d-Ogcjel9o1wCeJ4QfZAurebmiE3dmv_dTd9XvOjXFglL6n1H7OzJzf4g6Yc7WUkqQSMMgbeIAV8IRsDKBJP2eibMJcC9KMxjVFQcKRlOw9wELJlnKqhvyNcay14tuy1xUnn7UX0King7YP70l69l41gan4gCdJINjm5OBmL_GrKgwzyg4wFCQmK7dsx_aU-_NzKG5ZzZk3cxi9hP8wWnGWKuzzXyrOo12Z4cXk9UEBwXzuuv8a3RXND9wD7_VaXtEHFJ0XJWsRhxh3vxIy_g4jYFffD69v4uXxGYNQcVryVyJbyFrttJIWvWRn16pqgkWqb0jSWMrhvIFbAZFCp_XYLSIgT78w8WouLL7fVPiOBFmiKMyZ2ULEe8HKw2aKa0uLfWu_vmAN9V4l_Z4eStxDv6U7tW4v3ADcpGqa0LYD5jPwcR_sR9cNcyLLkD32OkLnVDi5CsncYSLClA4oUx9qYt9V-_g4B23gZdrfhU12cKZZi9rzOQgbseNBcNMqRcI9HFG_rTYlJMlFkOHNxpzZX9YrB0ONh_xcKAe6-kA5aREVr9HlsTq-CB1q1a4l2G50DgKmX0znoWqL7I_70PLktVinWjyQ6aLjMX75UG5-5tJbHYoEV_0N6YXxDfoTTmDG3xgrE=w481-h519-no?authuser=2',
    duration: 20,
    ingredients: [
      '4 Tomatoes',
      '1 Tablespoon of Olive Oil',
      '1 Onion',
      '250g Spaghetti',
      'Spices',
      'Cheese (optional)'
    ],
    steps: [
      'Cut the tomatoes and the onion into small pieces.',
      'Boil some water - add salt to it once it boils.',
      'Put the spaghetti into the boiling water - they should be done in about 10 to 12 minutes.',
      'In the meantime, heaten up some olive oil and add the cut onion.',
      'After 2 minutes, add the tomato pieces, salt, pepper and your other spices.',
      'The sauce will be done once the spaghetti are.',
      'Feel free to add some cheese on top of the finished dish.'
    ],
    isGlutenFree: false,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm2',
    categories: [
      'c2',
    ],
    title: "Mcdonald's meal",
    affordability: Affordability.Affordable,
    complexity: Complexity.Simple,
    imageUrl:
    'https://lh3.googleusercontent.com/z0ii3JsvlYmoyOCJegp9EVWgYEhsKKm401ZFXNSPz6VPejkYIPxhUioZytj3t51vU09CPT3EmLDh2Kmv7z2BbmLG9beSnntMlDJR-u0VFO9Jka-Q7YzQk4Cjmn3iI31BWNNjklWQO_RM_FO02_hyEWWvACBp7aEiWWuTaoRD7wPdDTEQ2VFElgyRmnaQLvXNQuT3U0kDnTbG229KD4w_RBSETxAa66q9S2f8jtOXoK2dmmT-F6xsVNC8aI00fKipGkDoDHJlDJ0x1snCcU0umEg5jUbs3g00AUxyxPEOdC7-15P1aXmq4dxl_l4vgpTTKXyM3kBlKb7X89Ne67YOJuMDu_lGysdPDjVnuAfTXLOKo-9ciqAJu9QhvO-M-jj9c_zPgse5DUU-_oa9QrKyR8b6rcQr5IXVS94db-zEgwBIt1L1yKifJk0VQLYspirCm7xZIvapqKQIqZ0f7kYAtrRBYdQUMZIYo1QHU59v2604WS_3cBzaAcaFCCZFi6F5E8gWtNch36LvRDpsiFCFV28AXYeLVVc3_ySWh-n3gpCqsK-usyUginqWr3LJ305orLOiD8AuK_jf1AKIdD2dRjw3EW2y87RpLXLeg9B2_OYjgmWdpKAGEggQV05u6FzTHJGkV9567dzbTBnOI4K0rjrDBn4zff3xPWZ3c25kG1v0j4UxLhEwzPysPBS76h-M_G25YW_IT5fPy7OxW0Sx9SDPK-eBpwqp4o5j4YXG_-sc2AYWPDnwy_CUoljsbpJfE74O9Wc3TQmX4GIdPM0R36ADbxw4mDh2lSpfw2dKpOq9EQSkM91yAFAn_PIA6ZXZhR4IDuoegf_7D0Imv9rixU5rEN0Aq17UbhoOtgrmIvtyqFrtSjTglwqWq5fEPS8DcDoKIQfPSlAO=s225-no?authuser=2',
    duration: 10,
    ingredients: [
      '1 Slice White Bread',
      '1 Slice Ham',
      '1 Slice Pineapple',
      '1-2 Slices of Cheese',
      'Butter'
    ],
    steps: [
      'Butter one side of the white bread',
      'Layer ham, the pineapple and cheese on the white bread',
      'Bake the toast for round about 10 minutes in the oven at 200°C'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm3',
    categories: [
      'c2',
      'c3',
    ],
    title: 'Classic Hamburger',
    affordability: Affordability.costly,
    complexity: Complexity.Simple,
    imageUrl:
    'https://lh3.googleusercontent.com/ap9jPH4Oc1UYwQZW2DWPVeEqY38HTFim141-fUHl-sSyLuOj568CxICbjlwQ1YZPYGXwRPzK_uy9kXrAdgaSRcszTsdt5j2PBC__9LLyaZIfJeyPve391R8U9nbEGXai0ZlBY48fqPr6jEH0dDe9jht8K0l8m_0P-MhV3mhFTniHWXzzLxrOmAFRdujg47HqJ7HbQXiR_N04UMNNpcJzyFe884Q25QgLgzJjZoeL03DfYxvx9AtVdxg2CKxNl-TT4rIhrkVkYzA-NoitrtalE3PE9X8XLNgmG5hkEWSTMIVHGamSDwVpQ6KIqy3tNtolptzIC-XFM7gaXGO92zraK7Ykw7t65A5VnYxHRDef-I5bpO-adLbhPKU5qGUIVYvTEaRmBcl3LxFJ_XNGOSXwwSPz5FpIm-i-tqqicWh48h5ypUZTzN-rXS0X_ISLHq4Z_9z718Bianop93lnJ-qV3IPXvtn2AEobAiCzZp8CXDwDT2M7o9CyXPD3CDf-98WhiqVocouEbozhhbXy72yBxR62w-gSxEetN-ROY2VVqpibhvBPgfCLdMk-YN-ILBUok02Lb6ljHkZaS0TKvNpH1mUdwb5rRh-3At9UnSp1bdA8juEwN4FlKmeAqX51ecXMSL-S8MaP41Wsh1ZJ2bRDfmYDgWy66bdgfgfUWLgRAlfBVL3k4TLXxmqR38_xkqi3UlMt1noEcBewgyiJnHcImZ6CgH_IBj7NO8-_-FGBKCX6tie5cHpj5qPH1Hswzj44MfnY6-pksknjlkRorN3CLoN24CqKh5m3mRsZl-BhFa6VR0AsIVrwiXyyROARgeZDZlzAQcR22d2oIDnb-nzmBwGletNpZ2QQxqW6UpdybfUF5tC2nK7j2S60yveXCuUowBR7B6FcZUhJ=w222-h227-no?authuser=2',
    duration: 45,
    ingredients: [
      '300g Cattle Hack',
      '1 Tomato',
      '1 Cucumber',
      '1 Onion',
      'Ketchup',
      '2 Burger Buns'
    ],
    steps: [
      'Form 2 patties',
      'Fry the patties for c. 4 minutes on each side',
      'Quickly fry the buns for c. 1 minute on each side',
      'Bruch buns with ketchup',
      'Serve burger with tomato, cucumber and onion'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm4',
    categories: [
      'c4',
    ],
    title: 'Wiener Schnitzel',
    affordability: Affordability.Luxurious,
    complexity: Complexity.Challenging,
    imageUrl:
    'https://cdn.pixabay.com/photo/2018/03/31/19/29/schnitzel-3279045_1280.jpg',
    duration: 60,
    ingredients: [
      '8 Veal Cutlets',
      '4 Eggs',
      '200g Bread Crumbs',
      '100g Flour',
      '300ml Butter',
      '100g Vegetable Oil',
      'Salt',
      'Lemon Slices'
    ],
    steps: [
      'Tenderize the veal to about 2–4mm, and salt on both sides.',
      'On a flat plate, stir the eggs briefly with a fork.',
      'Lightly coat the cutlets in flour then dip into the egg, and finally, coat in breadcrumbs.',
      'Heat the butter and oil in a large pan (allow the fat to get very hot) and fry the schnitzels until golden brown on both sides.',
      'Make sure to toss the pan regularly so that the schnitzels are surrounded by oil and the crumbing becomes ‘fluffy’.',
      'Remove, and drain on kitchen paper. Fry the parsley in the remaining oil and drain.',
      'Place the schnitzels on awarmed plate and serve garnishedwith parsley and slices of lemon.'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm5',
    categories: [
      'c2'
          'c5',
      'c10',
    ],
    title: 'Salad with Smoked Salmon',
    affordability: Affordability.Luxurious,
    complexity: Complexity.Simple,
    imageUrl:
    'https://cdn.pixabay.com/photo/2016/10/25/13/29/smoked-salmon-salad-1768890_1280.jpg',
    duration: 15,
    ingredients: [
      'Arugula',
      'Lamb\'s Lettuce',
      'Parsley',
      'Fennel',
      '200g Smoked Salmon',
      'Mustard',
      'Balsamic Vinegar',
      'Olive Oil',
      'Salt and Pepper'
    ],
    steps: [
      'Wash and cut salad and herbs',
      'Dice the salmon',
      'Process mustard, vinegar and olive oil into a dessing',
      'Prepare the salad',
      'Add salmon cubes and dressing'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm6',
    categories: [
      'c6',
      'c10',
    ],
    title: 'Delicious Orange Mousse',
    affordability: Affordability.Affordable,
    complexity: Complexity.Hard,
    imageUrl:
    'https://cdn.pixabay.com/photo/2017/05/01/05/18/pastry-2274750_1280.jpg',
    duration: 240,
    ingredients: [
      '4 Sheets of Gelatine',
      '150ml Orange Juice',
      '80g Sugar',
      '300g Yoghurt',
      '200g Cream',
      'Orange Peel',
    ],
    steps: [
      'Dissolve gelatine in pot',
      'Add orange juice and sugar',
      'Take pot off the stove',
      'Add 2 tablespoons of yoghurt',
      'Stir gelatin under remaining yoghurt',
      'Cool everything down in the refrigerator',
      'Whip the cream and lift it under die orange mass',
      'Cool down again for at least 4 hours',
      'Serve with orange peel',
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm7',
    categories: [
      'c7',
    ],
    title: 'Pancakes',
    affordability: Affordability.Affordable,
    complexity: Complexity.Simple,
    imageUrl:
    'https://cdn.pixabay.com/photo/2018/07/10/21/23/pancake-3529653_1280.jpg',
    duration: 20,
    ingredients: [
      '1 1/2 Cups all-purpose Flour',
      '3 1/2 Teaspoons Baking Powder',
      '1 Teaspoon Salt',
      '1 Tablespoon White Sugar',
      '1 1/4 cups Milk',
      '1 Egg',
      '3 Tablespoons Butter, melted',
    ],
    steps: [
      'In a large bowl, sift together the flour, baking powder, salt and sugar.',
      'Make a well in the center and pour in the milk, egg and melted butter; mix until smooth.',
      'Heat a lightly oiled griddle or frying pan over medium high heat.',
      'Pour or scoop the batter onto the griddle, using approximately 1/4 cup for each pancake. Brown on both sides and serve hot.'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm8',
    categories: [
      'c8',
    ],
    title: 'Creamy Indian Chicken Curry',
    affordability: Affordability.costly,
    complexity: Complexity.Challenging,
    imageUrl:
    'https://cdn.pixabay.com/photo/2018/06/18/16/05/indian-food-3482749_1280.jpg',
    duration: 35,
    ingredients: [
      '4 Chicken Breasts',
      '1 Onion',
      '2 Cloves of Garlic',
      '1 Piece of Ginger',
      '4 Tablespoons Almonds',
      '1 Teaspoon Cayenne Pepper',
      '500ml Coconut Milk',
    ],
    steps: [
      'Slice and fry the chicken breast',
      'Process onion, garlic and ginger into paste and sauté everything',
      'Add spices and stir fry',
      'Add chicken breast + 250ml of water and cook everything for 10 minutes',
      'Add coconut milk',
      'Serve with rice'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm9',
    categories: [
      'c9',
    ],
    title: 'Chocolate Souffle',
    affordability: Affordability.Affordable,
    complexity: Complexity.Hard,
    imageUrl:
    'https://cdn.pixabay.com/photo/2014/08/07/21/07/souffle-412785_1280.jpg',
    duration: 45,
    ingredients: [
      '1 Teaspoon melted Butter',
      '2 Tablespoons white Sugar',
      '2 Ounces 70% dark Chocolate, broken into pieces',
      '1 Tablespoon Butter',
      '1 Tablespoon all-purpose Flour',
      '4 1/3 tablespoons cold Milk',
      '1 Pinch Salt',
      '1 Pinch Cayenne Pepper',
      '1 Large Egg Yolk',
      '2 Large Egg Whites',
      '1 Pinch Cream of Tartar',
      '1 Tablespoon white Sugar',
    ],
    steps: [
      'Preheat oven to 190°C. Line a rimmed baking sheet with parchment paper.',
      'Brush bottom and sides of 2 ramekins lightly with 1 teaspoon melted butter; cover bottom and sides right up to the rim.',
      'Add 1 tablespoon white sugar to ramekins. Rotate ramekins until sugar coats all surfaces.',
      'Place chocolate pieces in a metal mixing bowl.',
      'Place bowl over a pan of about 3 cups hot water over low heat.',
      'Melt 1 tablespoon butter in a skillet over medium heat. Sprinkle in flour. Whisk until flour is incorporated into butter and mixture thickens.',
      'Whisk in cold milk until mixture becomes smooth and thickens. Transfer mixture to bowl with melted chocolate.',
      'Add salt and cayenne pepper. Mix together thoroughly. Add egg yolk and mix to combine.',
      'Leave bowl above the hot (not simmering) water to keep chocolate warm while you whip the egg whites.',
      'Place 2 egg whites in a mixing bowl; add cream of tartar. Whisk until mixture begins to thicken and a drizzle from the whisk stays on the surface about 1 second before disappearing into the mix.',
      'Add 1/3 of sugar and whisk in. Whisk in a bit more sugar about 15 seconds.',
      'whisk in the rest of the sugar. Continue whisking until mixture is about as thick as shaving cream and holds soft peaks, 3 to 5 minutes.',
      'Transfer a little less than half of egg whites to chocolate.',
      'Mix until egg whites are thoroughly incorporated into the chocolate.',
      'Add the rest of the egg whites; gently fold into the chocolate with a spatula, lifting from the bottom and folding over.',
      'Stop mixing after the egg white disappears. Divide mixture between 2 prepared ramekins. Place ramekins on prepared baking sheet.',
      'Bake in preheated oven until scuffles are puffed and have risen above the top of the rims, 12 to 15 minutes.',
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm10',
    categories: [
      'c2',
      'c5',
      'c10',
    ],
    title: 'Asparagus Salad',
    affordability: Affordability.Luxurious,
    complexity: Complexity.Simple,
    imageUrl:
    'https://lh3.googleusercontent.com/JCQ6ZK7p_4XgdSrLg1lcSzBUIH-lIShFnUPKdOQVpH92xv8bXLp3XdmnDKSdQRoUeGmT5B55oNVk3yr1B6j6aAjhbuI7RvAlnAt8amGyty6a4Pjsiob8tFJg6nDKLXrPmUB3ttCbIIXzGz3Xmgj4LrLSxGOP0BGC-RhS9VDEVrCy2j6Q7lLK0JRzLSyLaKul3DWCdo1xMFXj--TMVUcSzTpj8sphBM72I7GUGm_ThRN9YwwSPGrNl3HGYVdxMrz94mauxuHz8GtzE8vMpjQGSBpQr1DWyvdHCaMdWggvRFn52wD3OAAhtAeFQ5VZaQXd8qXZyJFe8MOan0VFTV_9bfwM0smlFeHr6Gk9XoeLqOY8oSBCDOoJkFosLGP4J-qTRDltIHx4iZM5zZVh7OVht_YlDkhBDe_m8kb0c6GIMNKUzOxJhODHpg24bp9CGEfqs9wRsk5RbRUhtDmpNeJeCPvgohJjUSQmYHX7XrbdBn4i8mGVPU4d6QMeWpPatNIDn34YUo7T4FTFVk9W0BtEcroFpuj-Mmmp-jL-GSZI34qFu_PzW5Dw1B4YAURnpt0nHJ8S3FrwLq21cVYhsoj7oD-kZtBHL0Sr2wAwzcRmK7mcd48xstFWNMevTz_mEjBhVQ_LYj4F6MkvXfCi-vO92A8Qog2GntCu7SW7jQ6PWF0xIDEMYxkw5DLdWRD5zMf1bxG8pvsEQvwoNFyVVGA-jDWaBXDoydHTOyW2hB-fxPlRjaPL-dng-AoTsrHHDULpua4aAtJBCrEayhFcNotAUjPQ_8QVqsSy1n4ddpzMfFsiF45FrmOe9BE5l9BXgfsxVvtJu_dbIoeLIa-YU1TZAOj2uA6eRemN0skSNsl5u7u4-1LgCz5f6yysvMzJWcMejD-1UDlyO_zT=w612-h408-no?authuser=2',
    duration: 30,
    ingredients: [
      'White and Green Asparagus',
      '30g Pine Nuts',
      '300g Cherry Tomatoes',
      'Salad',
      'Salt, Pepper and Olive Oil'
    ],
    steps: [
      'Wash, peel and cut the asparagus',
      'Cook in salted water',
      'Salt and pepper the asparagus',
      'Roast the pine nuts',
      'Halve the tomatoes',
      'Mix with asparagus, salad and dressing',
      'Serve with Baguette'
    ],
    isGlutenFree: true,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),
];
