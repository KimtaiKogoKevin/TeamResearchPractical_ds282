assign_region <- function(country) {
    
    # EUROPE
    europe <- c("Albania", "Andorra", "Armenia", "Austria", "Azerbaijan", "Belarus", 
                "Belgium", "Bosnia and Herzegovina", "Bulgaria", "Croatia", "Cyprus", 
                "Czech Republic", "Czechia", "Denmark", "Estonia", "Finland", "France", 
                "Georgia", "Germany", "Greece", "Hungary", "Iceland", "Ireland", "Italy", 
                "Kazakhstan", "Kosovo", "Latvia", "Lithuania", "Luxembourg", "Macedonia", 
                "North Macedonia", "Malta", "Moldova", "Monaco", "Montenegro", "Netherlands", 
                "Norway", "Poland", "Portugal", "Romania", "Russia", "Russian Federation",
                "San Marino", "Serbia", "Slovakia", "Slovenia", "Spain", "Sweden", 
                "Switzerland", "Turkey", "Ukraine", "United Kingdom", "Vatican City")
    
    # AMERICAS
    americas <- c("Antigua and Barbuda", "Argentina", "Bahamas", "Barbados", "Belize", 
                  "Bolivia", "Brazil", "Canada", "Chile", "Colombia", "Costa Rica", "Cuba", 
                  "Dominica", "Dominican Republic", "Ecuador", "El Salvador", "Grenada", 
                  "Guatemala", "Guyana", "Haiti", "Honduras", "Jamaica", "Mexico", 
                  "Nicaragua", "Panama", "Paraguay", "Peru", "Saint Kitts and Nevis", 
                  "Saint Lucia", "Saint Vincent and the Grenadines", "Suriname", 
                  "Trinidad and Tobago", "United States", "United States of America",
                  "USA", "Uruguay", "Venezuela")
    
    # ASIA (including Middle East and Oceania)
    asia <- c("Afghanistan", "Australia", "Bahrain", "Bangladesh", "Bhutan", "Brunei", 
              "Cambodia", "China", "Fiji", "India", "Indonesia", "Iran", "Iraq", "Israel", 
              "Japan", "Jordan", "Kiribati", "Kuwait", "Kyrgyzstan", "Laos", "Lebanon", 
              "Malaysia", "Maldives", "Marshall Islands", "Micronesia", "Mongolia", 
              "Myanmar", "Nauru", "Nepal", "New Zealand", "North Korea", "Oman", 
              "Pakistan", "Palau", "Palestine", "Papua New Guinea", "Philippines", 
              "Qatar", "Samoa", "Saudi Arabia", "Singapore", "Solomon Islands", 
              "South Korea", "Sri Lanka", "Syria", "Taiwan", "Tajikistan", "Thailand", 
              "Timor-Leste", "Tonga", "Turkmenistan", "Tuvalu", "United Arab Emirates", 
              "UAE", "Uzbekistan", "Vanuatu", "Vietnam", "Yemen")
    
    # AFRICA
    africa <- c("Algeria", "Angola", "Benin", "Botswana", "Burkina Faso", "Burundi", 
                "Cabo Verde", "Cameroon", "Central African Republic", "Chad", "Comoros", 
                "Congo", "Democratic Republic of the Congo", "Congo (Brazzaville)",
                "Congo (Kinshasa)", "Djibouti", "Egypt", "Equatorial Guinea", "Eritrea", 
                "Eswatini", "Ethiopia", "Gabon", "Gambia", "Ghana", "Guinea", 
                "Guinea-Bissau", "Ivory Coast", "Cote d'Ivoire", "Kenya", "Lesotho", 
                "Liberia", "Libya", "Madagascar", "Malawi", "Mali", "Mauritania", 
                "Mauritius", "Morocco", "Mozambique", "Namibia", "Niger", "Nigeria", 
                "Rwanda", "Sao Tome and Principe", "Senegal", "Seychelles", 
                "Sierra Leone", "Somalia", "South Africa", "South Sudan", "Sudan", 
                "Tanzania", "Togo", "Tunisia", "Uganda", "Zambia", "Zimbabwe")
    
    # Initialize result vector
    result <- character(length(country))
    
    # Assign regions
    result[country %in% europe] <- "Europe"
    result[country %in% americas] <- "Americas"
    result[country %in% asia] <- "Asia"
    result[country %in% africa] <- "Africa"
    
    # Mark unmatched countries for review
    result[result == ""] <- "Unmatched"
    
    return(result)
}
# Apply the mapping  to the dataset
# df$Region <- assign_region(df$Country)
