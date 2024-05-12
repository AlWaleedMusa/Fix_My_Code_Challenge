#!/usr/bin/python3
""" 
Module creating a user class
"""

class User():
    """ class that create user """

    def __init__(self):
        """ initiating a new user """
        self.__email = None

    @property
    def email(self):
        """ Documentation """
        return self.__email

    @email.setter
    def email(self, value):
        """ Documentation """
        if type(value) is not str:
            raise TypeError("email must be a string")
        self.__email = value

   
    
if __name__ == "__main__":

    u = User()
    u.email = "john@snow.com"
    print(u.email)
