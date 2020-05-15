Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A4DE1D430C
	for <lists+openwrt-devel@lfdr.de>; Fri, 15 May 2020 03:41:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:Message-ID:Date:MIME-Version:References:In-Reply-To:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=1BCE00KVKv+NMhLW/qYbLugY6ImJvyHUYfQVtkr8nHc=; b=cuORuVShYtcN6MjWyHt05qPPA
	0lRBXixNcw9x73qrsl9UEp14CuXhOoU+VdosTubNvtIGKY/3cPE32fW6CI3NLCUelCgnNp22bOs/3
	9ulB4ZomG7UJJ2As1a1Lx7F0+eTncHeAIzJy7A9U3GNPHsS9tjzhJok55HiFZ2kSqbLVASqunEnCl
	urI4cKCsWNMgW1Dlb1DzMoQAQzperqcX8e8K51Ep+W4kJlkLJo2QZXKghNjoySw9DPrQD94hzNTgm
	7XqgwPq1kDFDamLKrx8jz882bEVDA65tOglFUfP1zVQbVAl40/CSOt0ErUq8+1MbZ3yqYAKOT4aEF
	RFebMtXpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZPME-0000wK-UX; Fri, 15 May 2020 01:41:50 +0000
Received: from tuna.sandelman.ca ([2607:f0b0:f:3:216:3eff:fe7c:d1f3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZPM3-0000uM-7U
 for openwrt-devel@lists.openwrt.org; Fri, 15 May 2020 01:41:43 +0000
Received: from localhost (localhost [127.0.0.1])
 by tuna.sandelman.ca (Postfix) with ESMTP id EA230389DE
 for <openwrt-devel@lists.openwrt.org>; Thu, 14 May 2020 21:38:45 -0400 (EDT)
Received: from tuna.sandelman.ca ([127.0.0.1])
 by localhost (localhost [127.0.0.1]) (amavisd-new, port 10024)
 with LMTP id 2589uJ31c1PQ for <openwrt-devel@lists.openwrt.org>;
 Thu, 14 May 2020 21:38:28 -0400 (EDT)
Received: from sandelman.ca (obiwan.sandelman.ca [IPv6:2607:f0b0:f:2::247])
 by tuna.sandelman.ca (Postfix) with ESMTP id 5E1E2389DA
 for <openwrt-devel@lists.openwrt.org>; Thu, 14 May 2020 21:38:28 -0400 (EDT)
Received: from localhost (localhost [IPv6:::1])
 by sandelman.ca (Postfix) with ESMTP id 677723FB
 for <openwrt-devel@lists.openwrt.org>; Thu, 14 May 2020 21:39:54 -0400 (EDT)
From: Michael Richardson <mcr@sandelman.ca>
To: openwrt-devel <openwrt-devel@lists.openwrt.org>
In-Reply-To: <352D5EB7-CFBD-4A71-987A-DAC29AD4A826@redfish-solutions.com>
References: <CAJQUmm6Y-XFYUivOBZoFB9teO9keaEmoHdnG07P6zP=ySkqs3g@mail.gmail.com>
 <EF289B10-A44B-40B9-B071-3E875AC77B41@redfish-solutions.com>
 <5469.1589466193@localhost>
 <352D5EB7-CFBD-4A71-987A-DAC29AD4A826@redfish-solutions.com>
X-Mailer: MH-E 8.6+git; nmh 1.7+dev; GNU Emacs 26.1
X-Face: $\n1pF)h^`}$H>Hk{L"x@)JS7<%Az}5RyS@k9X%29-lHB$Ti.V>2bi.~ehC0;
 <'$9xN5Ub#
 z!G,p`nR&p7Fz@^UXIn156S8.~^@MJ*mMsD7=QFeq%AL4m<nPbLgmtKK-5dC@#:k
MIME-Version: 1.0
Date: Thu, 14 May 2020 21:39:54 -0400
Message-ID: <5936.1589506794@localhost>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_184139_666393_AEA1FF97 
X-CRM114-Status: UNSURE (   5.44  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2607:f0b0:f:3:216:3eff:fe7c:d1f3 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] Sysupgrade and Failed to kill all processes
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
Content-Type: multipart/mixed; boundary="===============6742825762264276563=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============6742825762264276563==
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha512; protocol="application/pgp-signature"

--=-=-=
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable


Philip Prindeville <philipp_subx@redfish-solutions.com> wrote:
    >> In general, I think that this decision needs to up-leveled to as a
    >> build option.  There are many cases where I would agree: you want the
    >> box to die rather than potentially come up insecurely.

    > A while ago I posted an option to =E2=80=9Cbake in=E2=80=9D a default=
 root password but
    > it was nixed.

    > https://github.com/openwrt/openwrt/pull/622

    > Too bad.

Such a thing would violate the California, UK and coming Australian and US =
laws.
We are also going to have to deal with admin/admin; maybe there are already
plans for that.

=2D-
]               Never tell me the odds!                 | ipv6 mesh network=
s [
]   Michael Richardson, Sandelman Software Works        |    IoT architect =
  [
]     mcr@sandelman.ca  http://www.sandelman.ca/        |   ruby on rails  =
  [






--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCgAdFiEEbsyLEzg/qUTA43uogItw+93Q3WUFAl698uoACgkQgItw+93Q
3WUXywf8CkQzhQ/LmEmMDOTXELwnLjE2hN6WcLZOQtT+KuL4RYiXm5PvuOfk9ySD
IMDtcrk3E6C/ZNvMkJRMybmyqPE8WyuTbolhr3AcdN0AczCg/sZeK296W25PCxei
lCS1T2Vp96v3PK5LfTd6wt1VD1yYP3t4jGSwjHmrxtAWGKPP+NBuuZoKPvYll+8N
SPC2ua30FthSNkBux3ubkFnEGYrVY44uGGe9u2PMZSRZsSI/d2eJrlOF67/tH+gj
Ir+mrGIIPAyU4zL43tOdKC5IMuBuEt6Y6X6r+kEm19anBIOOVBuCUy9h4boUfbFZ
Xmgy4IqltPgFBGmA6ExAo4EwGU9Z0w==
=TQjX
-----END PGP SIGNATURE-----
--=-=-=--


--===============6742825762264276563==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============6742825762264276563==--

