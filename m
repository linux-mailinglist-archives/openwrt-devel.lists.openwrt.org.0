Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FC84E8AA5
	for <lists+openwrt-devel@lfdr.de>; Tue, 29 Oct 2019 15:21:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=fXJ28TiK6HxpERmW8/HVWgp7WumspJDrkjF8W1ubZ8k=; b=RFkYWm2PhZW/oTZKx87Lvh/3j
	ShgqudYBK1lTaidfhhqv3LI+JKE9ueLEyWLka8eVXoEV4SNJOpBX7W5NsXRLsEWEIQLVo/r/1E0Tn
	RCkCXXx9G0tk1K5V5yzhXa/Y57LDrexsT+UQwmC/02nf3N1u0Si6PFACRz667j421gGyucwvm4U5o
	MVSoxVJNi9pQFINm0QZPMJZ0+kZ+zfw47+AE5lcoRbhUujJ0bcBvWzAya0z9UxPqFNh6ojQxkGrZO
	IgAp1A4IsAiaOHOrAyGCJOCGfEfC4jaw9C9jHNg0wNNfABE6Xszi5qeo3eQQXUTJkJczKgAlCwr/3
	T28Rq8GTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPSMs-0006oh-MT; Tue, 29 Oct 2019 14:21:06 +0000
Received: from mout.kundenserver.de ([212.227.126.134])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPSMh-0006oI-GJ
 for openwrt-devel@lists.openwrt.org; Tue, 29 Oct 2019 14:20:57 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue009
 [212.227.15.167]) with ESMTPSA (Nemesis) id 1MtfRv-1i7e4D1Fq3-00vBp7; Tue, 29
 Oct 2019 15:20:50 +0100
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'Jeff Kletsky'" <lede@allycomm.com>,
	<openwrt-devel@lists.openwrt.org>
References: <20191027233051.7840-1-freifunk@adrianschmutzler.de>
 <8da2e892-72f1-4383-35a6-8cdea112f7c8@allycomm.com>
In-Reply-To: <8da2e892-72f1-4383-35a6-8cdea112f7c8@allycomm.com>
Date: Tue, 29 Oct 2019 15:20:49 +0100
Message-ID: <009e01d58e64$108f7ad0$31ae7070$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AQHsQBjOLh6JtYQH+9crElqH5/jvOgHOkq2rpzXRUnA=
X-Provags-ID: V03:K1:/rWqJ4GiNuuZjpZwwkGEuRn7jrRn6Vh8bbcrEUnVKgVbZDvdsFW
 dp5UAibB6e1FcxK+iOl04eGwDLeTAxtZbZkr6tAVpO7kHuXfDfWIWgpu4+FGiO/awtK8eGJ
 LjzzebGwGNc8ay3rcTrn8wIImsxFo64PVQbFipztxPCmVEf3ttwd61Fj1yyUwuF7eH45nXG
 pnveDKRQ041ER5lYf/X5g==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:eTkHonsDlJQ=:HTo9Ah9bj+QpzMb/CpROSf
 qEiJO/frPRs+B4BWReg4uztBEL3diS8U6/qSsWMSJBYs83Ph8O68uZxuVJrmf95VFTfJMl8pe
 DxYA54/YZMgxF+bE1XjkRnlahsME4pZqF0QEXnJnQWJXRt0coA4KG14k26xwa10AC7vT3G6AS
 7vMzhe6xcufHb0agq21brNR5u1ZrxwPmjwhAW96gP4IIlPJV1YfVyCPHd6Jaqwq5Stvp9CFkX
 CbCz7A3ePhLTfbfkF13/rU/8nGFHufWXe+iF3oUsWItbVQW2jgeb1CFGFiYzjgjotSwHb8Jar
 tiSDSrfqnDnxRHgegWlfG2Dkp5s8h8cX562Pa5/sNG3rTliK4s+9ajOOR+GRiz8hpMwkMEcg1
 3wygTq7mHBDjdPyVtWfMJ0cMn0dmOK9pAF9RXK6D/kR3p0gMZta6mAXKAawZn+eaEw5kJJxcW
 lyM11AA+4gzJtuY53COY/D1wTkC8kydZq3j+idjTqK0QNFJGepNUBwJ4xQnlxESvIi/ujLxcu
 hnnySE29QgxOskDuYyEGg4ZIR5sxVlmJf3zOw2h7Mqc70L/vzcDSNrkLQNa2aj975sn2q6wL3
 7WQ5plSi98Ml+k1JrHwRRtpXEwRys+x1uzSuc5zV4HMkG9tam5PluXcp7ielo2rv8gwaE7Cg7
 IISUM86ySN1yhgmTdFlgr2mfP0g7+PVLRNcYt2lICqyL/RzYDJrdkQ4roiTZJi+rhmAFuQWFY
 8TPOt9qTnBUYNhzhkJFA3dlGhIXZ4NGTWSeRVQZHTzzZOmeKGHY+0K5kTbERmmg5kF1QF0FpU
 dj/Vqw4QCratHemgN2tytcd2oHXyJ9E+tiVesodaERrZwqituqeQV2g8s9iP22JW4xRzjRy3b
 wNGfw/9nZeNFrIo3VPsdH0imFMWsfbDKLiG8ik30M=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_072055_837725_A735A751 
X-CRM114-Status: UNSURE (   8.09  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.134 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH v2] ath79: fix several issues for ZyXEL
 NBG6716
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
Content-Type: multipart/mixed; boundary="===============2138164682254025591=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============2138164682254025591==
Content-Language: de
Content-Type: multipart/signed;
	boundary="=-=0CVSsaL3pmjAbj=-=";
	micalg=pgp-sha256;
	protocol="application/pgp-signature"

This is a multipart message in MIME format.

--=-=0CVSsaL3pmjAbj=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

> > +define Build/zyxel-buildkerneljffs
> > +	rm -rf  $(KDIR_TMP)/zyxelnbg6716
> > +	mkdir -p $(KDIR_TMP)/zyxelnbg6716/image/boot
> > +	cp $@ $(KDIR_TMP)/zyxelnbg6716/image/boot/vmlinux.lzma.uImage
> > +	$(STAGING_DIR_HOST)/bin/mkfs.jffs2 \
> > +		--big-endian --squash-uids -v -e 128KiB -q -f -n -x lzma -x rtime \
> > +		-o $@ \
> > +		-d $(KDIR_TMP)/zyxelnbg6716/image
> > +	rm -rf $(KDIR_TMP)/zyxelnbg6716
> >   endef
> >
> >   define Build/zyxel-factory
> > [...]
>=20
> "Build/zyxel-buildkerneljffs" looks to be a "generic", however it is
> using a device-specific name for its temp directory.
>=20
> At least in my opinion, the directory should either be created as a
> result of a call to mktemp(1), or generically named.

That's neither a simple cosmetic change nor a fix, so IMO it should be a pa=
tch of its own.

Feel invited to submit it, but note that I won't review/merge it due to my =
limited expertise in this field.

Best

Adrian=20

--=-=0CVSsaL3pmjAbj=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl24Sr4ACgkQoNyKO7qx
AnCMUBAAzGsTxnT/B/pGpXl2HwgKC1l/eMxMWrC8sSsASt3y4AKds5BMDku4ymoz
mZYSwLeW8fywVN8JtbMQTsPufF77Dt8JVUQAMQQfRXLOalvALJ/lIg02rFjYj6dl
TnyH2mr8VtE/MMLpA9cWZY8t3O2Fpjo5YrJQrp04QX3QTFQ91wGJoTjLmVlaBaLF
L4gtPFAC6Wj3RCa/B9bSTYNCUAt4/U5IjjcyOsYCkf4KWP6sN0S2igxxA8qUdfge
uVkPZktF+NUFM4Gt6UfneFj6o21rZAi0os/lkPRP3SiwjkixsE4CSshpzoF0x9Na
+1F0nsOBZO2iBbe4G/fKpP6oene8WyKwQ+t7/tcIwobWucAqgBUEOVlCLHzcC1AD
VXbfXF7ffgCjzimHfCNjDOPzOR0W5bNLxr0O9xlsTA7kXouT+tH+SMR+ZHy60psq
wHMnu5tcS/gbQJHfN5wsAt5pYqnFhAl1XMtTWiMzHNBdmMBHvNLwz7DOM3KpmxP7
IsPA4TrjgQji00q9/I7dsqqIB1qFjTEuCRWxw7Nqf6m0QfxX5LWuOAz6VY1LKFwj
PquxCZie5l4jelmDy5fHJ4vtKVYpH9O+j9GABo4GpkiT5kKTaP3VLqtlcwUKQOtj
phfY3Ak2VL8fOv8VPMAdcRvza5ohgqxKyOtPcDbscHI8ev5JEoU=
=TWLh
-----END PGP SIGNATURE-----


--=-=0CVSsaL3pmjAbj=-=--



--===============2138164682254025591==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============2138164682254025591==--


