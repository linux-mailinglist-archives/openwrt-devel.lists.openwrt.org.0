Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 592FE181BC6
	for <lists+openwrt-devel@lfdr.de>; Wed, 11 Mar 2020 15:54:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:Reply-To
	:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=8hvxO58KKZEEddETS4jUzptbFPd2xPTRoO5o3kSBBSc=; b=qZSwwkSsm5xAI4EHmJTlRpub4
	qOQULlmUbmbn8RpEmaiASL5D73QMviwJjvO7p9h//M5I6GfqMH39oYuHLASWdwOUXicCtcpZeshCh
	lKOWonSmFFoupU46Ex8hyt3AKX8ESn32q6Yc3OofGvr8qheKS1L7NaoTD+gRaQnzpMoaSiejclQCL
	HORiD5CGRPbrOZOFmHcVo7uKuiapUqJRiMnWD4AaQkAFfoLBY/sAwSzF+IsjKn0F50DadaUqM/UtR
	jCmJfuXCQYslurTRDFhuHoUq2XT9M3WDBHA12dJNs5iNnjc+ag2fBpiTaPasWf+ffIfO2LPpaFifa
	rKeIpHi5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jC2kx-0000vs-4d; Wed, 11 Mar 2020 14:54:47 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC2ko-0000vR-4P
 for openwrt-devel@lists.openwrt.org; Wed, 11 Mar 2020 14:54:40 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id E2B403C30;
 Wed, 11 Mar 2020 15:54:34 +0100 (CET)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id 44dceee1;
 Wed, 11 Mar 2020 15:54:21 +0100 (CET)
Date: Wed, 11 Mar 2020 15:54:33 +0100
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Alban <albeu@free.fr>
Message-ID: <20200311145433.GA20632@meh.true.cz>
References: <20190621153828.20699-1-albeu@free.fr>
 <1b3378bc-3acb-04ef-f9c0-8b4ab158da85@phrozen.org>
 <20190701162342.65246402@eos>
MIME-Version: 1.0
In-Reply-To: <20190701162342.65246402@eos>
X-PGP-Key: https://gist.githubusercontent.com/ynezz/477f6d7a1623a591b0806699f9fc8a27/raw/a0878b8ed17e56f36ebf9e06a6b888a2cd66281b/pgp-key.pub
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_075438_322850_E5AA725F 
X-CRM114-Status: UNSURE (   8.44  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] runqueue: Fix the callbacks order in
 runqueue_task_kill()
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
Reply-To: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
Cc: openwrt-devel@lists.openwrt.org, John Crispin <john@phrozen.org>
Content-Type: multipart/mixed; boundary="===============8231193987276003293=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org


--===============8231193987276003293==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="qMm9M+Fa2AknHoGS"
Content-Disposition: inline


--qMm9M+Fa2AknHoGS
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Alban <albeu@free.fr> [2019-07-01 16:23:42]:

Hi,

sorry for the late response, but I've just noticed, that it's related to
libubox and got interested. I would use "PATCH libubox" subject next time so
it's more clear at first sight.

> No, TBH I haven't tested this, but as there is no documentation I had
> to go through the code and noticed this suspicious construct. I then
> saw commit 6a7fb7d8d (runqueue: fix use-after-free bug) which confirmed
> that complete() is expected to free the task struct, which with the
> above code will clearly lead to an access after free.

Can I kindly ask you for additional favor, adding unit test case which would
expose this bug? It's going to help us in the future with possible regressions
etc. It's not mandatory (yet), but really nice and really helps
merging/reviewing the changes much faster (at least for me).

libubox contains unit tests already, tests are run on CI[1] automatically, one
of the test runs happens under Valgrind, another under various clang's
sanitizers, which should hopefully catch this use-after-free bugs.

You can find basic unit test for runqueue component in
`tests/test-runqueue.c`, perhaps you could adjust this test directly (or write
new one) in order to expose the bug.

Thanks!

1. http://lists.infradead.org/pipermail/openwrt-devel/2019-December/020831.html

-- ynezz

--qMm9M+Fa2AknHoGS
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEPAej20ekYZCJto32WO4SDzDMAtMFAl5o+6MACgkQWO4SDzDM
AtMG+w/+ISqzHrfDtHO4zdYU1Gm2cd0xTlA55ro2pfyTfEx79ZTDMyP8luYr9JLG
0A0tn3kX+7Qb3Dn8jgcEq88r5UvOHQSA15yQFfPihNaZ6Ue/PMEmbYqiIANW4Vu0
cgWgkXoJ0twJCsLBq7yQqNozZiebPYx3mVabN8ty21SAPfycAliLALEwixjrFs/g
v7iYUo2bjwTRbT6gBAoI1UApyVZhfmZCGD+em//GMmibgzystGcFXmapJkU20Z8j
PU/Rf1BnkqKHeiFxJJNom8xsv1/4RkCFuUNV/KQctDHnt8C+O/zlDAwY+XRrUspX
rsLkI0lfaTc09f/QovsALKyRXARgN9+Ae26og9uJ9S2F1s/3pSg5r6j38oQHjFQG
Na4B37pZxVxX2CzzMBTVsl+OJlz96dX/mPcCZ3aVAZNauutyzHezc+sCuXxx/24S
ftAp3SFkCEE5leTEQfvh0O41XVvKflextFTUM+Wk6jDahpexwY6V1G/nejhdNnF/
tjMEz5ORU5dnLqILqmaR0A9Oyy+poXD58DDOfefVFH7lj3YrkAVElx2PztJjAjLI
aYbi8xvv0ObgdDsj5WhQ+FSEctjPFMMG35S2IDUrb0a4KiufhLSKmZ+xmwOT4Fh9
PQ9/M5iyHA6qzcgD3CXvZHQ0XTEnWfI4kmFYA05a63FC3xzQLTs=
=a2Or
-----END PGP SIGNATURE-----

--qMm9M+Fa2AknHoGS--


--===============8231193987276003293==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============8231193987276003293==--

