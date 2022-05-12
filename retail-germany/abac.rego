package retail.germany.abac

default allow = false

allow {
  user_is_manager
}

allow {
  user := data.retailgermany.users[input.user]

  user.jobTitle == input.jobTitle
  user.costcenter == input.costcenter
}

user_is_manager {
  user := data.retailgermany.users[input.user]

  user.jobTitle == "manager"
  user.costcenter == input.costcenter
}
