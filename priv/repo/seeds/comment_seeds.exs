alias ProjectManagementExample.Repo
alias ProjectManagementExample.Management.Comment

Repo.insert! %Comment {
  author_name: "Super Cool Project",
  content: "This project is the best project ever"
}

Repo.insert! %Comment{
  author_name: "Kinda Cool Project",
  content: "This project is best known for being moderately cool and not at all awesome"
}

Repo.insert! %Comment{
  author_name: "Lamest Project",
  content: "This project is the worst. If you are on this project, you did something wrong"
}
