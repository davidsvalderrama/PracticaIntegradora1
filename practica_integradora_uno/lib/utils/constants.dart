import 'package:flutter/material.dart';
import 'package:practica_integradora_uno/models/product_cup.dart';
import 'package:practica_integradora_uno/models/product_drinks.dart';
import 'package:practica_integradora_uno/models/product_grains.dart';
import 'package:practica_integradora_uno/models/product_item_cart.dart';
import 'package:practica_integradora_uno/models/product_repository.dart';

// home
const String APP_TITLE = "Coffe shop";
// profile
const String PROFILE_TITLE = "Perfil";
const String PROFILE_LOGOUT = "Cerrar sesion";
const String PROFILE_CART = "Lista de compras";
const String PROFILE_WISHES = "Lista de deseos";
const String PROFILE_HISTORY = "Historial de compras";
const String PROFILE_SETTINGS = "Ajustes";
const String PROFILE_NAME = "Anna Doe";
const String PROFILE_EMAIL = "anna@doe.com";
const String PROFILE_PICTURE =
    "https://scontent.fgdl5-3.fna.fbcdn.net/v/t1.0-9/1622777_1513065212279963_1865394876752394188_n.jpg?_nc_cat=107&_nc_ohc=fx2kzES-jPAAX9uh90P&_nc_ht=scontent.fgdl5-3.fna&oh=df709a6cf01738ad75c60a70c17b6db3&oe=5EB6616E";
const String PASSWORD_USER = 'SIU';

List <ProductDrinks> bebidas = ProductRepository.loadProducts(ProductType.BEBIDAS);
List <ProductCup> tazas = ProductRepository.loadProducts(ProductType.TAZAS);
List <ProductGrains> granos = ProductRepository.loadProducts(ProductType.GRANO);

List <ProductItemCart> carrito = new List <ProductItemCart>();
List <String> exists = new  List <String>();

// app
const  MaterialColor PRIMARY_COLOR =  const  MaterialColor (
   0xFF214254 ,
   const  < int , Color > {
     50 :  const  Color ( 0xFF214254 ),
     100 :  const  Color ( 0xFF214254 ),
     200 :  const  Color ( 0xFF214254 ),
     300 :  const  Color ( 0xFF214254 ),
     400 :  const  Color ( 0xFF214254 ),
     500 :  const  Color  ( 0xFF214254 ),
     600 : const  Color ( 0xFF214254 ),
     700 : const  Color ( 0xFF214254 ),
     800 : const  Color ( 0xFF214254 ),
     900 : const  Color ( 0xFF214254 ),        
  },
);

const  MaterialColor TEXT_PRODUCT_DESCRIPTION_COLOR =  const  MaterialColor (
   0xffBCB0A1 ,
   const  < int , Color > {
     50 :  const  Color ( 0xffBCB0A1 ),
     100 :  const  Color ( 0xffBCB0A1 ),
     200 :  const  Color ( 0xffBCB0A1 ),
     300 :  const  Color ( 0xffBCB0A1 ),
     400 :  const  Color ( 0xffBCB0A1 ),
     500 :  const  Color  ( 0xffBCB0A1 ),
     600 : const  Color ( 0xffBCB0A1 ),
     700 : const  Color ( 0xffBCB0A1 ),
     800 : const  Color ( 0xffBCB0A1 ),
     900 : const  Color ( 0xffBCB0A1 ),        
  },
);

const  MaterialColor Naranja =  const  MaterialColor (
   0xffEC9762 ,
   const  < int , Color > {
     50 :  const  Color ( 0xffEC9762 ),
     100 :  const  Color ( 0xffEC9762 ),
     200 :  const  Color ( 0xffEC9762 ),
     300 :  const  Color ( 0xffEC9762 ),
     400 :  const  Color ( 0xffEC9762 ),
     500 :  const  Color  ( 0xffEC9762 ),
     600 : const  Color ( 0xffEC9762 ),
     700 : const  Color ( 0xffEC9762 ),
     800 : const  Color ( 0xffEC9762 ),
     900 : const  Color ( 0xffEC9762 ),        
  },
);


const  MaterialColor BACKGROUND_COLOR_IMAGE =  const  MaterialColor (
   0xffFABF7C ,
   const  < int , Color > {
     50 :  const  Color ( 0xffFABF7C ),
     100 :  const  Color ( 0xffFABF7C ),
     200 :  const  Color ( 0xffFABF7C ),
     300 :  const  Color ( 0xffFABF7C ),
     400 :  const  Color ( 0xffFABF7C ),
     500 :  const  Color  ( 0xffFABF7C ),
     600 : const  Color ( 0xffFABF7C ),
     700 : const  Color ( 0xffFABF7C ),
     800 : const  Color ( 0xffFABF7C ),
     900 : const  Color ( 0xffFABF7C ),        
  },
);

const  MaterialColor BUTTON_COLOR =  const  MaterialColor (
   0xff8B8175 ,
   const  < int , Color > {
     50 :  const  Color ( 0xff8B8175 ),
     100 :  const  Color ( 0xff8B8175 ),
     200 :  const  Color ( 0xff8B8175 ),
     300 :  const  Color ( 0xff8B8175 ),
     400 :  const  Color ( 0xff8B8175 ),
     500 :  const  Color  ( 0xff8B8175 ),
     600 : const  Color ( 0xff8B8175 ),
     700 : const  Color ( 0xff8B8175 ),
     800 : const  Color ( 0xff8B8175 ),
     900 : const  Color ( 0xff8B8175 ),        
  },
);

const  MaterialColor TEXT =  const  MaterialColor (
   0xff121B22 ,
   const  < int , Color > {
     50 :  const  Color ( 0xff121B22 ),
     100 :  const  Color ( 0xff121B22 ),
     200 :  const  Color ( 0xff121B22 ),
     300 :  const  Color ( 0xff121B22 ),
     400 :  const  Color ( 0xff121B22 ),
     500 :  const  Color  ( 0xff121B22 ),
     600 : const  Color ( 0xff121B22 ),
     700 : const  Color ( 0xff121B22 ),
     800 : const  Color ( 0xff121B22 ),
     900 : const  Color ( 0xff121B22 ),        
  },
);

