import UIKit
var prereqs_courses = [
    ("Foundations of Computer Science", "Operating Systems"),
    ("Data Structures", "Algorithms"),
    ("Computer Networks", "Computer Architecture"),
    ("Algorithms", "Foundations of Computer Science"),
    ("Computer Architecture", "Data Structures"),
    ("Software Design", "Computer Networks")
]

let dictionary = prereqs_courses.reduce(into: [:]) { $0[$1.0] = $1.1 }
print(dictionary)



//Software Design

//Computer Networks
//Computer Architecture

//Data Structures
//Algorithms
//Foundations of Computer Science

//Operating Systems
