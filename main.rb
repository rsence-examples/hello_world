##   
 #   Copyright 2010 Riassence Inc.
 #   http://riassence.com/
 #
 #   You should have received a copy of the GNU Lesser General Public License
 #   along with this software package. If not, contact licensing@riassence.com
 ##
 
# = Hello World
# Very simple hello world program.
#
# Please refer to http://rsence.org/projects/rsence/wiki for documentation.
# 
# Feel free to join http://rsence.org/projects/rsence/boards or 
# #rsence on the IRCnet and FreeNode networks for further 
# questions.
# 

class HelloWorld < GUIPlugin
  
  def button_responder(msg, value)
    # Get the particular session for the client (-> user)
    ses = get_ses( msg )
    
    # All (session specific) dynamic values can be accessed through ses
    ses[:text_value].set( msg, "Hello World")
    # Let's output something into the log as well
    return true
  end
  
end
