package com.swim.idao;

import java.sql.SQLException;

import com.swim.domain.User;
import com.swim.domain.dianzanorfandui;

public interface idianzandao {
	//public dianzanorfandui DianZan(User user)throws ClassNotFoundException, SQLException;
	//µ„‘ﬁ∆¿¬€
    public dianzanorfandui goodComment(int uid,int ccid) throws SQLException, ClassNotFoundException;
}
