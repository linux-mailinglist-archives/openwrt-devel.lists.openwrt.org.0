Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 279FD138423
	for <lists+openwrt-devel@lfdr.de>; Sun, 12 Jan 2020 00:58:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xWG70uEHuCm9k/vxkNgzmXVLQNPb9/UU6+TrJ0xkyLk=; b=aW8CbvxHsLtJHBKdwzAxLGMfv
	R1oXlciRl8nLb9pU8lenCx9yEmZ83shl+pJhEmNTb+FTczchzK+ivChrD0EO9L1kbml4i0oDjJIEu
	ThbwNNBuv/y1G719gmlRvjn/Xibz7AioX8JLTCzVjEMqXqJ+eGbEBQ/LuonlajqYACbWRUC3RCarc
	rGC/9+Q8SyWCyO3QpAiBpBg2+3VXq4Mv/ha80wOwF/Qd67PpN6Yc7DBrBOFsln4I3VMuZB6mnCFu4
	/lSrmFFi3AUq9FLygW01I67QnujP+K1NVNMtaRMnyiGUsJ7f3p07qPLkmbfCviVZl18xDeiYraSXw
	fnQNN9Obg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqQdc-0007PT-6I; Sat, 11 Jan 2020 23:57:52 +0000
Received: from mails.bitsofnetworks.org ([2001:912:1800:ff::131])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqQdS-00079P-Cu
 for openwrt-devel@lists.openwrt.org; Sat, 11 Jan 2020 23:57:44 +0000
Received: from [2001:912:1800:0:2bb9:b551:caa7:dfa9] (helo=lud.localdomain)
 by mails.bitsofnetworks.org with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <baptiste@bitsofnetworks.org>)
 id 1iqQdK-0003hP-9s; Sun, 12 Jan 2020 00:57:34 +0100
Date: Sun, 12 Jan 2020 00:57:29 +0100
From: Baptiste Jonglez <baptiste@bitsofnetworks.org>
To: "Pumr, Ondrej (EEK)" <Ondrej.Pumr@skoda-auto.cz>
Message-ID: <20200111235729.GH350192@lud.localdomain>
References: <C02EF912F243ED4F9D4C4104F769FA4869CC52A2@SKDAMBXM02.mb.skoda.vwg>
 <20200110140224.GA209673@lud.localdomain>
MIME-Version: 1.0
In-Reply-To: <20200110140224.GA209673@lud.localdomain>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200111_155742_649780_AACF5476 
X-CRM114-Status: GOOD (  16.55  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] Question:  Migration from ar71xx to ath79
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
Cc: "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>,
 Thomas Endt <tmo26@gmx.de>
Content-Type: multipart/mixed; boundary="===============7998043767988145133=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org


--===============7998043767988145133==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="dMyqICaxQaaUjrCL"
Content-Disposition: inline


--dMyqICaxQaaUjrCL
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

The migration guide is now mostly complete, many thanks to the contributors:

  https://openwrt.org/docs/guide-user/installation/ar71xx.to.ath79

I have added a link from the 19.07 release notes: https://openwrt.org/relea=
ses/19.07/notes-19.07.0

The remaining documentation issues are the following:

- functionalities that are present in ar71xx but missing in ath79.
  If I read https://openwrt.org/docs/techref/targets/ar71xx-ath79 correctly,
  missing functionalities in ath79 are supposed to go in the "Unsupported"
  field of the hwdata?  How do we know if it's missing only in ath79 or in
  both ar71xx & ath79?

- update download links for all ar71xx/ath79 devices so that they point to
  19.07.0/ath79 images instead of 18.06.5/ar71xx.  This can be done by
  changing the hwdata page.  Should this be done blindly, or manually
  after checking that ath79 works properly on the device?

Baptiste

On 10-01-20, Baptiste Jonglez wrote:
> Good point, the ar71xx - ath79 migration needs more documentation.
>=20
> I have just created https://openwrt.org/docs/guide-user/installation/ar71=
xx.to.ath79
> but it needs some work: is sysupgrade supposed to work in some cases?
> With/without saving the configuration? Is there any danger when forcing
> upgrade with "sysupgrade -F"?
>=20
> @Thomas: I saw that there are auto-generated pages listing ath79 devices,
> it's very helpful:
>=20
>   https://openwrt.org/docs/techref/targets/ath79
>   https://openwrt.org/docs/techref/targets/ar71xx-ath79
>=20
> What is the source used to generate them?  Where could people add
> important information about upgrading for a specific device?  Would it be
> better on the device pages themselves, or in a column of this table?
>=20
> Thanks!
> Baptiste
>=20
> On 10-01-20, Pumr, Ondrej (EEK) wrote:
> > Hello,
> >=20
> >=20
> >=20
> > I have TP-LINK TL-WR842N-V3 running OpenWrt 18.06 with ar71xx and I wan=
t to migrate to  OpenWrt 19.07 with ath79.
> >=20
> >=20
> >=20
> > In the list of known issues it is written, that "Sysupgrade from ar71xx=
 to ath79 and vice versa is not officially supported, a full manual reinsta=
ll is recommended...".
> >=20
> >=20
> >=20
> > I don't understand the meaning of "full manual reinstall", but I thing,=
 that instead of upgrading the firmware via web interface with image "openw=
rt-19.07.0-ath79-generic-tplink_tl-wr842n-v3-squashfs-sysupgrade.bin" (size=
 about 4 MB), it is recommended the upgrading via bootloader + TFTP with im=
age "openwrt-19.07.0-ath79-generic-tplink_tl-wr842n-v3-squashfs-factory.bin=
" (size about 16 MB).
> >=20
> >=20
> >=20
> > I am right or does the "full manual reinstall" means another special pr=
ocedure?
> >=20
> >=20
> >=20
> > Thank you
> >=20
> >=20
> >=20
> > Best regards
> >=20
> >=20
> >=20
> > Ond=C5=99ej Pumr
> >=20
>=20
> > _______________________________________________
> > openwrt-devel mailing list
> > openwrt-devel@lists.openwrt.org
> > https://lists.openwrt.org/mailman/listinfo/openwrt-devel
>=20



> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel


--dMyqICaxQaaUjrCL
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEjVflzZuxNlVFbt5QvgHsIqBOLkYFAl4aYOMACgkQvgHsIqBO
LkYP0RAAt63h3nUexeoMXIXAKP8rg8vOQ4EoWD9ENEsKrE+cpa+cSNJSPZfPfhcA
v5lKXgJ7JIfsxNS421V/mBW6QN7eVpkmFtZMJTqWNI6ISV/+ltkv95am0hkpAZyB
+7l9NhGvF12I+fsXUxRU+zrYmtxKZkaVcMzXX/5jSho91GgfbUNLylMDl5lG3Ak7
AdIOJrYpY7lirZfKJd2Z8R4iC9WyvhXDkQa1ZEuatqCZlugbeK58WijdEe5F9F+E
J6hFblpcr6fbSowF7hPmgEPBxb5WZDNWH9JhaPvdrSRUyNo6a8FwwzkugfeagHbo
oFwDmYl5s/ASF9ZZhjQdvo8uvtvEnmreuBK5Gfbg8q7e1cCOySrnYZdWYFG7LJff
/YIWTplVZvD8O9L4TN5bzGrjLelVE4YuoYp0cVgYb9HlOsdM+fZR3AGHdWaLtZRe
ISMFj/N4hGQcE9ZkRUHYfqsFdZ33ypXpXu42IeOr7FK3XXeRAhWcwNCV1GO3hI6C
dgrTZIVslYac7mZehywe4MopBBXJ2Q4xhMy18Sx/8jzT3/PdrnRTXlAR3qbx6eeq
ZoGd5nVCk3CLVpBcO8T5U5TSNMvI+InITE2KnmSllBiF+8GFivwb7CrTtNz0k4/q
xISj8jE7S0sznVhCb3LtL6EYswYJ/fv/pTkkBt8IKlNzgyYoRjQ=
=dQcH
-----END PGP SIGNATURE-----

--dMyqICaxQaaUjrCL--


--===============7998043767988145133==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============7998043767988145133==--

