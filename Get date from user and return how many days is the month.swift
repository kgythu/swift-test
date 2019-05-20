print("Enter the current date in this format: 2019 5 3\n")

if let input = readLine() {
    let date = input.split(separator: " ")
    if let year = Int(date[0]) {
        if let month = Int(date[1]) {
            if let day = Int(date[2]) {
                if day > 31 || month > 12 {
                    print("This date is wrong.")
                } else {
                    let months = ["January", "February", "March", "April", "May", "June",
                        "July", "August", "September", "October", "November", "December"]
                    let th:String
                    switch(day) {
                        case 1, 21, 31:
                            th = "st"
                        case 2, 22:
                            th = "nd"
                        case 3, 23:
                            th = "rd"
                        default:
                            th = "th"
                    }
                    print("\(day)\(th) of \(months[month - 1]), \(year).")
                    switch(month) {
                        case 4, 6, 9, 11:
                            if day > 30 {
                                print("This date is wrong.")
                            } else {
                                print("This month has 30 days.")
                            }
                        case 2:
                            if year % 400 == 0 || (year % 100 != 0 && year % 4 == 0) {
                                if day > 29 {
                                    print("This date is wrong.")
                                } else {
                                    print("This month has 29 days.")
                                }
                            } else {
                                if day > 28 {
                                    print("This date is wrong.")
                                } else {
                                    print("This month has 28 days.")
                                }
                            }
                        default:
                            print("This month has 31 days.")
                    }
                }
            } else {
                print("The format is not acceptable.")
            }
        } else {
            print("The format is not acceptable.")
        }
    } else {
        print("The format is not acceptable.")
    }
}
