Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 661B61DFA1A
	for <lists+openwrt-devel@lfdr.de>; Sat, 23 May 2020 20:01:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:To:From:Date:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=elWhM2MNWJBpmwUCoO/jlvpSAELYiG3ZT3r9iVtbULo=; b=QtO
	pUL2qEwjzwHMx/xPSkQRJpJmDvS/GnkGW9jTYrwfSU3A8vLZUTbyAOelydOlQWHSmLTRoPGCYXGXP
	jjxuVm5TnAEQc03T8njwAFfMBTRMD//VBj8q/Ljkxv02Ob8laQTmFtzldMjiA/+iXjZQWCV8yhFeD
	72VgpNdrCw11L7Wfi6gnJwXwYKrCqwk0y1R53L8ACLG2K6ZK3jaceMSvowq6XKlOB+mBIOnCpJV35
	9ETesk+OIp0rfwApwpU8kFY1Lfj4cKioNlafhnznWqklx7kb2zv7pRb0qshvD883jSBnM9Plxgbsa
	BS5AByjBYvqcvHSP+HOdZnkMkloBsWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcYSL-0001DM-Os; Sat, 23 May 2020 18:01:09 +0000
Received: from mails.bitsofnetworks.org ([2001:912:1800:ff::131])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcYS8-00015j-85
 for openwrt-devel@lists.openwrt.org; Sat, 23 May 2020 18:00:58 +0000
Received: from [2001:912:1800::5c8] (helo=tuxmachine.localdomain)
 by mails.bitsofnetworks.org with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <baptiste@bitsofnetworks.org>) id 1jcYS2-0001Ce-V2
 for openwrt-devel@lists.openwrt.org; Sat, 23 May 2020 20:00:50 +0200
Date: Sat, 23 May 2020 20:00:45 +0200
From: Baptiste Jonglez <baptiste@bitsofnetworks.org>
To: openwrt-devel@lists.openwrt.org
Message-ID: <20200523180045.GB1372015@tuxmachine.localdomain>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200523_110056_515806_209A6A1E 
X-CRM114-Status: UNSURE (   5.45  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] Experimental "release goals" for 19.07.4
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
Content-Type: multipart/mixed; boundary="===============0747846751743275301=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org


--===============0747846751743275301==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="kORqDWCi7qDJ0mEj"
Content-Disposition: inline


--kORqDWCi7qDJ0mEj
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

It can be useful to have "release goals" to get a clearer idea of
regression, release-blocking bugs, or wanted features for a release.

I started an (experimental) list for 19.07.4 based on recent discussions
on the mailing list, forum and IRC:

  https://openwrt.org/docs/guide-developer/releases/goals/19.07.4

Feedback on both the concept and the format is welcome.

The idea would be to start doing this seriously for the 20.XX major
release, which could help with the first part of the release process [1].

Of course, it would be a time-consuming to keep track of this manually for
every release.
If the initial concept looks good, we can think about automating some of it:
tag bug reports on Flyspray/Github/Gitlab as blocking for a specific
release, use "milestones", automatically find commits that satisfy a goal, etc.

Baptiste

[1] https://openwrt.org/docs/guide-developer/releases/release-process

--kORqDWCi7qDJ0mEj
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEjVflzZuxNlVFbt5QvgHsIqBOLkYFAl7JZMkACgkQvgHsIqBO
LkYO/xAAhINKtdkSMhRK8G2trts1E5agWMEr7lVqUtxlmJgo6rXwGC02imZGgno6
7VHB8upZijrPJr/R2HaUHZ25AjzjXhOmI8ct7RLWDxhAKP5ZQYTSiyUKt/qvzx5D
645lDkr3aPJoZPjKMECEo/659noarAEaZb58c22NI8AA7aKFh6M3J2n604baslaG
H2YzfIyYrqNkpFBhvYSkNiXBrT1H0VpWpUlbqPRh7YbFIczATRH+H4QMadrYnIMh
HRZCQp2TzB0qhX/OEy4mCHJX8A3z70VOxS1bS4WdPcLlC6p/8VOnnVQw66ifjwnH
sOJHXNReh6d+GvO4uohfNy7AeCoQZqE8+Hk36J+UrE3Dn6mqfLRJJ6M/UY3PgiEC
KOQw6OodQChAshjCfaqohA5czZRJ+p6efmhYiu+P69SMpGZ7VOQitNmUJ23XSDbm
eOxhMnjkv3Ozk3SLvXNmtO5QPzfc5O1Dv1zFkyPxtCat7+6Aor0WCIUYzF+dE+Sx
7fJStG0Hq6GGXql+uHcI/J3SjfNeAH7J7rmLmhypgNOaBeC90PyunTWy0Oqfk/Ag
Zl3lXE/0yoHvYyOxoZB/rbak7S+M/kZXH2HoxSPWVMD7XSXmRFSqdbHO37wAUh/E
gh5OPaL8DyMgwsTzGWaSqBFStm/dulvob7WzRybtBO+xCqofY5Q=
=PRcO
-----END PGP SIGNATURE-----

--kORqDWCi7qDJ0mEj--


--===============0747846751743275301==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============0747846751743275301==--

