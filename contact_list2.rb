Contacts = [
    {name: 'John', phone_number: "801-111-1111"},
    {name: 'Mike', phone_number: "801-222-2222"},
    {name: 'Joe', phone_number: "801-333-3333"}
]

def menu
    puts "----Contact List----"
    puts "1) New Contact"
    puts "2) View Contacts"
    puts "3) Delete Contact"
    puts "4) Exit"
    
end


def new_contact
    puts "Enter a name:"
    name = gets.strip
    puts "Enter a phone nunber:"
    phone = gets.strip
    #delete the  [:name] to get it to work again. 
    Contacts[:name] << name
    Contacts << phone
    puts "***Your contact has been added***"
    user_selection
end
 
def view_contacts
    puts "***Here are your contacts:***"
    puts Contacts
    user_selection
end

def remove_contact
    puts "Who would you like to delete?"
    name = gets.strip.to_s
    Contacts.delete(name)
    puts Contacts
    user_selection
end



def user_selection
    menu
    choice = gets.to_i
    case choice
    when 1
        new_contact
    when 2
        view_contacts
    when 3
        remove_contact
    when 4
        puts "Bye!"
    end
end

user_selection















