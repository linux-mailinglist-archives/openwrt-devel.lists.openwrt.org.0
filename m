Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA17E1B9118
	for <lists+openwrt-devel@lfdr.de>; Sun, 26 Apr 2020 17:09:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Reply-To:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:MIME-Version:Message-ID:From:Date:Cc:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=PntJxGUs1r4FJ587bqjejnRCEfiA3Cg8p7qx7R24XRU=; b=dOUEohz32Jx204XOE+9YUWFGms
	J0Jb0RvuwJX/F+Ax4W8arH9IuoYiwyPXcNFxOMnBZF6zlH1mwXTyQ2az16k1ICujaJgZFLabn8i7Z
	DU9jvE2osqC0VDYBEXY3R9ybjtvwcNUyQ5LlhIJ9bC71SFfT1w7cquN82UK0FOT/+A9X3D46Keiop
	aIN0cKHEkyxmSj+AUDNd1ib5D2pwo/TIqv2C7hU4s0InZuN+KNf1BASqeBoQbIi/n77HZ4Vxend/Z
	gAMRIceBUjVEdWgOpLDuEQp5y2kXX0OFLPOehYtZLcayisGFATkbnYllJj1PeTig6sFC+INrttjty
	xMY3du1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSiu8-0004BH-DR; Sun, 26 Apr 2020 15:09:12 +0000
Received: from util-01.infra.openwrt.org ([46.101.232.90])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSiu1-00049o-BG
 for openwrt-devel@lists.openwrt.org; Sun, 26 Apr 2020 15:09:06 +0000
Received: from xtrwsqvq.outbound-mail.sendgrid.net ([167.89.100.132])
 by util-01.infra.openwrt.org with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <bounces+3292288-6ef4-openwrt-devel=openwrt.org@sendgrid.net>)
 id 1jSitt-00079F-0T
 for openwrt-devel@openwrt.org; Sun, 26 Apr 2020 11:08:57 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sendgrid.net;
 h=from:reply-to:subject:mime-version:to:content-type;
 s=smtpapi; bh=LzBHH4GVk4SBZqF0iDDE5FRmLI1QtZuTP9/3MRN6bHI=;
 b=uqUCEAK7e1NKasbFjxaksO5Xq450AO03stauhhwU5K+DbIVDNOceiVsxin9NtR+vXKfF
 S5bGrrVSaEyKbm3OtG6MW1Pzmkpl2q6nPQ6f+5MhWzubB2XssebTBUGjBs1SzFpjkNSdH8
 0q5FZJ5vkn5nmVQiTHC/Px2JjpeZ9MhQ8=
Received: by filterdrecv-p3iad2-8ddf98858-xm5rk with SMTP id
 filterdrecv-p3iad2-8ddf98858-xm5rk-18-5EA59FE8-15
 2020-04-26 14:51:20.294009813 +0000 UTC m=+2651269.273743213
Received: from hosp.host1024.com (unknown)
 by ismtpd0033p1mdw1.sendgrid.net (SG) with ESMTP id eNsBLfVJTq6SzcUBDAGVMw
 for <openwrt-devel@openwrt.org>; Sun, 26 Apr 2020 14:51:20.213 +0000 (UTC)
Date: Sun, 26 Apr 2020 14:51:20 +0000 (UTC)
From: Hospitales de Mexico <maura.d.alfaro.cm.hospitales@apuntatemx.com>
Message-ID: <d9136c2f16f7141ffbb1c786120e672a@hosp.host1024.com>
X-Priority: 3
X-Mailer: PHPMailer 5.2
 (http://code.google.com/a/apache-extras.org/p/phpmailer/)
MIME-Version: 1.0
X-SG-EID: =?us-ascii?Q?EVzK9imC8kl1wbgrYxU=2FjMOgl0w4=2FOtSa+fFdKtCe2PrUwHdDP+eJJjEW8E4Ai?=
 =?us-ascii?Q?6eIr5Si1pr6H+unz4Ac5Xo0MGgH3VvcEWdOBvrH?=
 =?us-ascii?Q?kOFGkif=2F0G3PC=2Fw0bMFYnRkSvzPkespIWvIPdq4?=
 =?us-ascii?Q?JWBbg980nGimU6z+keDL0ICN4UmPQPh5Lxa2Iy=2F?=
 =?us-ascii?Q?LrK9mAGUqEdFKO2+uAvaleNw+zi+soeBEhXny68?=
 =?us-ascii?Q?YDq89AX2ovxI8gke1HkATV1EWhJJBIRgi7JCH4Q?=
 =?us-ascii?Q?7R3C6yFH3aYlJqI6tFlgm=2FaOQTSTVKTf1iI+OhJ?=
 =?us-ascii?Q?PVCMxcn2eWytP+ekzI64mazu?=
To: openwrt-devel@openwrt.org
X-Spam-Score: -1.7 (-)
X-Spam-Report: Spam detection software, running on the system "util-01.infra.openwrt.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 jo@mein.io for details.
 
 Content preview:  Los Hospitales de México. Base de Datos Si tu producto o servicio
    se relaciona con Hospitales esta base de Datos es Obligada. 2000 Hospitales
    Privados a Nivel Nacional Los Hospitales de MÃ©xico. Base de Datos 
 
 Content analysis details:   (-1.7 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
                             blocked.  See
                             http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
                              for more information.
                             [URIs: sendgrid.net]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [167.89.100.132 listed in wl.mailspike.net]
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
X-CRM114-CacheID: sfid-20200426_080905_531887_63B625C7 
X-CRM114-Status: UNSURE (  -3.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [46.101.232.90 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.1 URIBL_GREY             Contains an URL listed in the URIBL greylist
 [URIs: sendgrid.net]
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Content-Type: multipart/mixed; boundary="===============4930072083745577020=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org


--===============4930072083745577020==
Content-Type: multipart/alternative;
	boundary="b1_d9136c2f16f7141ffbb1c786120e672a"


--b1_d9136c2f16f7141ffbb1c786120e672a
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: 8bit

Los Hospitales de México. Base de Datos
Si tu producto o servicio se relaciona con Hospitales esta base de Datos es Obligada. 2000 Hospitales Privados a Nivel Nacional


--b1_d9136c2f16f7141ffbb1c786120e672a
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
Llámanos%20al%20Lada:%2055%20Tel:%205523-8812%20o%20por%20Whatsapp%2055%208095%207650%0A%0A2020-04-26 08:51:20am:deliverGen_2018-mx * host1024.com/lentes"><font size="4">Me Interesa La Base de Datos de Hospitales Dar Clic</a><font size="4"> O responder con Me interesa</font></a>
</td>
</tr>
<tr><td style="height:5px;width:100%;background:#0040ff;"></td></tr>
<tr><td>
<font size="4">Los Hospitales de México genera prospectos, clientes potenciales, lo más efectivo. La mejor forma de iniciar el 2019.<br>
</b></font><br>
</td>
</tr>
<tr><td>
<a href="mailto:baja.maura.d.alfaro.cm@composturas.com?subject=Baja%20Hospitales&Body=Enviar%20para%20eliminarte%20de%20nuestra%20lista Hospitales%202020-04-26 08:51:20am:deliverGen_2018-mx * host1024.com/lentes">Darme de Baja de su lista Hospitales dar clic</a><br><br>O Responder a este email con Baja<br>2020-04-26 08:51:20am:deliverGen_2018-mx * host1024.com/lentes
</td></tr>
</body>
</html>



--b1_d9136c2f16f7141ffbb1c786120e672a--




--===============4930072083745577020==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============4930072083745577020==--



