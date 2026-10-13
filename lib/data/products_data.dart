import 'package:flutter/material.dart';
import '../models/product.dart';

const List<String> categories = [
  'Todos',
  'Microcontroladores',
  'Sensores',
  'Componentes',
  'Herramientas',
  'Energía',
];

// Imágenes: si la URL falla o no hay internet, se muestra un icono de respaldo.
const List<Product> products = [
  Product(
    id: 'p1',
    name: 'Arduino UNO R3',
    category: 'Microcontroladores',
    shortDescription: 'Placa ideal para aprender electrónica y programación.',
    description:
        'El Arduino UNO R3 es la placa más popular para proyectos de electrónica. '
        'Basada en el ATmega328P, es perfecta para principiantes y para prototipos '
        'rápidos de domótica, robótica y automatización.',
    price: 289.00,
    rating: 4.8,
    stock: 35,
    warranty: '6 meses',
    imageUrl:
        'https://images.unsplash.com/photo-1608564697071-ddf911d81370?w=800',
    icon: Icons.memory,
    specs: ['ATmega328P', '14 pines digitales', '6 entradas analógicas', '5 V / 16 MHz'],
  ),
  Product(
    id: 'p2',
    name: 'ESP32 DevKit',
    category: 'Microcontroladores',
    shortDescription: 'Microcontrolador con WiFi y Bluetooth integrados.',
    description:
        'Placa de desarrollo con procesador dual-core, WiFi y Bluetooth. '
        'Excelente para proyectos IoT, sensores remotos y dispositivos conectados.',
    price: 189.00,
    rating: 4.7,
    stock: 50,
    warranty: '6 meses',
    imageUrl:
        'https://images.unsplash.com/photo-1553406830-ef2513450d76?w=800',
    icon: Icons.wifi,
    specs: ['Dual-core 240 MHz', 'WiFi + Bluetooth', '30 pines GPIO', '3.3 V'],
  ),
  Product(
    id: 'p3',
    name: 'Raspberry Pi 4 (4 GB)',
    category: 'Microcontroladores',
    shortDescription: 'Mini computadora potente para proyectos avanzados.',
    description:
        'Computadora de placa reducida con procesador de cuatro núcleos, salida '
        'dual 4K y conectividad completa. Ideal para servidores, multimedia y robótica.',
    price: 1450.00,
    rating: 4.9,
    stock: 12,
    warranty: '1 año',
    imageUrl:
        'https://images.unsplash.com/photo-1587302912306-cf1ed9c33146?w=800',
    icon: Icons.developer_board,
    specs: ['Quad-core 1.5 GHz', '4 GB RAM', 'USB 3.0', 'Doble HDMI'],
  ),
  Product(
    id: 'p4',
    name: 'Sensor ultrasónico HC-SR04',
    category: 'Sensores',
    shortDescription: 'Mide distancias de 2 cm a 4 m con precisión.',
    description:
        'Sensor de distancia por ultrasonido muy usado en robots evasores de '
        'obstáculos, sistemas de estacionamiento y medición de nivel.',
    price: 45.00,
    rating: 4.5,
    stock: 120,
    warranty: '3 meses',
    imageUrl:
        'https://images.unsplash.com/photo-1518770660439-4636190af475?w=800',
    icon: Icons.sensors,
    specs: ['Rango 2 cm – 4 m', 'Voltaje 5 V', 'Ángulo 15°', '4 pines'],
  ),
  Product(
    id: 'p5',
    name: 'Sensor DHT11 temp/humedad',
    category: 'Sensores',
    shortDescription: 'Lectura de temperatura y humedad ambiental.',
    description:
        'Sensor digital económico para medir temperatura y humedad relativa. '
        'Perfecto para estaciones meteorológicas y proyectos de invernadero.',
    price: 55.00,
    rating: 4.3,
    stock: 90,
    warranty: '3 meses',
    imageUrl:
        'https://images.unsplash.com/photo-1555664424-778a1e5e1b48?w=800',
    icon: Icons.thermostat,
    specs: ['0–50 °C', '20–90 % HR', 'Salida digital', '3.3–5 V'],
  ),
  Product(
    id: 'p6',
    name: 'Kit de resistencias (600 pzs)',
    category: 'Componentes',
    shortDescription: 'Surtido de resistencias de 1/4 W en valores comunes.',
    description:
        'Kit con 30 valores distintos de resistencias de película metálica, '
        'organizado en caja. Imprescindible para cualquier taller de electrónica.',
    price: 120.00,
    rating: 4.6,
    stock: 60,
    warranty: '1 mes',
    imageUrl:
        'https://images.unsplash.com/photo-1601132359864-c974e79890ac?w=800',
    icon: Icons.electrical_services,
    specs: ['600 piezas', '30 valores', '1/4 W', 'Tolerancia 1 %'],
  ),
  Product(
    id: 'p7',
    name: 'Protoboard 830 puntos',
    category: 'Componentes',
    shortDescription: 'Tablero de pruebas sin soldadura para prototipos.',
    description:
        'Protoboard de alta calidad con 830 puntos de conexión y rieles de '
        'alimentación. Compatible con cables jumper y componentes estándar.',
    price: 75.00,
    rating: 4.4,
    stock: 80,
    warranty: '1 mes',
    imageUrl:
        'https://images.unsplash.com/photo-1597852074816-d933c7d2b988?w=800',
    icon: Icons.grid_on,
    specs: ['830 puntos', '2 rieles dobles', 'Adhesivo trasero', '165 x 55 mm'],
  ),
  Product(
    id: 'p8',
    name: 'Multímetro digital',
    category: 'Herramientas',
    shortDescription: 'Mide voltaje, corriente y resistencia con precisión.',
    description:
        'Multímetro digital con pantalla LCD, prueba de continuidad y diodos. '
        'Herramienta básica para diagnóstico y reparación electrónica.',
    price: 320.00,
    rating: 4.7,
    stock: 28,
    warranty: '1 año',
    imageUrl:
        'https://images.unsplash.com/photo-1581092160562-40aa08e78837?w=800',
    icon: Icons.speed,
    specs: ['Pantalla LCD', 'Voltaje AC/DC', 'Continuidad sonora', 'Incluye puntas'],
  ),
  Product(
    id: 'p9',
    name: 'Cautín 60 W con soporte',
    category: 'Herramientas',
    shortDescription: 'Cautín de temperatura ajustable para soldar.',
    description:
        'Cautín eléctrico con control de temperatura de 200 a 450 °C, punta '
        'de larga duración y soporte metálico incluido.',
    price: 210.00,
    rating: 4.5,
    stock: 40,
    warranty: '6 meses',
    imageUrl:
        'https://images.unsplash.com/photo-1563770660941-20978e870e26?w=800',
    icon: Icons.build,
    specs: ['60 W', '200–450 °C', 'Punta intercambiable', 'Con soporte'],
  ),
  Product(
    id: 'p10',
    name: 'Batería LiPo 3.7 V 2000 mAh',
    category: 'Energía',
    shortDescription: 'Batería recargable ligera para proyectos portátiles.',
    description:
        'Batería de polímero de litio con circuito de protección. Ideal para '
        'drones, robots móviles y dispositivos portátiles.',
    price: 160.00,
    rating: 4.4,
    stock: 45,
    warranty: '3 meses',
    imageUrl:
        'https://images.unsplash.com/photo-1619641805634-b867f535071c?w=800',
    icon: Icons.battery_charging_full,
    specs: ['3.7 V', '2000 mAh', 'Recargable', 'Con protección'],
  ),
  Product(
    id: 'p11',
    name: 'Fuente regulable 5–12 V',
    category: 'Energía',
    shortDescription: 'Fuente de alimentación para protoboard y proyectos.',
    description:
        'Módulo de alimentación con salida regulable de 5 a 12 V y conexión USB. '
        'Compatible con protoboard estándar.',
    price: 95.00,
    rating: 4.2,
    stock: 70,
    warranty: '3 meses',
    imageUrl:
        'https://images.unsplash.com/photo-1558618666-fcd25c85cd64?w=800',
    icon: Icons.bolt,
    specs: ['5 V / 12 V', 'Entrada USB', 'Salida a protoboard', 'LED indicador'],
  ),
  Product(
    id: 'p12',
    name: 'Kit de LEDs (300 pzs)',
    category: 'Componentes',
    shortDescription: 'LEDs de 5 mm en varios colores con resistencias.',
    description:
        'Surtido de 300 LEDs de 5 mm en rojo, verde, azul, amarillo y blanco. '
        'Ideal para prácticas de iluminación y señalización.',
    price: 85.00,
    rating: 4.6,
    stock: 100,
    warranty: '1 mes',
    imageUrl:
        'https://images.unsplash.com/photo-1550751827-4bd374c3f58b?w=800',
    icon: Icons.lightbulb,
    specs: ['300 piezas', '5 colores', '5 mm', 'Incluye caja'],
  ),
];
