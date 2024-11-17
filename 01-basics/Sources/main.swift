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

//07- Flujos de control

let indidivualScores = [75,43,103,87,12]
var teamScore = 0
for score in indidivualScores {
    if score > 50 {
        teamScore += 3
    } else {
        teamScore += 1
    }
}
print(teamScore)

let scooreDecoration = if (teamScore > 10) {
    "🎉"
} else {
    ""
}
print("Score:", teamScore, scooreDecoration)

//08- Optionals
var optionalString: String? = "Hello"
print(optionalString == nil)

var optionalName: String? = "John Applessed"
var greeting = "Hello!"
if let p_name = optionalName {
    greeting = "Hello, \(p_name)"
}
print(greeting)

//let nilValue : String = nil // <== Genera error porque "niValue" no es optional
var nilValue : String = "Hola"
//nilValue = nil // <== Hacer esto tambien genera error porque no permite que un "nil" sea asignado a un String, solo se puede Optional

// let nickName : String ? = nil  //<=== Si o si, el signo "?" tiene que estar pegado a "String"

let nickname : String? = nil
let fullName : String = "John Applessed"
let informalGreeting = "Hi \(nickname ?? fullName)" //este "??" hace una verificación si "nickName" es "nil" entonces toma el "fullName"
print(informalGreeting)

if let nickname {  //Abrevia la validación si es "nil" o no
    print("Hey, \(nickname)")
}

//09- Switch
let vegetable = "red pepper"
switch vegetable {
    case "celery":
        print("Add some raisins and make ants on a log.")
    case "cucumber", "watercress":
        print("That would make a good tea sandwich.")
    case let x where x.hasSuffix("pepper"):
        print("Is it a spicy \(x)?")
    default:
        print("Everything tastes good in soup.") //El "default" statement es obligatorio, sino sale error
}

//10- For-in
let interestingNumber = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25],
]

var largest = 0
var typeLargest = ""
for(type, numbers) in interestingNumber {
    for number in numbers {
        if number > largest {
            largest = number
            typeLargest = type
        }
    }
}

print(largest)
print(typeLargest)

//11- while & repeat-while
var n=2
while n<100 {
    n*=2
}
print(n)

var m=2
repeat {
    m*=2
} while m<100
print(m)

//12- range of indexes
var total1 = 0
for i in 0..<4 { //toma en cuenta los 0,1,2,3 (no toma el 4)
    total1 += i
}
print(total1)

var total2 = 0;
for i in 0...4 { //toma en cuenta los 0,1,2,3,4
    total2 += i
}
print(total2)


//13- Functions
func greet(person: String, day: String) -> String { // El "-> String" indica que el metodo devolvera "String"
    return "Hello \(person), today is \(day)."
}
print(greet(person: "Claudio", day: "Sunday")) //Por defecto, los parametros tienen el nombre de los argumentos del metodo, se deben colocar en este caso "person" y "day"

func greeting(_ person: String, on day: String) -> String { //En este caso, al poner "_" omite el tener que poner el nombre del parametro cuando se usa el metodo
    return "Hello \(person), today is \(day)."              //En este caso, al poner una palabra antes del nombre del parametro (en este caso "on"), reemplaza a "day" al momento de llamar al metodo
}
print(greeting("Aaron", on: "Monday"))

//14- Tuple return in functions
func calculateStatistics(scores: [Int]) -> (min: Int, max: Int, sum: Int) { //Este return se le conoce como "tuple", que es una estructura de datos que consiste en multiples partes
    var max = scores[0]
    var min = scores[0]
    var sum = 0
    for score in scores {
        if score > max {
            max = score 
        } else if score < min {
            min = score
        }
        sum += score
    }
    return (min, max, sum)
}
let stadistics = calculateStatistics(scores: [5,3,100,3,9])
print(stadistics)
print(stadistics.sum)
print(stadistics.2)

//15- Nested functions
func returnFifteen() -> Int {
    var y = 10
    func add() {
        y += 5
    }
    add()
    return y 
}
print(returnFifteen())


//16- Return function as function
func makeIncrement() -> ((Int)-> Int) { //Para decir que retorne una funcion se coloca como "((Int)->Int)"
    func addOne(number : Int) -> Int {
        return number + 1
    }
    return addOne
}
var increment = makeIncrement() // Esto se explica como que la variable ahora pasa a ser la funcion que retorna "makeIncrement()"
print(increment(7)) //Es por eso que permite esto