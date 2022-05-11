package retail.austria.rbac

allow {
  user_is_manager
}

allow {
  some i

  user := data.retailaustria.users[input.user]

  user.roles[i] == input.role
  user.department == input.department
}

user_is_manager {
  some i

  user := data.retail-austria.users[input.user]

  user.roles[i] == "manager"
  user.department == input.department
}
