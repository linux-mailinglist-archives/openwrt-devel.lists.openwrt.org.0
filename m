Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B05E618E21A
	for <lists+openwrt-devel@lfdr.de>; Sat, 21 Mar 2020 15:42:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:References:In-Reply-To:Message-ID:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=IFz4e4YqyblS13dNoRbjrOQO6Lf2mGJNKyFhIGt9JfE=; b=G1HndlKP2n8+kYzt3MybwPdBs
	17dsUvt3oNkCX2TQtSKkKuhUCUj4IQmryvg9aLOdpbntcQItO1QPeD4sqjc6xvjG+/MziSHlUqQ5g
	2vCrzP1yio/bumCMLhzmaLT43TvGAMXVtq0YYi6RSVO5lByHL/G1sePBgeRWH1HxJn6c1Oqd6EAZd
	yUeY/VWADqcDQtnWcbAh1T4LthV4CLvfJQlq4JJtVGlywvLiAMdJJmV9Q49XOsCGXb1fHZ2pvJ8Pi
	ep6lvi6Frz3Ce2f+QqROmjOR9fF7G6JZLceSoa1VC1it6aqWoOrQhUTGGf2Pf3vajEEgxCe1ftB7Y
	2GwAHcgVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFfKD-0007h0-SS; Sat, 21 Mar 2020 14:42:09 +0000
Received: from mail.base45.de ([2001:67c:2050:320::77])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFfK3-0007gJ-1Y
 for openwrt-devel@lists.openwrt.org; Sat, 21 Mar 2020 14:42:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=fe80.eu;
 s=20190804; h=Content-Type:MIME-Version:References:In-Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=OESMcPHD2Ek4Du2+nZPG1lNR3Hp2LknPbZh1jVhqw0k=; b=raugwfFRpKKgK1Nl6Zmlp80zX/
 jkq2JViAOBcEMEpW1FmxnVC3R9uaa7GOle+YlF33/+T1qwgJ9GhWWoY1J3S4wDmZZt6ITpLRov1mn
 b89TvbSlDjeZTpGTTvBSKOgVMO0pI7Uuj7QdY4ffUyUoR5g0fVNRoDOB0CAf1SdskJoIwhp5nUc9b
 VrOdfkcRUupBkOU/+NcdGDsnqL+u8c6DKSXy4CD9t9jaXmNLgR/jYnRWvTUfc4s7lGBsKSLaFqPbd
 LFogNCC7aMEyW3BpVvSvtfrT09bgxsfIjSqmmGXG4DurEEbw9Tg2iBta5opw/YQAkkq8+G5pYolEi
 ToNpEBcg==;
Received: from [92.206.248.140] (helo=lazus.yip)
 by mail.base45.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <lynxis@fe80.eu>)
 id 1jFfJx-0005Vj-WB; Sat, 21 Mar 2020 14:41:54 +0000
Date: Sat, 21 Mar 2020 15:41:49 +0100
From: Alexander 'lynxis' Couzens <lynxis@fe80.eu>
To: Robert Marko <robert.marko@sartura.hr>
Message-ID: <20200321154149.1d47e581@lazus.yip>
In-Reply-To: <CA+HBbNGAeQJVzUr=Ou+APF9NqJ20f9HOs5mRaYQq46t2kGfEHw@mail.gmail.com>
References: <20200319112206.620246-1-robimarko@gmail.com>
 <C1FYY4LQF4LT.2MRJ5HFOPNKY7@tb>
 <CA+HBbNGAeQJVzUr=Ou+APF9NqJ20f9HOs5mRaYQq46t2kGfEHw@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200321_074201_803470_B760C371 
X-CRM114-Status: UNSURE (   7.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH] tools: squashfskit4: fix build with
 GCC10
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
Content-Type: multipart/mixed; boundary="===============2940872576611171049=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============2940872576611171049==
Content-Type: multipart/signed; boundary="Sig_/6HcN7yEVdj2RWb_+EjDr4du";
 protocol="application/pgp-signature"; micalg=pgp-sha512

--Sig_/6HcN7yEVdj2RWb_+EjDr4du
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Hi Paul,
Hi Robert,

> Sorry, I did not know about that situation but after a look it seems
> that squashfs-tools is more up to date that the fork.
> There has been a 4.4 release and couple of patches each month to it.

you're right! I would like to discontinue squashfskit. It had it's
reason, but there are now 2 options:

a) the upstream is more active and even made it reproducible
b) there is a full rewrite squashfs-ng

For now, I'll test the patch und merge it later. Maybe I'll also have
the time evaluate the upstream and squashfs-ng.

Best Regards,
lynxis


--=20
Alexander Couzens

mail: lynxis@fe80.eu
jabber: lynxis@fe80.eu
gpg: 390D CF78 8BF9 AA50 4F8F  F1E2 C29E 9DA6 A0DF 8604

--Sig_/6HcN7yEVdj2RWb_+EjDr4du
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEOQ3PeIv5qlBPj/Hiwp6dpqDfhgQFAl52J60ACgkQwp6dpqDf
hgRc+g//WGxMwgKUsACN5UdlZA+Rgpk0AkF1BxsGkNlcPylvjeVUlGfMRbcoEAY/
47HDI90Wfg/h70fJAogRQj1HsmszG3pEIUfaZSjqzXozvzUYGfxcNQgOl+exBN8R
j5lZg4OYHymx1x1ERQOH5vTOwzBedb78/sCBDitYAbDisFAbzCkcKStP3QBfA6YR
UOgjr4vkbpbu5ERYgcNEdIWRrY9zcCiNTaehlWcJNuy33xGjExlo64ZAEOq31lr6
4FOwcwr07u8VxJshy8/bZRRf/Z4Zlw2fH8Cv04q5lkd0Xc8JwqsBG3P7YDv25cVM
f/b8hYb5+guOwZvI7x+bOkV2D18lSNhzkOvg6osDbFucCbZGDwuuHTmyNN9N7gP6
Of7Y2jaFVqgMPL73j2paqJMaODRY3pLoRtCTHJfkpLvK8cT7d347gip3h+OryGeN
ZZGUquyyhpOlcsSLulh+zlYzdT22mgEWxdpOubRmuxEeXRnxqzmN6BXMTzPWweaC
w+VqKwxRv8/lE7faFTx3c6TGq+GoVtWfkTcLyV6bmfTwvqkcApOKHT7sxXBiTM+S
mQ1GBLnDOx9dYPOFe0z4W84EOpkffApV09LV/7Y//TIJN4QbjalSBTlll18Z8VLA
gAPfCkvxlIEXmRCvp1jurJuGTWQlWW3yDEJyaQAzw8TAywhDKKg=
=QXDr
-----END PGP SIGNATURE-----

--Sig_/6HcN7yEVdj2RWb_+EjDr4du--


--===============2940872576611171049==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============2940872576611171049==--

