Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76D041AD509
	for <lists+openwrt-devel@lfdr.de>; Fri, 17 Apr 2020 06:02:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:References:In-Reply-To:Message-ID:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=l+DyLjaeQohTELMOwIZY+KD2J2juwUGFA5hrBpxd82Y=; b=tYKe0aSNhEuK1D+OebyXHQU53
	ZG/eS1JBlI3B0XbJSjoFusDHqpoHwSGjctXpLgerwYS5+3sDG5s7Fr8NP3l2iCnidO9xtz3OMFrjL
	zqRNje/Nb9iPeDf3M28NDQoUdB8Wg9azoBqe/1XgjNrGKTnsRW+b2bDZ16tCn84CZWeTB0K80GDY7
	CsucehCq9dVPhLJJxyjVRg/5afP7p7bw4FqcxZuzWfkZvq9hPghPIFLsCwYPFkbd3f2kNmXQ3ocjH
	pMcOK3gnHqI385Ush9op0veBJkzL4go+x4xQQh3dNt51EQ//EQa8Mbmn1LA2a2GwzuhHZKq03VEw7
	1m65CTjzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPICm-00044c-AE; Fri, 17 Apr 2020 04:02:16 +0000
Received: from mail.base45.de ([2001:67c:2050:320::77])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPICc-00043g-Jc
 for openwrt-devel@lists.openwrt.org; Fri, 17 Apr 2020 04:02:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=fe80.eu;
 s=20190804; h=Content-Type:MIME-Version:References:In-Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=KNDCmb/XKBZCUgs0QvW246htCYjlyxkzcXbduVYhxtQ=; b=KaBbOmkUgGOQq75Y52bzBHJWyW
 QSMrNd/T6j0o5a/YSlxB3XvN8sXy46VWnIR0MNZY0fxOFaXQ42gyQzYyghzFGE3wInvPQ+pbAG8Ay
 cR1aHn2LWCBXW+jDAKja5vtbTZBUyBkgEe+B3HwZK57mTjw/7K40EvgcjSt4evCcYsmHzXtrAeYDn
 m/GbYIqRp4jxQiEKBlXCgLNjIIFUg7MAi9P3MBOkj/I70Ht+HWqda/2B6MI0XqZlqbyEK0Rfx5+ZR
 QqGb/DBS3wFQKgmCGUP1xbGXaMqTMMpf62s3XYHsXMYk/sVWOMUbBqQ3LtFKP0+75dxT3h9RbfQUj
 2P7aTL7w==;
Received: from [92.206.248.140] (helo=lazus.yip)
 by mail.base45.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <lynxis@fe80.eu>)
 id 1jPICU-0003y1-3w; Fri, 17 Apr 2020 04:01:58 +0000
Date: Fri, 17 Apr 2020 06:01:44 +0200
From: Alexander 'lynxis' Couzens <lynxis@fe80.eu>
To: Rosen Penev <rosenp@gmail.com>
Message-ID: <20200417060144.2de78e1e@lazus.yip>
In-Reply-To: <20200414233728.2519084-1-rosenp@gmail.com>
References: <20200414233728.2519084-1-rosenp@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_210209_360992_6B6E5E6F 
X-CRM114-Status: UNSURE (   3.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCHv3] ubox: run init script through
 shellcheck
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
Content-Type: multipart/mixed; boundary="===============0005004742935738180=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============0005004742935738180==
Content-Type: multipart/signed; boundary="Sig_/HA4NsYEcOmdXSK=Wc8QLPr9";
 protocol="application/pgp-signature"; micalg=pgp-sha512

--Sig_/HA4NsYEcOmdXSK=Wc8QLPr9
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Hi Rosen,

do you plan to do a v4? Otherwise I would merge it.

Best,
lynxis
--=20
Alexander Couzens

mail: lynxis@fe80.eu
jabber: lynxis@fe80.eu
gpg: 390D CF78 8BF9 AA50 4F8F  F1E2 C29E 9DA6 A0DF 8604

--Sig_/HA4NsYEcOmdXSK=Wc8QLPr9
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEOQ3PeIv5qlBPj/Hiwp6dpqDfhgQFAl6ZKigACgkQwp6dpqDf
hgQ/+Q/9FxipilJ9NlERDoyAKRKiHXcXhnTQay2gMjRRIm8dAl315yV3vojXVqJl
blbriXk7pdaQ1K0jmoBgPRr6+biSgZ0r69FARvl8JQwUsEHKrd/NsrLF8mWYezRs
KVRjr+R46htgmtrgWUnYeuf0vY8KEhs9mqNSqElhN4zt7/xozLggu4efLmhK1NF7
2JCac/mCjHmXUEIXY4MXtkibcmw0oiBvU+T27fvoGxfNamBdPqPFaZJjFDkzHkhG
FranbnR/r2NEddsXroly6bdJQVVkBly1oTomH9oE8t7K/g60alkHZxePOpsDLEfP
KWa4xDOwt1Mq5Ip4CIfZmri9L2zwj1Xkmik8laeP4pTJyTror/avl+3PW/CCN2bZ
xVXFRbm5f1IvyDqdhD54o5uI5aAAg4GQxZVEVidd91WuS3OWgbFd6c2+GFON+IP1
YfnpLlxxEXLFzastFscDRSKL3l28onP/K1sCKPyHrlfavv6EUesxubwalEevMBKV
rufDjOEc8XfoTtPnXVmJCSxB0CB3kpCfQy7TSXiOesI54rsogj/5s1hPVvPZVe4m
qPoQ6kX2kHEMuP8xii1M/nMaBEQcqJVnVupMdb0Rs3IHak2Wy5Els5FEiSqFNKES
vd9VKKqicVzuC5cjqgAdhTNv1/OlYdGmmD5GG53rCWWHHX/TGQU=
=XfHJ
-----END PGP SIGNATURE-----

--Sig_/HA4NsYEcOmdXSK=Wc8QLPr9--


--===============0005004742935738180==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============0005004742935738180==--

