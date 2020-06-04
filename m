Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF9A41EE2C8
	for <lists+openwrt-devel@lfdr.de>; Thu,  4 Jun 2020 12:48:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Message-ID:Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Date:MIME-Version:To:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XIWs1ktqzBnaA09a4LX1EzPFmpIIFX+TeyIhfa96LTc=; b=rT0ZiWnH3PVUwS
	X/yJWj3ZYTPtcBqyuSURHz1LINBC0ZGN1GLm1M9/vggadM6CP1SfokhW3ccTYsB8eCQTfC/dmT8CG
	g/M72bXoAJNLudrH1QTGgCurE8aStcU5qxgzTTDfrfTXYODaI0XVuQS95XLHuFSqdbdYE8caoJ0NP
	6O7t3kPeWhAQX1vMYo7MmSvFBVar2+ZGj4YrnOpJWbsBMIVYm3AN3RiMIIHTR6afjj57x1DHG8ek8
	qJM6/UZ4YvVfM+bDLK/uWyNaLDa6MkH+L/TzSY8e3Sd1b2NMZXBWcKBylwYNEUs79IJSDdFqpSg6t
	O2G8qb+4Ons0YiMUWSpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgnPv-0006Dz-3B; Thu, 04 Jun 2020 10:48:11 +0000
Received: from util-01.infra.openwrt.org ([46.101.232.90])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgnPl-0006C1-TU
 for openwrt-devel@lists.openwrt.org; Thu, 04 Jun 2020 10:48:06 +0000
Received: from smtpcmd0986.aruba.it ([62.149.156.86])
 by util-01.infra.openwrt.org with esmtp (Exim 4.89)
 (envelope-from <preventivi@italianasoftware.it>) id 1jgnPY-0000XN-Uz
 for openwrt-devel@openwrt.org; Thu, 04 Jun 2020 06:47:51 -0400
Received: from ATO ([2.236.16.184]) by smtpcmd09.ad.aruba.it with bizsmtp
 id myEn2200w3yGqCJ01yGAPm; Thu, 04 Jun 2020 12:16:12 +0200
From: "Distribuzione software" <preventivi@italianasoftware.it>
To: "openwrt-devel" <openwrt-devel@openwrt.org>
MIME-Version: 1.0
Date: Thu, 4 Jun 2020 12:16:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aruba.it; s=a1;
 t=1591265772; bh=1IIC14lbWcNEX5iurZ1Csvv1ciPVt/Fu1X41DYDjU1Q=;
 h=From:Subject:To:Content-Type:MIME-Version:Date;
 b=VzVEmXCJKfZKIKqNLtdJWrlJ+ved64Ht8YBYwk68lTInZPkUEeEtzqDdrInS0qKJD
 91c+kSyz92n2rDm6vLXTWTOf+Th2SSfqYa+tXEN9ck92OsSwJvQkLZqoYoFfKucVfC
 zjv8cq9vyqG3BNjR+S/lZMByG3I0NX3ofl+P9YXLyx8NzAWJvwnjYx5GpSGaXfr4lM
 zMDFTsZadXfvIIfiNAjepeqGB9YzcfxEm+GKiL8S3XGBc96e+lJLQos1BaI3FpK3sq
 MOOqBp0zFKg8vUySRSu20xx5cUfYZO1xV3tBCIxx1sgaffSCdFV0pShZtsxOQxD4Pa
 x2ix9w699KbrQ==
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-01.infra.openwrt.org", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 jo@mein.io for details.
 Content preview:  Gentile Utente, distribuiamo Licenze originali ESD, COA, CARD
 e STICKERS Microsoft, Adobe, Autodesk .. ( Direttiva n. 2009/24/CE e L.C.E.C.
 -128/2011 ) Esempi: MS. Office 2019 Pro da Euro 25, 00 MS. Server 2016 standard
 da Euro 46,00 MS. Win 10 Pro da Euro 12,00 MS. Win 10 Pro Stickers da Euro
 40,00 Content analysis details:   (-0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: aruba.it]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [62.149.156.86 listed in wl.mailspike.net]
 -0.5 BAYES_05               BODY: Bayes spam probability is 1 to 5%
 [score: 0.0479]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.5 MISSING_MID            Missing Message-Id: header
 0.0 DKIMWL_WL_MED          DKIMwl.org - Whitelisted Medium sender
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_034802_578322_5DFA4756 
X-CRM114-Status: UNSURE (  -4.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.2 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [46.101.232.90 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 MISSING_MID            Missing Message-Id: header
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
Subject: [OpenWrt-Devel] Comunicazione LICENZE originali
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Message-ID: <E1jgnPv-0006Dz-3B@bombadil.infradead.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Gentile Utente,
distribuiamo Licenze originali ESD, COA, CARD e STICKERS Microsoft, Adobe, =
Autodesk ..
( Direttiva n. 2009/24/CE e L.C.E.C. -128/2011 )

Esempi:
MS. Office 2019 Pro         	da Euro 25,00
MS. Server 2016 standard	da Euro 46,00  =

MS. Win 10 Pro		da Euro 12,00 =

MS. Win 10 Pro Stickers	da Euro 40,00

(sconti per rivenditori, Fatturazione E )

Buon lavoro
NETOS

italianasoftware.it
TEL 06 92958576

Protocollo 37890

Le informazioni, i dati e le notizie contenute nella presente comunicazione=
 e i relativi allegati sono di natura privata e come tali possono essere ri=
servate e sono, comunque, destinate esclusivamente ai destinatari indicati =
in epigrafe. La diffusione, distribuzione e/o la copiatura del documento tr=
asmesso da parte di qualsiasi soggetto diverso dal destinatario =E8 =

proibita, sia ai sensi dell'art. 616 c.p., sia ai sensi del D.Lgs. n. 196/2=
003. Se avete ricevuto questo messaggio per errore, vi preghiamo di distrug=
gerlo e di darcene immediata comunicazione anche inviando un messaggio di r=
itorno all'indirizzo e-mail del mittente. =



_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
