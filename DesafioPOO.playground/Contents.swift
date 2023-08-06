import UIKit

/* Classe, Objeto e Instancia */
class Person {
    // Atributos e habilidades pessoais podem ser definidos aqui
}

class Car {
    
    // Caracteristicas
    var color: String?
    var brand: String?
    var model: String?
    
    // Ações/Comportamentos
    func turnOn() {
        print("O carro está em funcionamento")
    }
    
    func speedUp(speed: Int) {
        print("O carro está acelerando \(speed) por hora.")
    }
    
    func turnOff() {
        print("O carro parou de funcionar.")
    }
    
}

let man = Person()
let car = Car()
car.color = "Vermelhor"
car.brand = "Fiat"
car.model = "Pulse"
car.turnOn()
car.speedUp(speed: 30)
car.turnOff()


/* Propriedades, Metodos e inicializadores */


class Person {
    var age: Int!
    var gender: String!
    var color: String!
    var maritalStatus: String!
}

class BehaviorPerson {
    var age: Int!
    var gender: String!
    var color: String!
    var maritalStatus: String!
    
    func play(sport: String) {
        // Escreva aqui como sua instância da pessoa irá jogar
    }
}

class Wall {
    init() {
        // excute a inicialização
    }
}

class WhiteWall {
    var length: Double
    
    init() {
        length = 5.5
        print("Criamos o objeto wall.")
        print("Length = ", length)
    }
}
var whiteWall = WhiteWall()

class BlackWall {
    var length: Double
    
    init(length: Double) {
        self.length = length
        print("Length = ", length)
    }
}
var balckWall = BlackWall(length: 10.5)

class LongWall {
    var length: Double
    var height: Double
    
    init(length: Double, height: Double)  {
        self.length = length
        self.height = height
        print("A área é \(calculateArea())")
    }
    
    func calculateArea() -> Double {
        return length * height
    }
}
var longWall1 = LongWall(length: 20.5, height: 8.6)
var longWall2 = LongWall(length: 8.5, height: 6.3)

class PersonAge {
    var age: Int
    
    init() {
        age = 20
    }
    
    init(age: Int) {
        self.age = age
    }
    
    func getAge() -> Int {
        return age
    }
}
var personAge1 = PersonAge()
print("Person 1 Age:", personAge1.getAge())
var personAge2 = PersonAge(age: 23)
print("Person 2 Age:", personAge2.getAge())

class University {
    var name: String
    var rank: String
    
    init(name: String, rank: String) {
        self.name = name
        self.rank = rank
    }
    
    convenience init() {
        self.init(name: "Univerdade de São Paulo", rank: "1º")
    }
}
var university = University()
print(university.name)
print("Rank: ", university.rank)

class File {
    var folder: String
    
    init?(folder: String) {
        if folder.isEmpty {
            print("Folder Not Found")
            return nil
        }
        self.folder = folder
    }
}
var file = File(folder: "")
if file != nil {
    print("Arquivo encontrado com sucessop!!!")
} else {
    print("Erro ao busacar o arquivo")
}

struct PersonStruct {
    var name: String
    var age: Int
}
var personStruct = PersonStruct(name: "Pedro", age: 43)
print("Nome: ", personStruct.name)
print("Idade: ", personStruct.age)


/* Encapsulamento */

class Maths {
    let a: Int!
    let b: Int!
    
    // Encupsulado
    private var result: Int?
    
    init(a: Int, b: Int) {
        self.a = a
        self.b = b
    }
    
    func add() {
        result = a + b
    }
    
    func displayResult() {
        print("Result = \(result ?? 0)")
    }
}
let calculation = Maths(a: 2, b: 3)
calculation.add()
calculation.displayResult()

open class OpenClass {
    open var age: Int = 23
    open func play(sport: String) {}
}

public class PublicClass {
    public var age: Int = 23
    public func play(sport: String) {}
}

internal class InternalClass {
    internal var age: Int = 23
    internal func play(sport: String) {}
}

fileprivate class FileprivateClass {
    fileprivate var age: Int = 23
    fileprivate func play(sport: String) {}
}

private class PrivateClass {
    private var age: Int = 23
    private func play(sport: String) {}
}

/* Heranca */
class Person {
    var age: Int
    var gender: String
    var color: String
    var maritialStatus: String
    
    init(age: Int, gender: String, color: String, maritialStatus: String) {
        self.age = age
        self.gender = gender
        self.color = color
        self.maritialStatus = maritialStatus
    }
    
    func play(sport: String) {
        print("Esporte: \(sport)")
    }
    
    func play(intrument: String) {
        print("Instrumento: \(intrument)")
    }
}

class Men: Person {
    
}
let andy = Men(age: 20, gender: "Musculino", color: "Branco", maritialStatus: "Solteiro")
print(andy.age)
andy.play(sport: "Não pratica esportes")

class FootballPlayer: Person {
    
    override func play(sport: String) {
        print("Jogador de \(sport)")
    }
}
let footballPlayer = FootballPlayer(age: 35, gender: "Masculino", color: "Branco", maritialStatus: "Casado")
footballPlayer.play(sport: "futebol")

class Pilot: Person {
    
    override func play(sport: String) {
        print("Piloto de \(sport)")
    }
}
let pilot = Pilot(age: 22, gender: "Masculino", color: "Branco", maritialStatus: "Solteiro")
pilot.play(sport: "formula 1")

class Rock: Person {
    
    override func play(intrument: String) {
        print("Toca \(intrument)")
    }
}
let rock = Rock(age: 18, gender: "Feminio", color: "Branco", maritialStatus: "Solteiro")
rock.play(sport: "Não pratica esportes")
rock.play(intrument: "Guitarra")

/* polimorfismo */
class Player {
    let name: String
    
    init(name: String) {
        self.name = name
    }
    
    func play() {
        print("Comportamento padrão")
    }
    
}

class Batsman: Player {
    
    override func play() {
        bat()
    }
    
    private func bat() {
        print("\(name) está rebatendo a bola!")
    }
}

class Bowler: Player {
    
    override func play() {
        bowl()
    }
    
    private func bowl() {
        print("\(name) está jogando a bola!")
    }
}

class CricketTeam {
    let name: String
    let team: [Player]
    
    init(name: String, team: [Player]) {
        self.name = name
        self.team = team
    }
    
    func play() {
        team.forEach { $0.play() }
    }
}

let pedro = Bowler(name: "Pedro")
let maria = Batsman(name: "Maria")
let rioCricket = CricketTeam(name: "Rio Cricket", team: [pedro, maria])
rioCricket.play()

