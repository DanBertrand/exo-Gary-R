names <- list("Red [Franz]", "Gr(een)", "Gary")
nicknames     <- "Ade/i, Do(i)lfal+Do(i)lferl"

# Function take a list and 
remove_pattern_in_list <- function(list, regex) {
  return_list <- list()
  i=1

  while(i< (length(list) + 1) ) {
     return_list[[i]]  <- gsub(regex, '', list[i])
    i <- i + 1
  }
  return(return_list)
}

# pattern to remove parenthesis () and word inside => gsub("\\s*\\([^\\)]+\\", '')
# pattern to remove brackets [] and word inside => gsub('\\[.*?\\]', '', word)

# Remove all Names wich are into brackets []
remove_pattern_in_list(names, '\\[.*?\\]')
#  Output : 
  # [[1]]
  # [1] "Red "

  # [[2]]
  # [1] "Gr(een)"

  # [[3]]
  # [1] "Gary"


# Function qui prend en argument une string, un caractere qu'on veut changer, le caracter de remplacement
change_caractere_in_string <- function(string, caractere_to_change, replacement_caractere) {

  # On met le caractere dans le pattern (Regex) 
  pattern <- sprintf('[%s\\]', caractere_to_change)

  # On retourne la 
  return(gsub(pattern, replacement_caractere, string))
}

# Sur la string 'nicknames' on veut changer les '+' et les remplacer par une virgule et un espace ', '
change_caractere_in_string(nicknames, '+', ', ')
# Output: "Ade/i, Do(i)lfal, Do(i)lferl"
