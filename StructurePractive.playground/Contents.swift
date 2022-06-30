//basic data types: String, Int, Float, Double, Boolean, Array, Dictionary

//custom data type: something that groups together related properties and behaviors. ex) quiz questions: we have 2D array(question and answer that interact together)
// structure can have properties and methods(function).

struct Town {
    let name = "JaehoLand"
    var citizens = ["Jaeho", "Jack Bauer"]
    var resources = ["Grain": 100, "Ore": 42, "Wool": 75]
    
    func fortify() {
        print("Defences increased!")
    }
}

//"initializing the structure": "creating actual object that we can use"

var myTown = Town()
print(myTown.citizens)
print("\(myTown.name) has \(myTown.resources["Grain"]!) bags of grain.")

myTown.citizens.append("Keanu Reeves")
print(myTown.citizens.count)

myTown.fortify()

//creating a structure is same as creating a blue print.
//we can plan how an object from a stucture can behave or look like.
//initializing a structure means we can turn into a structure into an actual object.

//purpose of initializer:

struct TownGeneral {
    let name: String
    var citizens: [String]
    var resources: [String: Int]
    
    //name, citizens, resources in 'init' are inputs.
    init(name: String, citizens: [String], resources: [String: Int]) {
        
        //'self' refers to the eventual object that will be created from the structure blueprint.
        //self.name refering the property name of the structure TownGeneral will eventually refers to the obect that will be initialized.
        self.name = name
        self.citizens = citizens
        self.resources = resources
    }
    
    func fortify() {
        print("Defences increased!")
    }
}

var anotherTown = TownGeneral(name: "Nameless Island", citizens: ["Tom"], resources: ["Coconuts" : 100])
var ghostTown = TownGeneral(name: "Ghosty McGhostface", citizens: [], resources: ["Tumbleweed" : 1])

anotherTown.citizens.append("Wilson")
ghostTown.fortify()
