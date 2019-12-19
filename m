Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56572125E40
	for <lists+openwrt-devel@lfdr.de>; Thu, 19 Dec 2019 10:53:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=0vvFFy1012ZUuBemKjGwFmlPLZgXMeH2H3awv+fK4RI=; b=I96IUTqKWLvVZNyFUQLLAKXj6
	IZFkbs6vsIEDwb2KDElM6mlMxbvDRqGxYAU388P1gcrV2LhESc84NKhEuQMy2Gc69fnu4C9ilSBF0
	TH4cNTVDMtnguRrjx8Fz1yhO3i3po4uw+Zz32ojxvAxoOMYxDH0F3/70jTQl1XUMSYQ95MKVwVSOU
	6qZQmCv5ct0UUMRT4qc0D9DwLRPms1wvTWoNtD37uptkgO5gZKKlMb8y3HcvPg/+qbZ29tP72Nv3H
	A+OFdMgpDCM4oo/yR+qjm7sDFPS7C1A2ANLfND+4JS6VPvE0PSub/ja2TcD32RKzv+BLckIblXsn9
	v0trMEqMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihsUj-0005iO-6k; Thu, 19 Dec 2019 09:53:21 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihsUV-0005Y0-2t
 for openwrt-devel@lists.openwrt.org; Thu, 19 Dec 2019 09:53:08 +0000
Received: by mail-wm1-x344.google.com with SMTP id d139so6635127wmd.0
 for <openwrt-devel@lists.openwrt.org>; Thu, 19 Dec 2019 01:53:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=cu+WpYD/LAGA6v8+u0bpECg2yagFKeWH+bB87V8YbiI=;
 b=qsofWC2748SVPYl9nuSzrNpu5HGB3VFq6Q2UDMahhXM8arWphk4gCkrccCdQBLNiLf
 MbviNJCnvygrw0IFpCroF3kFyITRVO66H+1y40xjM003iXXDrmjPPOehmR0ne5L2rizn
 bJP+pIO9Sxllr2Bb30Vs1vhVenygCMxeRNhfwIj+cvN817X6iZIoLQIIhGC6s79+Oi1h
 YAUSoPyKkxdZcMrBKuuJBCApS9SsYjXn1EjudirPaBHU80D3nBpPVvWfznOr9ydAth1s
 sCxqfA8qguHnSMD98Bgn9vnAXJzbpXzQmDQ7Ib+16WdNI8LK6cvyp+ua8o63SAbtRXN9
 o3oQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=cu+WpYD/LAGA6v8+u0bpECg2yagFKeWH+bB87V8YbiI=;
 b=tPjDzl0ePFod8nJlvFj9sBLiX77C8eI0Lab66RxV0u7gO4TM5L8AuOq0ZsbTMnPEa9
 HsY3bWQrQb8QHsCuUbqzz38/O1oFImW9rN3JvtyHiWLeaQi+p2a5oCIg/dcqRkVNw+Mp
 xydHuJaXnoleCEnP2MJT77row9a4IdbdlGA2cNNGgW2SHBOm/yhRZbonMRCMyIZB9X2N
 FgYd+kOTsDL+PRlguwSgVOkNdc+lpI3CogueA+v5pwlckesylHVLMbN/7hXuTu2jpldl
 lYOE7droutNo8/hIAIuJmAvSkFK4sv7D0247oCJNud2VEjQUZn+st3/EmNV+5go9Fufg
 UJWw==
X-Gm-Message-State: APjAAAWohQRCUyBKYuklGdd2NJcBfp7hISuRq4GHlIrXvY2zEMbANj9x
 JW3oFjmWQcyHJZWWJIUE9myvqF5w
X-Google-Smtp-Source: APXvYqxVWy2/ykF7sabkgUbu6QUn9B6DYWXe+V7lVK/kxbZ0MB+wO3JqV1b8FyaB3roUmvIkVtP3kw==
X-Received: by 2002:a7b:c084:: with SMTP id r4mr8457496wmh.99.1576749185506;
 Thu, 19 Dec 2019 01:53:05 -0800 (PST)
Received: from pali ([2a02:2b88:2:1::5cc6:2f])
 by smtp.gmail.com with ESMTPSA id r62sm1252475wma.32.2019.12.19.01.53.04
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 19 Dec 2019 01:53:04 -0800 (PST)
Date: Thu, 19 Dec 2019 10:53:03 +0100
From: Pali =?utf-8?B?Um9ow6Fy?= <pali.rohar@gmail.com>
To: =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Message-ID: <20191219095303.p2d2e26hznmrtgvm@pali>
References: <20191217072836.11411-1-zajec5@gmail.com>
 <20191217072836.11411-3-zajec5@gmail.com>
 <20191218114432.rasbfboex2z2xsj5@pali>
 <CACna6ryc_CF27aNCd0DCU0HPBhywbAfzirVtMjo1YTiGj9nr3A@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CACna6ryc_CF27aNCd0DCU0HPBhywbAfzirVtMjo1YTiGj9nr3A@mail.gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_015307_195654_D6DFB305 
X-CRM114-Status: GOOD (  19.93  )
X-Spam-Score: 3.4 (+++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (3.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [2a02:2b88:2:1:0:0:5cc6:2f listed in] [zen.spamhaus.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pali.rohar[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] [PATCH fstools 2/3] libblkid: vfat: Fix reading
 labels which starts with byte 0x05
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 John Crispin <john@phrozen.org>
Content-Type: multipart/mixed; boundary="===============3584878479666717452=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org


--===============3584878479666717452==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="4fuj5uhwjdnay7pd"
Content-Disposition: inline


--4fuj5uhwjdnay7pd
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thursday 19 December 2019 09:30:30 Rafa=C5=82 Mi=C5=82ecki wrote:
> On Wed, 18 Dec 2019 at 12:44, Pali Roh=C3=A1r <pali.rohar@gmail.com> wrot=
e:
> >
> > On Tuesday 17 December 2019 08:28:35 Rafa=C5=82 Mi=C5=82ecki wrote:
> > > From: Pali Roh=C3=A1r <pali.rohar@gmail.com>
> > >
> > > commit e526f503918cc29d8b1ccf36a5c3a34645d2be6e upstream.
> > >
> > > When FAT directory entry has leading byte 0x05 it is interpreted as b=
yte
> > > 0xE5. This is how FAT stores file name which starts with byte 0xE5 as
> > > leading byte in 0xE5 in FAT directory entry means that file slot is e=
mpty.
> > >
> > > Fixes: #533
> > > ---
> > >  libblkid-tiny/vfat.c | 2 ++
> > >  1 file changed, 2 insertions(+)
> > >
> > > diff --git a/libblkid-tiny/vfat.c b/libblkid-tiny/vfat.c
> > > index 49b865a..93e4053 100644
> > > --- a/libblkid-tiny/vfat.c
> > > +++ b/libblkid-tiny/vfat.c
> > > @@ -167,6 +167,8 @@ static unsigned char *search_fat_label(blkid_prob=
e pr,
> > >               if ((ent->attr & (FAT_ATTR_VOLUME_ID | FAT_ATTR_DIR)) =
=3D=3D
> > >                   FAT_ATTR_VOLUME_ID) {
> > >                       DBG(LOWPROBE, ul_debug("\tfound fs LABEL at ent=
ry %d", i));
> > > +                     if (ent->name[0] =3D=3D 0x05)
> > > +                             ent->name[0] =3D 0xE5;
> > >                       return ent->name;
> > >               }
> > >       }
> >
> > Yes, this is my patch for util-linux project which was included in
> > upstream two years ago... It was part of my initiative to fix handling
> > of FAT labels in different Linux software, see for more details:
> > https://www.spinics.net/lists/kernel/msg2640891.html
> >
> > Do you need some help with FAT labels?
>=20
> No help needed as everything works correctly, thank you!
>=20
> As you can see vfat.c copy in OpenWrt's fstools project was quite
> outdated. Porting your fixes makes it work for me perfectly!

Ok.

--=20
Pali Roh=C3=A1r
pali.rohar@gmail.com

--4fuj5uhwjdnay7pd
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EABECAB0WIQS4VrIQdKium2krgIWL8Mk9A+RDUgUCXftIfQAKCRCL8Mk9A+RD
UmejAJ9ZGpKCyKOjx0sGtDCH18IGaMwrGACeJRMmzYV8YQPWAm7coRr8QkNROig=
=VBnG
-----END PGP SIGNATURE-----

--4fuj5uhwjdnay7pd--


--===============3584878479666717452==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============3584878479666717452==--

