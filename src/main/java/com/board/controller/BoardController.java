package com.board.controller;

import com.board.domain.BoardVO;
import com.board.mapper.BoardMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;

/**
 * Created by MyPC on 2017-06-21.
 */
@Controller
public class BoardController {
    @Autowired
    private BoardMapper boardMapper;

    @RequestMapping("/")
    public String main() throws Exception{
        return "redirect:/boardList";
    }

    @RequestMapping(value="/boardList", method={RequestMethod.GET, RequestMethod.POST})
    public ModelAndView boardList(BoardVO vo) throws Exception{
        ArrayList<BoardVO> board = boardMapper.boardList(vo);
        return new ModelAndView("boardList","list",board);
    }

    @RequestMapping(value="/boardView", method= RequestMethod.GET)
    public ModelAndView boardView(@RequestParam int bno, ModelAndView model) throws Exception{
        BoardVO vo = boardMapper.boardView(bno);
        model.setViewName("boardView");
        model.addObject("vo",vo);
        return model;
    }

    @RequestMapping("/boardInsertView")
    public ModelAndView boardInsertView() throws Exception{
        return new ModelAndView("boardInsertView");
    }

    @RequestMapping(value="/boardInsert", method=RequestMethod.POST)
    public String boardInsert(BoardVO vo) throws Exception{
        boardMapper.boardInsert(vo);
        return "redirect:/boardList";
    }

    @RequestMapping(value="/boardDelete", method= RequestMethod.GET)
    public String boardDelete(@RequestParam int bno) throws Exception{
        boardMapper.boardDelete(bno);
        return "redirect:/boardList";
    }

    @RequestMapping(value="/boardUpdate", method=RequestMethod.POST)
    public String boardUpdate(BoardVO vo) throws Exception{
        boardMapper.boardUpdate(vo);
        return "redirect:/boardList";
    }
}
