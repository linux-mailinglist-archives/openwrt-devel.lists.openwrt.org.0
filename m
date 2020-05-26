Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87A351E1F33
	for <lists+openwrt-devel@lfdr.de>; Tue, 26 May 2020 11:59:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Reply-To:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:MIME-Version:Message-ID:From:Date:Cc:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=NYYM4ackDHhq2yedVWGwJ145wEUJ/W570eV+sAIXifM=; b=Rn5MAmEQEv4yYFs2qJxeYv5J3a
	j7lV5pIWYqUcXQTABCf0MTWxgu26N+rGgNIffNhUfH3JuPgIWg9/zWXozlskq3VR92jhmYHYqtHuq
	fBQXY9Tu1rAj5MkL/jAOyLUT/w8jEKhlPFArTWWUem37I30ArhsmjC/n+K+rZlbMs7iJ+Xt31arnE
	lv2aP0poAjP/xNUaTas2Kmo4xGPA2sdCEbU2Nt4QQpDMhdDgexupCaOqqxECOmEqlS+0t2UIyL2kp
	fDYet4yalDNSPsMqunxz3b6EQUE6rwFoLR6k7UHvdVOFnL8FqfhTtcskektrQK0E38oQOgpRkYFIf
	og4IjO/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdWMt-0001th-R2; Tue, 26 May 2020 09:59:31 +0000
Received: from util-01.infra.openwrt.org ([46.101.232.90])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdWMj-0001su-5T
 for openwrt-devel@lists.openwrt.org; Tue, 26 May 2020 09:59:22 +0000
Received: from o2.2e.shared.sendgrid.net ([167.89.100.141])
 by util-01.infra.openwrt.org with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <bounces+3292288-6ef4-openwrt-devel=openwrt.org@sendgrid.net>)
 id 1jdWMg-0002UB-Jj
 for openwrt-devel@openwrt.org; Tue, 26 May 2020 05:59:19 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sendgrid.net;
 h=from:reply-to:subject:mime-version:to:content-type;
 s=smtpapi; bh=35gWTFO5PfV8ZKhxqjh1aLH7mO1PaGvoZ3s3on9xfmI=;
 b=f2dnC50YKqP2Hh4Xh7XdQmNFDZO50MnRQycqP1XqgVF8l7+HVeoa48FHkNnnnoLDTtT+
 pX/EjsAhQwn0t9JhvpCQBo77PzOPiEBaShO3Y0zITbZWUDA+HWATL9oI8V+NMuOOwmmGnd
 fOYXtuQMKo3gfc0h/gQCygflzTWRpk9NU=
Received: by filterdrecv-p3mdw1-6dbfd75bfd-nqctr with SMTP id
 filterdrecv-p3mdw1-6dbfd75bfd-nqctr-17-5ECCE457-2E
 2020-05-26 09:41:43.599040965 +0000 UTC m=+2123788.895066150
Received: from hosp1.host1024.com (unknown) by geopod-ismtpd-5-3 (SG)
 with ESMTP id zsiji38XTj6oaDuk-lvbrw for <openwrt-devel@openwrt.org>;
 Tue, 26 May 2020 09:41:43.548 +0000 (UTC)
Date: Tue, 26 May 2020 09:41:43 +0000 (UTC)
From: Hospitales de Mexico <maura.d.alfaro.cm.hospitales@apuntatemx.com>
Message-ID: <dbaea1caa58056ff92361e8fcbaf2303@hosp1.host1024.com>
X-Priority: 3
X-Mailer: PHPMailer 5.2
 (http://code.google.com/a/apache-extras.org/p/phpmailer/)
MIME-Version: 1.0
X-SG-EID: =?us-ascii?Q?EVzK9imC8kl1wbgrYxU=2FjMOgl0w4=2FOtSa+fFdKtCe2PrUwHdDP+eJJjEW8E4Ai?=
 =?us-ascii?Q?6eIr5Si1pr6H+unz4Ac5Xo0MGgH3VvcEWdOBvrH?=
 =?us-ascii?Q?kOFGkif=2F0G3PC=2Fw0bMFYnRkSvzPQPBF1=2FmzWCJB?=
 =?us-ascii?Q?TxbOEcP8RcnKc4mD4VBhmz+iAvsYbquwoEZcrNF?=
 =?us-ascii?Q?jWKnQ6SocDtCYJwGCemG18K7P1uDI1nqkyEZEbs?=
 =?us-ascii?Q?Sv1Vj6pRy4rqZWdAY+G0LRyoN6nGwKQI675ukR2?=
 =?us-ascii?Q?g5KnXu+Kb2ZCjUX0wGhyCe2ZLsMr6WVni0fiQzy?=
 =?us-ascii?Q?kRYJvzy5LUgea7YIBJYD9ccL?=
To: openwrt-devel@openwrt.org
X-Spam-Score: -0.4 (/)
X-Spam-Report: Spam detection software, running on the system "util-01.infra.openwrt.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 jo@mein.io for details.
 
 Content preview:  Los Hospitales de México. Base de Datos Si tu producto o servicio
    se relaciona con Hospitales esta base de Datos es Obligada. 2000 Hospitales
    Privados a Nivel Nacional Los Hospitales de MÃ©xico. Base de Datos 
 
 Content analysis details:   (-0.4 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
                             blocked.  See
                             http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
                              for more information.
                             [URIs: sendgrid.net]
  1.3 RCVD_IN_BL_SPAMCOP_NET RBL: Received via a relay in
                             bl.spamcop.net
              [Blocked - see <https://www.spamcop.net/bl.shtml?167.89.100.141>]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [167.89.100.141 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
                             mail domains are different
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
  0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
                             lines
  0.0 DKIMWL_WL_MED          DKIMwl.org - Whitelisted Medium sender
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_025921_352396_AA65FFCE 
X-CRM114-Status: UNSURE (  -4.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.2 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [46.101.232.90 listed in list.dnswl.org]
 1.2 RCVD_IN_BL_SPAMCOP_NET RBL: Received via a relay in
 bl.spamcop.net
 [Blocked - see <https://www.spamcop.net/bl.shtml?167.89.100.141>]
 1.1 URIBL_GREY             Contains an URL listed in the URIBL greylist
 [URIs: sendgrid.net]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
Subject: [OpenWrt-Devel] Negocios con Hospitales? Base de Datos Hospitales 2,
 000  Privados.  id:(8879)
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
Content-Type: multipart/mixed; boundary="===============4351436333245583569=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org


--===============4351436333245583569==
Content-Type: multipart/alternative;
	boundary="b1_dbaea1caa58056ff92361e8fcbaf2303"


--b1_dbaea1caa58056ff92361e8fcbaf2303
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: 8bit

Los Hospitales de México. Base de Datos
Si tu producto o servicio se relaciona con Hospitales esta base de Datos es Obligada. 2000 Hospitales Privados a Nivel Nacional


--b1_dbaea1caa58056ff92361e8fcbaf2303
Content-Type: text/html; charset=iso-8859-1
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
<font size="4"><b>Los Hospitales de México. Base de Datos</font><br><br>
<font size="4">Si tu producto o servicio se relaciona con Hospitales esta base de Datos es Obligada. 2000 Hospitales Privados a Nivel Nacional</font>
</td><tr
<tr><td>

<font size="4">Llámanos al <br>Lada: 55 Tel: 5523-8812<br>Whatsapp 55 8095 7650</font> <br>
</td></tr>
<tr><td style="height:5px;width:100%;background:#0040ff;"></td></tr>
<tr><td>
<ul>
<li><font size="4">Nombre</font></li>
<li><font size="4">Especialidad</font></li>
<li><font size="4">Domicilio </font></li>
<li><font size="4">Teléfono</font></li>
<li><font size="4">Contacto Principal</font></li>
<li><font size="4">email</font></li>
<li><font size="4">Camas</font></li>
<li><font size="4">Quírófanos</font></li>
</ul>
<tr><td>
<a href="mailto:hospitales.maura.d.alfaro.cm@composturas.com?Subject=Me%20Interesa%20La%20Base%20de%20Datos%20de%20Hospitales&body=Solo%20envia%20este%20email%20y%20te%20enviaremos%20todos%20los%20detalles%20de%20Los%20Hospitales%20de%20Privados%20de%20México%20Incluye%20tu%20teléfono%20y%20te%20llamamos%0A%0APara atención inmediata anota tu Telefono:%0A%0A
Llámanos%20al%20Lada:%2055%20Tel:%205523-8812%20o%20por%20Whatsapp%2055%208095%207650%0A%0A2020-05-26 03:41:43am:mexicook * grid"><font size="4">Me Interesa La Base de Datos de Hospitales Dar Clic</a><font size="4"> O responder con Me interesa</font></a>
</td>
</tr>
<tr><td style="height:5px;width:100%;background:#0040ff;"></td></tr>
<tr><td>
<font size="4">Los Hospitales de México genera prospectos, clientes potenciales, lo más efectivo. La mejor forma de enfrentar la crisis COVID-19.<br>
</b></font><br>
</td>
</tr>
<tr><td>
<a href="mailto:baja.maura.d.alfaro.cm@composturas.com?subject=Baja%20Hospitales&Body=Enviar%20para%20eliminarte%20de%20nuestra%20lista Hospitales%202020-05-26 03:41:43am:mexicook * grid">Darme de Baja de su lista Hospitales dar clic</a><br><br>O Responder a este email con Baja<br>2020-05-26 03:41:43am:mexicook * grid
</td></tr>
</body>
</html>



--b1_dbaea1caa58056ff92361e8fcbaf2303--




--===============4351436333245583569==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============4351436333245583569==--



