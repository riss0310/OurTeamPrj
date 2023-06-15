package co.market.lemon.notice.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.market.lemon.common.Command;
import co.market.lemon.notice.service.NoticeService;
import co.market.lemon.notice.service.NoticeVO;
import co.market.lemon.notice.serviceImpl.NoticeServiceImpl;

public class noticeUpdate implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		NoticeService ns=new NoticeServiceImpl();
		NoticeVO vo= new NoticeVO();
		vo.setNoticeId(Integer.valueOf("noticeId"));
		int i=ns.noticeUpdate(vo);
		if(i>0) {
			request.setAttribute("message", "공지사항이 수정되었습니다");
		}else {
			request.setAttribute("message", "공지사항을 수정하지 못했습니다");
		}
		return "member/memberMessage";
	}

}
