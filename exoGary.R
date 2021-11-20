names <- list("Red [Franz]", "Gr(een)", "Gary")
nicknames     <- "Ade/i, Do(i)lfal+Do(i)lferl"

# Function take a list and a pattern to apply to all list element
remove_pattern_in_list <- function(list, pattern) {

  return_list <- list()
  i=1

  while(i< (length(list) + 1) ) {
     return_list[[i]]  <- gsub(pattern, '', list[i])
    i <- i + 1
  }
  return(return_list)
}

# pattern to remove parenthesis () and word inside => gsub("\\s*\\([^\\)]+\\", '')
# pattern to remove brackets [] and word inside => gsub('\\[.*?\\]', '', word)

# Remove all Names in a given list wich are into brackets []
remove_pattern_in_list(names, '\\[.*?\\]')
# Input: list("Red [Franz]", "Gr(een)", "Gary")
#  Output: 
  # [[1]]
  # [1] "Red "

  # [[2]]
  # [1] "Gr(een)"

  # [[3]]
  # [1] "Gary"


# Function qui prend en argument une string, un caractere qu'on veut changer, un caractere de remplacement
change_caractere_in_string <- function(string, caractere_to_change, replacement_caractere) {

  # On met le caractere dans le pattern (Regex) 
  pattern <- sprintf('[%s\\]', caractere_to_change)

  # On retourne la string modifié
  return(gsub(pattern, replacement_caractere, string))
}

# Sur la string 'nicknames' on veut changer les '+' et les remplacer par une virgule et un espace ', '
change_caractere_in_string(nicknames, '+', ', ')
# Input: "Ade/i, Do(i)lfal+Do(i)lferl"
# Output: "Ade/i, Do(i)lfal, Do(i)lferl"
