package br.com.fiap.servlet;

import java.io.IOException;
import java.util.List;

import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.fiap.model.Curso;
import br.com.fiap.service.CursoDAO;

/**
 * Servlet implementation class CursoServlet
 */
@WebServlet("/salvar")
public class CursoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	@EJB
	CursoDAO cDao;
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CursoServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Curso curso = new Curso();
		curso.setCodigo(request.getParameter("codigo"));
		curso.setDescricao(request.getParameter("descricao"));
		curso.setDuracao(Integer.parseInt(request.getParameter("duracao")));
		curso.setNome(request.getParameter("nome"));
		curso.setValor(Double.parseDouble(request.getParameter("valor")));
		cDao.salvar(curso);
		request.setAttribute("msg", "Curso cadastrado com sucesso!");
		
		List<Curso> cursos = cDao.listar();
		request.setAttribute("cursos", cursos);
		request.getRequestDispatcher("pages/cadastro.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
