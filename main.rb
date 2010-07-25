##   
 #   Copyright 2010 Riassence Inc.
 #   http://riassence.com/
 #
 #   You should have received a copy of the GNU Lesser General Public License
 #   along with this software package. If not, contact licensing@riassence.com
 ##
 
# = Hello World
# Very simple hello world plugin.
#
# Please refer to http://rsence.org/projects/rsence/wiki for documentation.
# 
# Feel free to join http://rsence.org/projects/rsence/boards or 
# #rsence on the IRCnet and FreeNode networks for further 
# questions.
# 

class HelloWorld < GUIPlugin
  
  # The function to respond button click in the UI. This responder is bound for
  # a value in values.yaml and the value itself is bound in gui/main.yaml 
  # for HClickButton, which is rendered in the UI.
  def button_responder(msg, value)
    # Get the particular session for the client (-> the user)
    ses = get_ses( msg )
    
    # It is really important to notice that msg (and ses) countain
    # all the values defined in values.yaml, not just the one which
    # fires the responder function. In this case we are not even touching
    # the value which originally fired this function (:button_value),
    # as it is handled automatically elsewhere.
    ses[:text_value].set( msg, "Hello World")
    
    # Let's output something into the server log as well
    puts "Button pressed!"
    
    # If you wish to see the button value, please uncomment the following:
    # puts "Button value: #{ses[:button_value].data}"
    
    # Bonus advice!
    # Try running rsence in -a (auto-update) mode. E.g. 
    # rsence run -af 
    # This will enable you to update the changes in your program instantly just
    # by saving the source file!
    
    # Always return true when a responder has been executed succesfully.
    return true
  end
  
end
