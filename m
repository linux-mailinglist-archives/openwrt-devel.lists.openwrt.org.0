Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93DE9E7219
	for <lists+openwrt-devel@lfdr.de>; Mon, 28 Oct 2019 13:50:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=gpcd5VrtQaVEqWWApZz8cqtRth+JWZ8/46/pUKa76l0=; b=XbmppHqb1fTi8jZNS6rrQsYsP
	X1Rujywv3+oH9hsQjACqzdmW/8Nn4Dm/LPxKGZDMSxkWUI/Q9I+diLkeoHdUajqUHhEU0dVGfCP32
	vLJAGqScrhp9+vRVcQWjkVEBYFINbEGUgIrsvhUEYFAJgsCrRbWUHxlZCQtmsaQ/tuVTTX6lJT0T8
	l/HiLJj6+TmWkgePNhwHNHn1UEo5Uu1TGnQn7cphIseDAUeo55AyJhQp1ArJwu/V1hha81CtxFbH9
	2YknshrL1Z4987hxfWdxrsLlSDRUnhwI0qvAaWd6tXWfw0c7Nmv4uMyscbOA4NyZc3Xk/njY11lzx
	cL9X9xbvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iP4Tc-00067k-3K; Mon, 28 Oct 2019 12:50:28 +0000
Received: from mout.kundenserver.de ([217.72.192.75])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iP4TM-0005kn-9l
 for openwrt-devel@lists.openwrt.org; Mon, 28 Oct 2019 12:50:14 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue109
 [212.227.15.183]) with ESMTPSA (Nemesis) id 1MjSHc-1hiYdr0E1q-00kzq3; Mon, 28
 Oct 2019 13:49:57 +0100
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'Tom Psyborg'" <pozega.tomislav@gmail.com>,
 =?UTF-8?Q?'Petr_=C5=A0tetiar'?= <ynezz@true.cz>
References: <CAKR_QVKpKpbDdhQTF9=H63JaxoAwjOq0qJN7RK2G1UjjKapASw@mail.gmail.com>
 <4b8917b6-5e11-bb71-3b97-5eb450daa4e2@phrozen.org>
 <20191028115743.GD22393@meh.true.cz>
 <CAKR_QVKRropRi72rGM8F-CfX6C12Y+ToUi-_3TsFYk+jgDLT2A@mail.gmail.com>
In-Reply-To: <CAKR_QVKRropRi72rGM8F-CfX6C12Y+ToUi-_3TsFYk+jgDLT2A@mail.gmail.com>
Date: Mon, 28 Oct 2019 13:49:56 +0100
Message-ID: <026401d58d8e$33c26cf0$9b4746d0$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
Content-Language: de
Thread-Index: AQFFJmztUCN5sLAVwJsetvgPCo1uJAF9TdyhAYEzHPUCldcF4ahkKDcQ
MIME-Version: 1.0
X-Provags-ID: V03:K1:x2rlvD5hUXSiCWrM+m8SwHjqHThslRTSE7o/j67Z7LsMueYWIBo
 N04R1Apa7xMOB95kUBS46h8kBUdJocQ1aXAaflSEWjfViIjmVRRkuJUHyuTYhXcmqoGPyyC
 /GVTyOCpdP+iop0ZJI4ZamXQM7rHP3976VjEdJPTmhhSeA9ZltBjmPP/a0ybY0Bcn/vW4oA
 Qq194SjUjrq7b3BFhQAvQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:iWia1cGQfAA=:mAnjMj/+Nh6xuhNI5u7VNN
 2F7+H5nSHSmGQMpvRIFOWIpLw2pjASJPHUuB+GI4kxX0+01kQzulKZpEKqf+8qOyJ3UKGSyf6
 DjCRYM1yC3z3ZBrVIFIWYj36UgptwZJIwx2F60HfeBytRRXxJSKfeNu4ulm0bKc1aZBaTsFdh
 lvY87ZSYENl+a7/WEUFZDC6EWFeLPe9CPqkZAWEHVQyD30gDiBsUVzxOGMx37hZ2LLXHZVWIo
 AuyOM7o5LFuaO3or+rILpztsNwKomO0IryDmopkbyYVVKGoOcVMX6M1uanr34QndTYQjIa3lV
 ZLvnhDWli7U0/+PjxW4U3Xdquvo4gPCNs+9sB72AMeusVPT5HvDv6yeRnS3o6zx5onIK7yjDO
 1/JjFq2QXFA8F03q181+GP5wmjAd3bv122epJ2Z7DdVsedH1E9an/ZlhmuH/c6BxqPvCv8Xik
 lk15g3OSIzZ9rnJo52QtBRnKReU6MzDLdOIDkW9ZcXHGzMtPhJJB0hnc49FaY/On3TxYAoJoy
 LuN8rcMeB7yo4yPjMirrmITWRC2qrpyRLbSF9AvfFfBNG2+TQGRhN2L15dq5fduXQ0zxZ2ZBy
 j8wJ3JCxdo43LNqlDktUCrdQISn+GfWJLyTKqKM5Ev8SmM+bAU+OOAcZu9N62VQVNHi3cW3HE
 NChDH3Ouwo6OsKvRaJqltGLefwhe373RBgl/9qVEjII7V/jKxSF9BjfwX65N9Nu9ayabNtf4I
 W3+oEpC3W3E9A+Byqj6VYHx814aTo14IznezewWPSzwI1tYbPeuNAI6DmgE9od2XZaCwV+Pdt
 DcoHJ2EHErJdwOhtME51RS/jRFX2nz3BDNK3EBnb6ahggewrpLYAWwV5yV5OpL6q0bOjm1BRk
 AzMwvTH0KXeIz3lmQaD9j8u/2NQiF3nlOZaTF3k/c=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_055012_662926_9D6628A0 
X-CRM114-Status: GOOD (  12.35  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.75 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] patches from 2018
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
Cc: 'OpenWrt Development List' <openwrt-devel@lists.openwrt.org>,
 'John Crispin' <john@phrozen.org>
Content-Type: multipart/mixed; boundary="===============7114692466719908499=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============7114692466719908499==
Content-Language: de
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="=-=fh882FOBw9/uxk=-="

This is a multipart message in MIME format.

--=-=fh882FOBw9/uxk=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

> I don't see how that would help, since the commiter's responsibility
> is to review the code and make sure it doesn't break the build. And
> having the patch itself is already a pointer there is an interest in
> certain feature/fix/whatever. Also, at least once during the past
> year, you were nicely asked to take a look at one of the changes which
> you refused to do with a convenient excuse. So I don't think your
> suggestions should be taken for good here.

While one might argue that committers have the responsibility to review cod=
e in general, there is no responsibility to review particular pieces of cod=
e.

As all committers are doing this in their free time, it is inherent to the =
project that some patches just won't reach the interest of anybody. This is=
 obviously annoying for the submitter, but it's not unfair by any means.

So, asking nicely might raise your chances to get attention, but it won't c=
reate any obligation to act.

And concerning reviews/testing: From my experiences those are very valuable=
, both from the perspective of a submitter and a committer.
The committer has an easier job if he knows that someone else has checked w=
hat he is looking at. Despite, reviews/acked-by/tests by other people also =
indicate an _increased_ interest in the topic, possibly (not necessarily) r=
esulting in higher attention for the subject by committers.
Unfortunately however, reviews etc. are things that can only be given to ot=
hers, so if you start to review patches now due to my convincing arguments =
it won't immediately help your patches to be merged faster.

Best

Adrian=20

--=-=fh882FOBw9/uxk=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl224/EACgkQoNyKO7qx
AnCAKw/9F46kZCHdUwopRznnkIdtZ8rAmN+xnOT9U5fycEY+hQTSWleSJClHWQOP
R/gSUobt4kdW9QlIefiKBbqB8AdZSLyrnJ20/3O8F36g7rX+WIAlGOFlT8yF664n
CDfgZ/q4tW288JHkuEleIBV7lbdpX4pEStXHyTiRCtS4R+nV2A7J2ixZPe/5aAx8
tXtT1HYz39qNord+4fn6eK+9HgY0ArMrqfH7MxkWFKEvZFSTemMHLm+Ss+VUFgRu
w5NEdLJM/Rpt7lXVA4g8e1N6re5kb32A6OeFRo7c6VKJoRYTuS+2MyXP1e3cAuKy
LoSBWeoCEw4AlAQ4DZhatycLP2JOrLl6F8uxMCDwUFSfICDLITvLDvqLYKn6Svz3
7RfKQT9loxleT+UWTrpPjWX84zQ8ViPn3r0lVroahTL6gZgQWV5Oo/kwLS+/hQWX
vx+kWAthBAcoLqcB+DX+V3QxgiuiKMkCwLzbemIMsgKZxbE1pqjZbniteWjgz9tA
FQrB5Jx4JDTAA6dnOk5mug5hNDZJHhLoH5SJ+j38XNIdlpsEVcz04XMSdrkb305x
MU8OI7WwB3iyClVtGtxRDpZjFKKPBMI4TdeALZo92ktL0Su/AKYJs1jMWTEJ7i3I
+dzy3GEQHDL2WvVUfhFwqdbXfKpERrqnd+P8fOcLXJZ1hrWQ/iA=
=XgeA
-----END PGP SIGNATURE-----


--=-=fh882FOBw9/uxk=-=--



--===============7114692466719908499==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============7114692466719908499==--


