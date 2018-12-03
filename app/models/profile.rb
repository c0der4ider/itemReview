class Profile < ApplicationRecord
  belongs_to :user

  ROLES = {
    super: 'Super Admin',
    admin: 'Admin',
    mod: 'Moderator',
    brand: 'Brand',
    ent: 'Entity',
    vip: 'Vip User',
    user: 'User'
  }
end
