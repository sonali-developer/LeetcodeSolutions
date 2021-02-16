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
print("Writing items into the Array")

dvdCollection[7] = avengers2DVD

let incrediblesDVD = DVD(withName: "The Incredibles", AndReleaseYear: 2004, AndDirector: "Brad Bird")

let findingDoryDVD = DVD(withName: "Finding Dory", AndReleaseYear: 2016, AndDirector: "Andrew Stanton")

let lionKingDVD = DVD(withName: "The Lion King", AndReleaseYear: 2019, AndDirector: "Jon Favreau")

// Put "The Incredibles" into the 4th place: index 3.

dvdCollection[3] = incrediblesDVD

// Put "Finding Dory" into the 10th place: index 9.
dvdCollection[9] = findingDoryDVD

// Put "The Lion King" into the 3rd place: index 2.
dvdCollection[2] = lionKingDVD

printingDVD()

print("****************************")


//Reading Elements from an Array


print(dvdCollection[7].name)
print(dvdCollection[10].name)
print(dvdCollection[3].name)

// Writing Items into an Array with a Loop

print("****************************")
print("Creating an array of squared numbers")
print("****************************")
var squaredNumbers: [Int] = Array(repeating: 0, count: 10)

for index in 0..<10 {
	let num = index + 1
	squaredNumbers[index] = (num * num)
}

print(squaredNumbers)
print("****************************")

print("Reading Items from an Array with a Loop")

print("****************************")

for num in squaredNumbers {
	print(num)
}

print("****************************")
/*
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
Writing items into the Array
The Avengers, directed by Josh Wheadon, released in 2012
The Avengers, directed by Josh Wheadon, released in 2012
The Lion King, directed by Jon Favreau, released in 2019
The Incredibles, directed by Brad Bird, released in 2004
The Avengers, directed by Josh Wheadon, released in 2012
The Avengers, directed by Josh Wheadon, released in 2012
The Avengers, directed by Josh Wheadon, released in 2012
The Avengers2, directed by Josh Wheadon, released in 2013
The Avengers, directed by Josh Wheadon, released in 2012
Finding Dory, directed by Andrew Stanton, released in 2016
The Avengers, directed by Josh Wheadon, released in 2012
The Avengers, directed by Josh Wheadon, released in 2012
The Avengers, directed by Josh Wheadon, released in 2012
The Avengers, directed by Josh Wheadon, released in 2012
The Avengers, directed by Josh Wheadon, released in 2012
****************************
The Avengers2
The Avengers
The Incredibles
****************************
Creating an array of squared numbers
****************************
[1, 4, 9, 16, 25, 36, 49, 64, 81, 100]
****************************
Reading Items from an Array with a Loop
****************************
1
4
9
16
25
36
49
64
81
100
****************************
*/

