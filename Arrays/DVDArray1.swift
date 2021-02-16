// A simple definition for a DVD.
public class DVD {
    public var name: String = "";
    public var releaseYear:Int = 2010;
    public var director: String = "Karan Johar";

    init(withName name: String, AndReleaseYear releaseYear: Int, AndDirector director: String) {
        self.name = name;
        self.releaseYear = releaseYear;
        self.director = director;
    }

    func toString() -> String {
        let description = "\(self.name), directed by \(self.director ), released in \(self.releaseYear)"
	return description
    }
}

// The actual code for creating an Array to hold DVD's.

let DVD1 = DVD(withName: "The Avengers", AndReleaseYear: 2012, AndDirector: "Josh Wheadon")
print("Printing Single DVD instance")

print("****************************")

print(DVD1.name)
print(DVD1.releaseYear)
print(DVD1.director)
print(DVD1.toString())

print("****************************")

let avengers2DVD = DVD(withName: "The Avengers2", AndReleaseYear: 2013, AndDirector: "Josh Wheadon")

//Initializing the DVD Array

var dvdCollection: [DVD] = Array(repeating: DVD1, count: 15)


print("The number of dvd in collection is - \(dvdCollection.count)")

func printingDVD() {
	for dvd in dvdCollection {
		print(dvd.toString())
	}

}

printingDVD()
print("****************************")

dvdCollection[7] = avengers2DVD

printingDVD()

print("****************************")


Arrays % swift DVDArray1.swift
Printing Single DVD instance
****************************
The Avengers
2012
Josh Wheadon
The Avengers, directed by Josh Wheadon, released in 2012
****************************
The number of dvd in collection is - 15
The Avengers, directed by Josh Wheadon, released in 2012
The Avengers, directed by Josh Wheadon, released in 2012
The Avengers, directed by Josh Wheadon, released in 2012
The Avengers, directed by Josh Wheadon, released in 2012
The Avengers, directed by Josh Wheadon, released in 2012
The Avengers, directed by Josh Wheadon, released in 2012
The Avengers, directed by Josh Wheadon, released in 2012
The Avengers, directed by Josh Wheadon, released in 2012
The Avengers, directed by Josh Wheadon, released in 2012
The Avengers, directed by Josh Wheadon, released in 2012
The Avengers, directed by Josh Wheadon, released in 2012
The Avengers, directed by Josh Wheadon, released in 2012
The Avengers, directed by Josh Wheadon, released in 2012
The Avengers, directed by Josh Wheadon, released in 2012
The Avengers, directed by Josh Wheadon, released in 2012
****************************
The Avengers, directed by Josh Wheadon, released in 2012
The Avengers, directed by Josh Wheadon, released in 2012
The Avengers, directed by Josh Wheadon, released in 2012
The Avengers, directed by Josh Wheadon, released in 2012
The Avengers, directed by Josh Wheadon, released in 2012
The Avengers, directed by Josh Wheadon, released in 2012
The Avengers, directed by Josh Wheadon, released in 2012
The Avengers2, directed by Josh Wheadon, released in 2013
The Avengers, directed by Josh Wheadon, released in 2012
The Avengers, directed by Josh Wheadon, released in 2012
The Avengers, directed by Josh Wheadon, released in 2012
The Avengers, directed by Josh Wheadon, released in 2012
The Avengers, directed by Josh Wheadon, released in 2012
The Avengers, directed by Josh Wheadon, released in 2012
The Avengers, directed by Josh Wheadon, released in 2012
****************************
