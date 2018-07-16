package kr.co.seeadoctor.board.service;

import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import kr.co.seeadoctor.repository.mapper.BoardMapper;
import kr.co.seeadoctor.repository.vo.Board;
import kr.co.seeadoctor.repository.vo.BoardFile;
import kr.co.seeadoctor.repository.vo.Comment;
import kr.co.seeadoctor.repository.vo.PageResult;

@Service
public class BoardServiceImpl implements BoardService{
	
	@Autowired
	private BoardMapper boardMapper;
	
	@Override
	public Map<String, Object> selectBoard (Board board) throws Exception {
		Map<String, Object> result = new HashMap<>();
		
		List<Board> list = boardMapper.selectBoard();

		int sPageNo = board.getPageNo(); //탭시작번호
		board.setPageNo(sPageNo == 0 ? 1 : sPageNo); //시작번호가0이면 1로, 그게아니면 그걸로

		int count = boardMapper.selectBoardCount(board); //총 게시글수
		
		result.put("list", list);
		result.put("count", count);
		result.put("pageResult", new PageResult(board.getPageNo(), count));
		return result;
	}

	@Override
	public void insertBoard(Board board)throws Exception {
		boardMapper.insertBoard(board);
		
		if(board.getFiles() !=null) {
			
			 for(MultipartFile file: board.getFiles()) {
				 
				 System.out.println(file.getName());
				 System.out.println("들어왔니?:"+file.getOriginalFilename());
				 String ext="";
				 int index = file.getOriginalFilename().lastIndexOf(".");
					if(index != -1) {
						ext = file.getOriginalFilename().substring(index);
					}
					
					int hospCode = 1; 
					
					String sysName = "final-"+UUID.randomUUID().toString()+ext;
					file.transferTo(new File("c:/java-lec/upload/"+sysName));
					
					BoardFile fileVO = new BoardFile();
					fileVO.setNo(board.getNo());
					fileVO.setFilePath("c:/java-lec/upload/");
					fileVO.setSysName(sysName);
					fileVO.setHospCode(hospCode);
					boardMapper.insertBoardFiles(fileVO);
			 }
		}
	}
	
	@Override
	public Map<String, Object> detailBoard(int no) throws Exception{
		Map<String, Object> result = new HashMap<>();
		boardMapper.updateBoardViewCnt(no);
//		System.out.println("update -> 1");
		Board board = boardMapper.detailBoard(no);
//		System.out.println("update -> 2");
		
		List<BoardFile> files = boardMapper.selectBoardFileByNo(no);
//		System.out.println("update -> 3");
		List<Comment> commentList = boardMapper.selectCommentByNo(no);
		
		result.put("board", board);
		result.put("files", files);
		result.put("commentList", commentList);
		
		return result;
	}
	
	
	
	
	@Override
	public void deleteBoard(int no) {
		boardMapper.deleteBoard(no);
	}
	@Override
	public Board selectBoardUpdate(int no) throws Exception{
		return boardMapper.selectBoardUpdate(no);
		 
	}
		
		@Override
		public List<BoardFile> selectBoardFileByNo(int no) {
			return boardMapper.selectBoardFileByNo(no);
		}

		//댓글리스트
		@Override
		public List<Comment> selectCommentByNo(int no){
			return boardMapper.selectCommentByNo(no);
		}
		
		//댓글 등록
		public void insertComment(Comment comment) {
			boardMapper.insertComment(comment);
		}
		
		//댓삭
		public void deleteComment(int commentNo) {
			boardMapper.deleteComment(commentNo);
//			System.out.println("댓삭되니");
		}
		
		//댓수정
		public void updateComment(Comment comment) {
			boardMapper.updateComment(comment);
		}
		
		/*
		//파일이 있을 때
		if(files != null) { 
			
			//Iterator 반복자
			Iterator<String> fileName = files.getFileNames(); //업로드된 파일의 이름목록을 구해서 배열형식으로 넣는다
			MultipartFile[] file = files.getFiles(fileName.next());//fileName에(반복) 해당하는 업로드파일정보목록을 구한다.
			
			for(MultipartFile f : file) {
				
				System.out.println(f.getName());
				System.out.println("들어왔니?:"+f.getOriginalFilename());
				
				String ext = "";
				int index = f.getOriginalFilename().lastIndexOf(".");
					if(index != -1) {
						ext = f.getOriginalFilename().substring(index);
					}
					String sysName = "final-"+UUID.randomUUID().toString()+ext;
					f.transferTo(new File("c:/java-lec/upload/"+sysName));
					
					boardMapper.insertBoardFiles(f);
			}
		}
		*/
	}

	

