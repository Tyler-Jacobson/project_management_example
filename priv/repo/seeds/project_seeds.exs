alias ProjectManagementExample.Repo
alias ProjectManagementExample.Management.Project

Repo.insert! %Project {
  title: "Super Cool Project",
  description: "This project is the best project ever"
}

Repo.insert! %Project{
  title: "Kinda Cool Project",
  description: "This project is best known for being moderately cool and not at all awesome"
}

Repo.insert! %Project{
  title: "Lamest Project",
  description: "This project is the worst. If you are on this project, you did something wrong"
}
