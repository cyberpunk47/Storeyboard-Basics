enum Roles{
    case ADMIN
    case USER
    case GUEST
}
let signal = Roles.ADMIN
switch signal{
case .ADMIN:
    print("Admin has all the access")
case .USER:
    print("User has limited access")
case .GUEST:
    print("Guest has no access")
}
