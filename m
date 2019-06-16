Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86421475F6
	for <lists+openwrt-devel@lfdr.de>; Sun, 16 Jun 2019 18:42:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:References:In-Reply-To:Message-ID:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ojPVNjqPnd0mgR1sniN081lh+/cNTqR4Pdd1o0vsmzc=; b=KrAUO9fO2pzniVtQMZa91AHvz
	8zyp5Ak9yteTSz9fPfvwrAJlO9QMtjlISUq/2THX7Lu0iEue+JletObnZDezFh9liznKNlV/Jl6Aw
	hhzahycWk6Wwc2ozCH4IKT/0hXD3oOmF9809WNhpyHdiw+BYP4EzKW0I4F/XRm5NjgJHpj5KVFudZ
	tDBtWrLpJBxVRy3hEDzPoRpqNRZBzJJ4vC0xokEdDjpVrFkg3kULUE8+CqkmgoTeBIfVcguJBluWv
	wlyb7iVjLfLEoz1pph2hsSl0K192cwYctJs/1E5yt33g69Wyuo1wKyevbcVz/+lXSs+HYFT85Otmy
	niTjcbd8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcYF0-0000va-4E; Sun, 16 Jun 2019 16:42:50 +0000
Received: from mail.base45.de ([2001:67c:2050:320::77])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcYEm-0000uH-FV
 for openwrt-devel@lists.openwrt.org; Sun, 16 Jun 2019 16:42:40 +0000
Received: from 77-64-182-103.dynamic.primacom.net ([77.64.182.103]
 helo=lazus.yip)
 by mail.base45.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <lynxis@fe80.eu>)
 id 1hcYEi-0007nk-8s; Sun, 16 Jun 2019 16:42:32 +0000
Date: Sun, 16 Jun 2019 18:42:28 +0200
From: Alexander Couzens <lynxis@fe80.eu>
To: Christian Lamparter <chunkeey@gmail.com>
Message-ID: <20190616184053.5d4996cb@lazus.yip>
In-Reply-To: <20190616115605.6992-1-chunkeey@gmail.com>
References: <20190616115605.6992-1-chunkeey@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190616_094236_673912_95E9C3E1 
X-CRM114-Status: UNSURE (   3.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH] phytool: add phytool utility
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
Content-Type: multipart/mixed; boundary="===============7918444149990409602=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============7918444149990409602==
Content-Type: multipart/signed; boundary="Sig_/Y2QpriYDGJ2R2=DARHGHhC5";
 protocol="application/pgp-signature"; micalg=pgp-sha512

--Sig_/Y2QpriYDGJ2R2=DARHGHhC5
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Hi Christan,

> phytool is a Linux MDIO register access utility.

thank you. I've looked from time to time for such utility when
debugging network drivers & phys.

Acked-By: Alexander Couzens <lynxis@fe80.eu>

Best,
lynxis

--Sig_/Y2QpriYDGJ2R2=DARHGHhC5
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEOQ3PeIv5qlBPj/Hiwp6dpqDfhgQFAl0GcXQACgkQwp6dpqDf
hgQ+oQ//QXBQYaGTLdFSCx6D85Ta4b1SBwrWZveFsVSnAWtQmmLg0dvgMIa7GMiw
5PfBLo+eaGUmDBj4ubefLHB9sQUEiA9IvyXzk3e0OX5uZNhs+aStMfcCT+6nCtUb
AR25Xhk9zJwbdf2H0bOF80a9l74YJ7k71xUPTPrTk08PvO6BpgnVmI50ucq9NOuK
bCyUNgeoSxmDAf+7/s1++D5Qlz743yWC10o+5TLBwLH7CIYLD/CewyYSDDJ09J61
ROqqsQ2+OSzPv/CXu2mkJFVe6hFJBSeUhx29mBaWr/rcUMicqYZdidXf1H92rDYj
+XFRtH454+4ZTPYkHWr3B7b+/pCox1BOvWuEiLiY3Gy/OearEsdkF/ht1l3no58f
uftIybp8NdV0js7++k4123keJvY+CTpqxYLQkWiFu+Km+Uc0Zsb9s91aznSTTZmp
Q2a0PN5FuL8D0E6a3zTSz8FwcYe5thx7eUsi768sbhhRcxkMcEGnU+s/z6kdgMIB
T7DybuFXMSnKnY2n01+XJslGg0XRlmA7A3nNTeQ1kXXXlddWjuLYRrsMO2NYAk9p
S9NLXm4SSOdpL+s23xeYkehG3MABx41billKopUNj8AZORdqrSfEHlDYKDxRv36B
kZ8EO9MWsw1sk154FcHlFQM8W5BB+DbESiQNNDrmRIKFbX7nimM=
=ZV79
-----END PGP SIGNATURE-----

--Sig_/Y2QpriYDGJ2R2=DARHGHhC5--


--===============7918444149990409602==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============7918444149990409602==--

