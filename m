Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46895835B1
	for <lists+openwrt-devel@lfdr.de>; Tue,  6 Aug 2019 17:51:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n1JNBR3K57VGDmbyMK92loaNJ9Yb+SeK9qln3duJrcg=; b=suJcJT0sW3jt1W
	qri4ZJpPWY9RZuvZeVpXQ0sydpckddQWYLb5gj/etOK77DCoS869FYyyxgHIED1alliP3x/YPhtpL
	raQHGEyr952nFa+d5ji1vVFKV5gIaGkC+C+on28F9Q9WHjpxLUMFytNECy78aRdDfR2DBFAzLfVGT
	QwtL1aXjDGj9l0Nr3OfvfRFSsVtvIelX2G1GEXC7U/uRGLlDw9J5mwxYRoVsXm+TvHLxS/6nOw1Lc
	6li9L0DpAN2H7zmYdGNqEGjY/AnaAaTfDJRFV+hOrqpcRJTBUBSFynLJUMMUbss/2p7XISro/CgWY
	yBYeHix3ZbxcSK5f00yw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hv1k4-00028m-IM; Tue, 06 Aug 2019 15:51:16 +0000
Received: from mx4.wp.pl ([212.77.101.12])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hv1jv-00026K-6e
 for openwrt-devel@lists.openwrt.org; Tue, 06 Aug 2019 15:51:08 +0000
Received: (wp-smtpd smtp.wp.pl 28233 invoked from network);
 6 Aug 2019 17:51:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wp.pl; s=1024a;
 t=1565106665; bh=rnkzxnc6gqyiv0cMC4lyfNtLRHbaXQq23V5Au8oTkjo=;
 h=From:To:Cc:Subject;
 b=YkeWukUQBazPO3JE4E2OBdvby5MHWOBwwomPw5am/uYJIzidQVBWuJpzh/ybrCHU5
 jjdQfbc/d7b+0ICei5rxhnBs6VsLTLngTsDv6AxVQRY/jLfwIZw+gDthkELSdB/9A2
 a/D76jt5/BGVX64UIOMOqDSBy4o3g6lnFNQ7qW9A=
Received: from 89-79-49-72.dynamic.chello.pl (HELO kosmio.komorska)
 (michal.cieslakiewicz@wp.pl@[89.79.49.72])
 (envelope-sender <michal.cieslakiewicz@wp.pl>)
 by smtp.wp.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <mail@adrianschmutzler.de>; 6 Aug 2019 17:51:05 +0200
Date: Tue, 6 Aug 2019 17:50:59 +0200
From: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>
To: "Adrian Schmutzler" <mail@adrianschmutzler.de>
Message-ID: <20190806175059.7e0a18e7@kosmio.komorska>
In-Reply-To: <013301d54c63$6d47c130$47d74390$@adrianschmutzler.de>
References: <20190806155540.4e27407b@kosmio.komorska>
 <20190806160600.5f04e40e@kosmio.komorska>
 <013301d54c63$6d47c130$47d74390$@adrianschmutzler.de>
X-Mailer: Claws Mail 3.17.1 (GTK+ 2.24.32; x86_64-slackware-linux-gnu)
MIME-Version: 1.0
X-WP-MailID: f8277199b1424cb422862e8a6b8470db
X-WP-AV: skaner antywirusowy Poczty Wirtualnej Polski
X-WP-SPAM: NO 0000000 [8XME]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_085107_536125_909C858F 
X-CRM114-Status: UNSURE (   6.40  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.77.101.12 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (michal.cieslakiewicz[at]wp.pl)
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH v2 4/5] ath79: add support for Netgear
 WNR1000 v2
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

On Tue, 6 Aug 2019 16:29:59 +0200
"Adrian Schmutzler" <mail@adrianschmutzler.de> wrote:
> 
> In general, it looks to me like you can exploit wnr612-v2.dtsi here.
> LEDs will require some care, but almost everything else is shared.
> In that context, one might think whether there is a better name for
> the shared DTSI then ...
> 

Agreed. Now it's better to unify definitions. WNR1000v2 and WNR612v2 are
indeed very similar. The same is for WNR2000v3 and WNR2200 (the latter
is just bigger memory plus USB wiring). 
It's just that for development phase I preferred separate dts files...

Cheers
Michal
-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEi7ylFMzTSbpOuOZIHU8//LdGKWsFAl1JoeMACgkQHU8//LdG
KWu2EQ/+Kf6AU6W6ROnZs5Joj9ay1XMZSkxKiPAYp3qmj5+U18s5DceBEHV2YYYs
gk0F5B7Eo/LOtHmWDGrl6yl0+MM1eY3wSBDVcO08koCxQqdiY+HCOjGZjeS0ACMM
dXYIV7QouyOYF634lI7S+ESDIbQ8d5+NfSPPK8Jtd44doKZPQ+Vf+8sIHzJujeJb
TK73nvLvEWiiZtKuH7Sk/OFK4r3Kc/eFQ/PS3psEu58iKx8wcZMabF6e0eEqG+ZP
r4V4u9O+65uYPZJptHbKFOLtlcU9Rnvxcnx1vCST34GYc8Bdem2f25HaO0Lv5Nm2
9hoN7XReKN2ZgJhisXSTgVDvWD4IlslecZEmXvfmscVCUSdE6We1gjgeNIFTF5pr
rprySvHUGOZbKNSF+x0mPbxvobmBdZKJj+Dmb58KSxGDFsZWrNDG2JYPZsqCr5Pn
w1UAa5g++P5ARrHo2fpZ5Den7wT2Xy1i+esR1tsiLSF2uHUd50JKL3vaGyzmhQg5
jcnEz7JAyQxp9xj0odrA+utLvReOSeUK+C0xiG+T2bEa/n/jgw2h7w0J+yIpzKIx
Qf0DYjcngM6K6MOtAdB18QzEeX6HACdCbCc9taBtfnIpWgJw5wWv9Q3LPTFlVC8A
zoNEDVziVMyELJe/6ulJ2snCuSCGrfw7OHq4Zoz7F+/iFxwX36w=
=gCBE
-----END PGP SIGNATURE-----
_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
