package com.shshilan.red5;

import org.red5.server.adapter.ApplicationAdapter;
import org.red5.server.api.IClient;
import org.red5.server.api.IConnection;
import org.red5.server.api.IScope;
import org.red5.server.api.stream.IBroadcastStream;


/** 
 * @author lanbz 
 * @date 2013-9-29 上午10:46:45 
 * @version 1.0 
 */
public class Application extends ApplicationAdapter {

	@Override
	public synchronized boolean connect(IConnection conn, IScope scope,
			Object[] params) {
		// TODO Auto-generated method stub
		
		System.out.println("yes-----------connect");
		return super.connect(conn, scope, params);
	}

	@Override
	public synchronized void disconnect(IConnection conn, IScope scope) {
		// TODO Auto-generated method stub
		System.out.println("yes-----------disconnect");
		super.disconnect(conn, scope);
	}

	@Override
	public synchronized boolean join(IClient client, IScope scope) {
		// TODO Auto-generated method stub
		System.out.println("yes-----------join");
		return super.join(client, scope);
	}

	@Override
	public synchronized void leave(IClient client, IScope scope) {
		// TODO Auto-generated method stub
		System.out.println("yes-----------leave");
		super.leave(client, scope);
	}

	@Override
	public synchronized boolean start(IScope scope) {
		// TODO Auto-generated method stub
		System.out.println("yes-----------start");
		return super.start(scope);
	}

	@Override
	public synchronized void stop(IScope scope) {
		// TODO Auto-generated method stub
		System.out.println("yes-----------stop");
		super.stop(scope);
	}

	@Override
	public boolean appConnect(IConnection arg0, Object[] arg1) {
		// TODO Auto-generated method stub

		System.out.println("yes-----------appConnect"+arg1.length);
		return super.appConnect(arg0, arg1);
	}

	@Override
	public boolean appStart(IScope arg0) {
		// TODO Auto-generated method stub
		System.out.println("yes-----------appStart");
		return super.appStart(arg0);
	}

	@Override
	public void appStop(IScope arg0) {
		// TODO Auto-generated method stub
		System.out.println("yes-----------appStop");
		super.appStop(arg0);
	}

	@Override
	public void streamPublishStart(IBroadcastStream stream) {
		// TODO Auto-generated method stub
		System.out.println("yes-----------streamPublishStart");
		super.streamPublishStart(stream);
	}


}
