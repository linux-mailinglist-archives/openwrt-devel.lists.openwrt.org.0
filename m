Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4981E1C3AE0
	for <lists+openwrt-devel@lfdr.de>; Mon,  4 May 2020 15:06:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Reply-To:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:From:To:Date:Cc:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=JgqMClnq4YviypH5SDCLYnRgshdR/NOAC842F9nx/wo=; b=JOKeAi39fiuMRe559MOwVoUz56
	rnGsGgMyI7yMQilL4vNrffalNX+3P1xGQrVWbhLQJ0Tqr1pHhnZdzshVFXpTyRTzNot2d7Wg8P+VI
	HTsZgj2Z7VJVlMivw5hZNrmz+HTFDzXoCWczuCALe9rWyOzGb1iTbsjCItYyU7TdEjHcoHWLGNAui
	zNLiQKB5b4EWQTe/X49X6mgGr1XYEEF2Jrg7Y7941RF9GWPku0yf2yItmy1lORzKl+GG3oo+/zWcF
	U//RYPtefd9a2GaIsROK86oVYy9FOsaru+xWOzVyQ5MSXloCZlyy6u/Z/h+TYVwLiqQgoOaiY53qX
	yD1D9IaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVanD-0001uD-3Z; Mon, 04 May 2020 13:05:55 +0000
Received: from util-01.infra.openwrt.org ([46.101.232.90])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVamv-0001lq-7b
 for openwrt-devel@lists.openwrt.org; Mon, 04 May 2020 13:05:38 +0000
Received: from mta-215-158.sparkpostmail.com ([147.253.215.158])
 by util-01.infra.openwrt.org with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.89)
 (envelope-from <msprvs1=18393lKbuilbC=bounces-66737@flyingenvelope.com>)
 id 1jVamr-0006Ob-Is
 for openwrt-devel@openwrt.org; Mon, 04 May 2020 09:05:35 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=flyingenvelope.com;
 s=s0816; t=1588596322; i=@flyingenvelope.com;
 bh=7zIqz6KU9F6ccXYqx9U0gn/GdrzCE4RUR3KCkpM+ULI=;
 h=Date:To:From:Subject:Message-ID:Content-Type;
 b=3nGrV9CoqRUcH439tCOpXw8XgSwbWwxyBrBVuZ1UIvyysEKfvSeX2DBM3R2DuiBoO
 00R7GQiYgjOGdSNO2vnOO+a2S5fOd+wB5RN/bIN+6nP97wteUfpwIrLlwJLbJg0Ur+
 NF+uXd7232dILSLrLl+ipiH7lkLJd2BdI+jcr5A8=
X-MSFBL: G9FHfQo2MC+EU9r/ee2Qbgf4bsvjDXScUxit0ajiTIM=|eyJyIjoib3BlbndydC1
 kZXZlbEBvcGVud3J0Lm9yZyIsInRlbmFudF9pZCI6InNwYyIsImN1c3RvbWVyX2l
 kIjoiNjY3MzciLCJzdWJhY2NvdW50X2lkIjoiMCIsIm1lc3NhZ2VfaWQiOiIwMDQ
 3NjIwZWIwNWU5MjU4ZDVmNCJ9
Authentication-Results: ab.mta1vsmtp.cc.prd.sparkpost smtp.user=<hidden>;
 auth=pass (LOGIN)
Received: from [64.20.56.120] ([64.20.56.120:37276] helo=hosp1.host1024.com)
 by ab.mta1vsmtp.cc.prd.sparkpost (envelope-from
 <maura.d.alfaro.cm.hospitales@apuntatemx.com>)
 (ecelerity 4.3.1.83296 r(Core:4.3.1.25)) with ESMTPA
 id 5D/4F-22674-26E00BE5; Mon, 04 May 2020 12:45:22 +0000
Date: Mon, 4 May 2020 12:45:21 +0000
To: openwrt-devel@openwrt.org
From: Hospitales de Mexico <maura.d.alfaro.cm.hospitales@apuntatemx.com>
Message-ID: <f00958302fbd3382e9bfc8da4e1042be@hosp1.host1024.com>
X-Priority: 3
X-Mailer: PHPMailer 5.2
 (http://code.google.com/a/apache-extras.org/p/phpmailer/)
MIME-Version: 1.0
X-Spam-Score: -1.8 (-)
X-Spam-Report: Spam detection software, running on the system "util-01.infra.openwrt.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 jo@mein.io for details.
 
 Content preview:  Los Hospitales de M�xico. Base de Datos Si tu producto o servicio
    se relaciona con Hospitales esta base de Datos es Obligada. 2000 Hospitales
    Privados a Nivel Nacional Los Hospitales de México. Base de Datos 
 
 Content analysis details:   (-1.8 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
                             mail domains are different
  0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
                             blocked.  See
                             http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
                              for more information.
                             [URIs: flyingenvelope.com]
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_060537_431073_03FEB24B 
X-CRM114-Status: UNSURE (  -3.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.2 (-)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-1.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [46.101.232.90 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] Negocios con Hospitales? Base de Datos Hospitales 2,
 000  Privados.  id:(45673)
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Reply-To: maura.d.alfaro.cm.hospitales@composturas.com
Content-Type: multipart/mixed; boundary="===============6221234824104538743=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org


--===============6221234824104538743==
Content-Type: multipart/alternative;
	boundary="b1_f00958302fbd3382e9bfc8da4e1042be"


--b1_f00958302fbd3382e9bfc8da4e1042be
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: 8bit

Los Hospitales de M�xico. Base de Datos
Si tu producto o servicio se relaciona con Hospitales esta base de Datos es Obligada. 2000 Hospitales Privados a Nivel Nacional


--b1_f00958302fbd3382e9bfc8da4e1042be
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: 8bit

<html>
<meta charset="utf-8">
    <style type="text/css">

table{

        font-family: Verdana, Serif;

        font-size: 14pt;

        color: "#000000";

        font-weight: lighter;
        
        line-height: 150%;

        

    }

    </style>

</style>
<body >
<table width="600" align="center">
<tr><td>
<font size="4"><b>Los Hospitales de M�xico. Base de Datos</font><br><br>
<font size="4">Si tu producto o servicio se relaciona con Hospitales esta base de Datos es Obligada. 2000 Hospitales Privados a Nivel Nacional</font>
</td><tr
<tr><td>

<font size="4">Ll�manos al <br>Lada: 55 Tel: 5523-8812<br>Whatsapp 55 8095 7650</font> <br>
</td></tr>
<tr><td style="height:5px;width:100%;background:#0040ff;"></td></tr>
<tr><td>
<ul>
<li><font size="4">Nombre</font></li>
<li><font size="4">Especialidad</font></li>
<li><font size="4">Domicilio </font></li>
<li><font size="4">Tel�fono</font></li>
<li><font size="4">Contacto Principal</font></li>
<li><font size="4">email</font></li>
<li><font size="4">Camas</font></li>
<li><font size="4">Qu�r�fanos</font></li>
</ul>
<tr><td>
<a href="mailto:hospitales.maura.d.alfaro.cm@composturas.com?Subject=Me%20Interesa%20La%20Base%20de%20Datos%20de%20Hospitales&body=Solo%20envia%20este%20email%20y%20te%20enviaremos%20todos%20los%20detalles%20de%20Los%20Hospitales%20de%20Privados%20de%20M�xico%20Incluye%20tu%20tel�fono%20y%20te%20llamamos%0A%0APara atenci�n inmediata anota tu Telefono:%0A%0A
Ll�manos%20al%20Lada:%2055%20Tel:%205523-8812%20o%20por%20Whatsapp%2055%208095%207650%0A%0A2020-05-04 06:45:21am:gen_2018ok * sparkhost"><font size="4">Me Interesa La Base de Datos de Hospitales Dar Clic</a><font size="4"> O responder con Me interesa</font></a>
</td>
</tr>
<tr><td style="height:5px;width:100%;background:#0040ff;"></td></tr>
<tr><td>
<font size="4">Los Hospitales de M�xico genera prospectos, clientes potenciales, lo m�s efectivo. La mejor forma de iniciar el 2019.<br>
</b></font><br>
</td>
</tr>
<tr><td>
<a href="mailto:baja.maura.d.alfaro.cm@composturas.com?subject=Baja%20Hospitales&Body=Enviar%20para%20eliminarte%20de%20nuestra%20lista Hospitales%202020-05-04 06:45:21am:gen_2018ok * sparkhost">Darme de Baja de su lista Hospitales dar clic</a><br><br>O Responder a este email con Baja<br>2020-05-04 06:45:21am:gen_2018ok * sparkhost
</td></tr>
</body>
</html>



--b1_f00958302fbd3382e9bfc8da4e1042be--




--===============6221234824104538743==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============6221234824104538743==--



