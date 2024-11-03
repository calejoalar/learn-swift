// The Swift Programming Language
// https://docs.swift.org/swift-book


// 01- Imprimir un Hola mundo
print("Hello, world!")
print("Hallo")
print("Hola mundo")

// 02- Uso de variables
let name = "Claudio";
//name = "Aaron"  //<= Incorrecto porque "let" es usado para constantes, en lugar de variables

var age = 26
age = 27

print(name + " " + String(age))

// 03- Definir el tipo de dato de la variables

var color : String = "blue"
let documentNumber: String = "03923344"
var annualSalary: Double = 982332.32

print(name + " " + String(age) + " " + color + " " + String(annualSalary)) //Se pone String adelante para convertir a texto

//04- Otra forma de convertir a texto
var apples = 3
var oranges = 4
let appleSummary = "I have \(apples) apples in my hand"
let orangeSummary = "I have \(oranges) oranges in my bag"
let fruitSummary = "I have \(apples + oranges) fruits in total"
print(appleSummary)
print(orangeSummary)
print(fruitSummary)

//05- Otra forma de colocar texto en multiples lineas
let quotation = """
Even though there's whitespace to the left,
the actual lines aren't indented.
    Except for this line.
Double quotes (") can appear without being escaped.
I still have \(apples + oranges) pieces of fruit.
"""
print(quotation)

//06- Arrays y Dictionaries
var fruits = ["strawberries", "limes", "tangerines"]
fruits[1] = "grapes"

var occupations = [
    "Malcolm": "Captian",
    "Kaylee": "Mechanic"
]
occupations["Jayne"] = "Public Relations"

fruits.append("blueberries")
print(fruits)
print(occupations)
fruits = [] //limpia un array
occupations = [:] //limpia un dictionary
print(fruits)
print(occupations)

//Si se requiere inicializar una variable pero como vacio, se recomienda si especificar el tipo de datos
var t_fruits : [String] = []
var t_occupations : [String: Double] = [:]
print(t_fruits)
print(t_occupations)