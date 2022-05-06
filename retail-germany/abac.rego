package retail.germany.abac

allow {
  user_is_manager
}

allow {
  user := data.users[input.user]

  user.jobTitle == input.jobTitle
  user.costcenter == input.costcenter
}

user_is_manager {
  user := data.users[input.user]

  user.jobTitle == "manager"
  user.costcenter == input.costcenter
}
