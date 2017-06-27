package com.board.mapper;

import com.board.domain.BoardVO;

import java.util.ArrayList;

/**
 * Created by MyPC on 2017-06-21.
 */
public interface BoardMapper {
    //글작성
    public int boardInsert(BoardVO vo) throws Exception;

    //글보기
    public BoardVO boardView(int bno) throws Exception;

    //글목록
    public ArrayList<BoardVO> boardList(BoardVO vo) throws Exception;

    //글삭제
    public int boardDelete(int bno) throws Exception;

    //글수정
    public int boardUpdate(BoardVO vo) throws Exception;
}