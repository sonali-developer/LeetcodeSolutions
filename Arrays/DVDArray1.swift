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
print(DVD1.name)
print(DVD1.releaseYear)
print(DVD1.director)
print(DVD1.toString())


/* Output

sonalipatel@Sonalis-MacBook-Pro Arrays % swift DVDArray1.swift
The Avengers
2012
Josh Wheadon
The Avengers, directed by Josh Wheadon, released in 2012

*/

