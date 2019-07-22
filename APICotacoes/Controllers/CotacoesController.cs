﻿using System.Data.SqlClient;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Configuration;
using Dapper;

namespace APICotacoes.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class CotacoesController : ControllerBase
    {
        [HttpGet]
        public ContentResult Get(
            [FromServices]IConfiguration config)
        {
            string valorJSON;
            using (SqlConnection conexao = new SqlConnection(
                config.GetConnectionString("BaseCotacoes")))
            {
                valorJSON = conexao.QueryFirst<string>(
                    "SELECT Sigla " +
                          ",NomeMoeda " +
                          ",UltimaCotacao " +
                          ",ValorComercial AS 'Cotacoes.Comercial' " +
                          ",ValorTurismo AS 'Cotacoes.Turismo' " +
                    "FROM dbo.Cotacoes " +
                    "ORDER BY NomeMoeda " +
                    "FOR JSON PATH, ROOT('Moedas')");
            }

            return Content(valorJSON, "application/json");
        }
    }
}