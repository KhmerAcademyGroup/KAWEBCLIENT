package org.khmeracademy.app.controllers.sockets;

import java.io.IOException;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

import javax.websocket.OnClose;
import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.Session;
import javax.websocket.server.ServerEndpoint;

@ServerEndpoint("/websockets/comment")
public class CommentSocketController {

	private static Set<Session> clients = Collections.synchronizedSet(new HashSet<Session>());
	
	  @OnMessage
	  public void onMessage(String message, Session session) 
	    throws IOException, InterruptedException {
		  System.out.println(message);
//		  synchronized(clients){
//				// Iterate over the connected sessions
//				// and broadcast the received message
//				for(Session client : clients){
//					if (!client.equals(session)){
//						client.getBasicRemote().sendText(message);
//					}
//				}
//			}
		  
		  synchronized(clients){
		  for (Session client : clients) {
				try {
					System.out.println("MESSAGE=" + message);
					client.getBasicRemote().sendText(message);
				} catch (IOException ex) {
					ex.printStackTrace();
				}
			}
		  }
	  }
	
	@OnOpen
    public void onOpen (Session session) {
		// Add session to the connected sessions set
		clients.add(session);
    }

    @OnClose
    public void onClose (Session session) {
    	// Remove session from the connected sessions set
    	clients.remove(session);
    }
}