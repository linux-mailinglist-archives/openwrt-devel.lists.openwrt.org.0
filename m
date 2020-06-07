Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BA631F0B02
	for <lists+openwrt-devel@lfdr.de>; Sun,  7 Jun 2020 13:56:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=UAGgRuZE9ZemWQZePpfaUvgP72HOrz+haHZeRR6MSqI=; b=KLPvYyNENxG9zqo3DmoF8PLr/
	o0YBWDNsvWuwkmmVgYiYs07i/cWwGA1EY35OWjkl/FjyC2cCA8RUYcKzRk9bsrmXWt8lJHznfD2M8
	KfGGPCmDaRafs2tjiNR9NAhRbMTPDXMXS1L8wYimBp4S8EwRdln3AFYvNZCTqBIY/7kaAyODCrxQh
	2C2TX33ZJiBR4dlTc5+WmVyhPAocgvB3Sl7vIV37/Kt15Dw1Z2NNRjj5txBdHVAicfPefBksrmkBI
	GBM5eeFH6g1tEw7O+BVE/+ijmZ98e5I45Fjs2bsYNE36wDeEtTXiQxFVI0JZOt2sRkH+VJ4LNBmi8
	REq8zu2Wg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhtut-0001xE-5C; Sun, 07 Jun 2020 11:56:43 +0000
Received: from mout.kundenserver.de ([217.72.192.73])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhtul-0001wf-VT
 for openwrt-devel@lists.openwrt.org; Sun, 07 Jun 2020 11:56:37 +0000
Received: from desktop ([188.192.134.246]) by mrelayeu.kundenserver.de
 (mreue107 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1MHndY-1jllWI1Hra-00Eu0K; Sun, 07 Jun 2020 13:56:32 +0200
From: <mail@adrianschmutzler.de>
To: "'Matthias Schiffer'" <mschiffer@universe-factory.net>
References: <20200607111115.1958-1-freifunk@adrianschmutzler.de>
 <0c450c30-e1c6-a592-8840-02232ae24dea@universe-factory.net>
In-Reply-To: <0c450c30-e1c6-a592-8840-02232ae24dea@universe-factory.net>
Date: Sun, 7 Jun 2020 13:56:31 +0200
Message-ID: <008101d63cc2$afb49de0$0f1dd9a0$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Thread-Index: AQF4PGYaMUt4WfKxr8EUMSZp/MkILgJBRBcEqXb/gSA=
Content-Language: de
X-Provags-ID: V03:K1:47F66+N/p8qrqq6X58MGovvVLiAcKlN9FlbyGmr5wh3zZ+1g0eS
 IVHmMoLGXPNjEzS4kt2ep6YCti0WfrUrIbrYe/4FO/CO0xrJ1AuiLlxNcv62EoaKipXlFKr
 BsMc9dd4cNRtuNXQT7pInkj+jU0qri6RfndBdfFXZOdzCbte1HR4tTTe6xnmK1YOASLsFcj
 nQ/YaQqGl2SFwU/RktC+Q==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:wlIMerIgGF8=:FWW5w7h2CGFOkoCm0J9VWQ
 sbbjmuDMBLDeRIpq7+/ngv6xV1k+G4I6iXnB44NZfQgOWX82Ejp02bZjRZsucxxExBakNRyQh
 qosdK9UQOZY5sXvhmVgpfDxBi6FbG2zF6WAdddJns9GygvmZJgtB3K6WdFyVFEynYMeJFVKtY
 BUNM2zlW+lPeAPYWFF9QKhbau4+4DGgIVliQ+cQ5PfyIljgipolTtTX1jMyzzJTJhEiiFPTbu
 gG6QHLO62ejAm7RyxZoJP2aX5vbnY6P1LHxBtlRUe/UiWhGNN0moCtEUbmHbHITRS6qFW0/z7
 78opftE0l8tbolFZPexq3LvE4+DoKkeYu1qKOj6814D4v9yDGMl+oT2YNRWznkWLIU6bgNVzD
 WhfzcEmffDeCvORp+bXvn1KSoWgT+9d2SB/ai9QMsR1F5ob4vFqVMpHMLOptwUTHGqddxFMvR
 ecQ+KD8Fui704XOR1618d6OhRJkWgHmBWFBsjHjVXUo3O5gXVfbJEC83CGfmx+R/PjBoZwjGa
 ttDjFN0XNY+D1HUBAdd3ZoOF8wJsJiMpqF6CkcuYacP5lbpDx7ji0e6t+ZTiVfkZk09tbkIh6
 d88duqyIf4gh2pb+c/9fy3GovaMYRZ2oq7V6LqxM2KPv9sWc79QwOvOq5GQBOzav/4Gu/oGIp
 8AUy57XgtfQ7YShsGQuuhYisZptIPni+sqUDaZwPACxGsmipJnYoCnzlBBqK8DBhRzN91Rr0r
 8cTXkro+YcvDZnP8r7wrAn8nJZ+eC1vmI383PWqNLDki94guM/S234iQW1/pac3/zQ77sfFhO
 ieccXH8o1BIXAVlFvZugQ8+ayxwKTYseaLPxOS2h6EKzjs8Xx4vWcdR2BUFcPrvQb9OPnik
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200607_045636_307546_09CD5CBB 
X-CRM114-Status: GOOD (  13.60  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.73 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH] treewide: simplify inclusion of
 subtarget image files
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
Content-Type: multipart/mixed; boundary="===============8540012309744487910=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============8540012309744487910==
Content-Language: de
Content-Type: multipart/signed;
	boundary="=-=ukI5+SblDl80FT=-=";
	micalg=pgp-sha256;
	protocol="application/pgp-signature"

This is a multipart message in MIME format.

--=-=ukI5+SblDl80FT=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Matthias,

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
> On Behalf Of Matthias Schiffer
> Sent: Sonntag, 7. Juni 2020 13:33
> To: Adrian Schmutzler <freifunk@adrianschmutzler.de>
> Cc: openwrt-devel@lists.openwrt.org
> Subject: Re: [OpenWrt-Devel] [PATCH] treewide: simplify inclusion of
> subtarget image files
>=20
> On 6/7/20 1:11 PM, Adrian Schmutzler wrote:
> > Many target use a repetitive if-include scheme for their subtarget
> > image files, though their names are consistent with the subtarget
> > names.
> >
> > This patch removes these redundant conditions and just uses the
> > variable for the include where the target setup allows it.
> >
> > For sunxi, this includes a trivial rename of the subtarget image
> > Makefiles.
> >
> > Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
> > ---
> [...]
> > diff --git a/target/linux/ath79/image/Makefile
> > b/target/linux/ath79/image/Makefile
> > index 529baf8f57..a555cfc6d5 100644
> > --- a/target/linux/ath79/image/Makefile
> > +++ b/target/linux/ath79/image/Makefile
> > @@ -68,20 +68,16 @@ define Device/Default
> >  	append-rootfs | pad-rootfs | append-metadata | check-size  endef
> >
> > +include $(SUBTARGET).mk
> > +
> >  ifeq ($(SUBTARGET),generic)
> > -include ./generic.mk
> > -include ./generic-tp-link.mk
> > -include ./generic-ubnt.mk
> > -endif
> > -ifeq ($(SUBTARGET),mikrotik)
> > -include ./mikrotik.mk
> > -endif
> > -ifeq ($(SUBTARGET),nand)
> > -include ./nand.mk
> > +include generic-tp-link.mk
> > +include generic-ubnt.mk
>=20
> How about moving these lines into generic.mk, etc.? That way we could get
> rid of the ifeq ($(SUBTARGET),...) completely.

I considered that as well, but personally I like it better "my" way, as the=
 image/Makefile provides "an overview"  of the relevant files rather than h=
aving a cascading arrangement. (Of course, that's purely matter of taste an=
d your proposed method wouldn't be worse by any means.)

Best

Adrian

>=20
> >  endif
> > +
> >  ifeq ($(SUBTARGET),tiny)
> > -include ./tiny.mk
> > -include ./tiny-netgear.mk
> > -include ./tiny-tp-link.mk
> > +include tiny-netgear.mk
> > +include tiny-tp-link.mk
> >  endif
> > +
> >  $(eval $(call BuildImage))
> [...]

--=-=ukI5+SblDl80FT=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl7c1esACgkQoNyKO7qx
AnAIfg/+Ou4LRROoVZCfGdzRvFBY0I7PO8LnwyNhRff/q1ZSvbnSGgZC3Jdn4RW3
O97DMq/KQIAyst55XUnR9Xh5kJv0cbpl2uPZkgDB32gT1D3GTqKlRwVohlvk150c
EHFkdhVbjoDnnl6UCTvkSTE3DNwMCk5W1o3trkUQZTjdQ632lqjdCtsbhJpjgba2
95Zflej/o2VqVXuB3fIl5JXjXOqBuF6a/7f0AVgTe2GW/hCodHh93v0zmJ9miFe2
F76KW+kjc0zMMk1YRaVHHIBBve2rImvIscnxsrST9Cf0ohzf1lqJt39X5w/k+GRm
2FY8RVUvhQzyjzpcuBVFvNdLd7EJFVDR3jcezKnd6YDj8xG+F676HbJUah4FEFWh
brvPlxWnn20DroetIG/KfqTmnUK+i7Esa6P73hSg1/In15m+uYyvSMFY4av28T5i
lBfX9u5lcBEowSJN0803iqQG54Hk2x3Sy4Y9WmiCGADWwjVQ1M1EUtzUDX4OSUhe
0vRR8Bczor7zrb0lUFwbbcNDU8r95sSpbagY0JQnrz3cFG1hjY0W3mKVOPC9gdvh
BRgosaYUYWnhOdCp1kOeRijIxInNXrko55W2IkUTj0/vuf+l7xvipqFDiXRePNvL
DtsoSNRk5SYKncZvw7dbB+G5iEQJyYu4MsEyMZ/W3LPN/74TRJQ=
=pGOk
-----END PGP SIGNATURE-----


--=-=ukI5+SblDl80FT=-=--



--===============8540012309744487910==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============8540012309744487910==--


