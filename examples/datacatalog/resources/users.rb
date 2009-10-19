module DataCatalog

  class Users < Base
    include SinatraResource::Resource

    model User

    # == Permissions

    roles Roles
    permission :read   => :basic
    permission :modify => :owner

    # == Properties
  
    property :name,       :r => :basic
    property :email,      :r => :owner
    property :role,       :r => :owner, :w => :admin
    property :_api_key,   :r => :owner, :w => :admin

    property :id,         :r => :basic, :w => :nobody
    property :created_at, :r => :owner, :w => :nobody
    property :updated_at, :r => :owner, :w => :nobody

    # == Callbacks
  end
  
  Users.build

end
