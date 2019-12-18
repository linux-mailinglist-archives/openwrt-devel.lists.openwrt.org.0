Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7019124605
	for <lists+openwrt-devel@lfdr.de>; Wed, 18 Dec 2019 12:44:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=HtaZZEj5m0uJsAFyZzsPHxHIDz5GzUUNCguGlVnJ0lQ=; b=mBzk46FTuPoSdZ0NrSRAuGKNp
	UeFBwLzvpH3l1AT4AcUf1W1aaspVb7ru/bzITbuhH0TuSDMsKMT7QvsGnNpxqQKGuUPrdPUOYWnIJ
	N+qLFjWPykj8nusfrSQNJC/7qpxM/LB68dUbYvPM4E918fzEPpHa2j6FEQD/i3Bup1fsrSUYWJQWr
	kq3cX3Ot0XVX0Q0CMFQ+1wUe0LOqk3ZmbLHnX6BWsnXPxamcCaCMqqdVq2mA7JYQaAMUDmkVOVWKB
	nE/lBvyuTJKpLmrGxlAeRQDAmCFPSCG4QvdvniPOYYt8Zgs0VuBSAFre6vCTb68m5i/mpU1O4UJ6e
	/jnDnczsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihXl4-00083i-2I; Wed, 18 Dec 2019 11:44:50 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihXkq-000821-0Z
 for openwrt-devel@lists.openwrt.org; Wed, 18 Dec 2019 11:44:37 +0000
Received: by mail-wr1-x441.google.com with SMTP id t2so1964926wrr.1
 for <openwrt-devel@lists.openwrt.org>; Wed, 18 Dec 2019 03:44:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Z2qA/nx6b2hVt99Xq1/BNxevnH3ER09ysGbUi3OiTck=;
 b=OGTye35ZcxitzCceu7WkgMLaYUeej1NS2Ll8qKX4QZxazUqfkHEQngckVlaPvOGAmE
 ZhJYYNOVLDEarUHP/+4c0ZQmf3rzsjzplPrPVlkErKRj8vdbOtxIdbX+JP37LEi4nQst
 y+biOlIea4DDsrSDEkrwi/v0akBd0x59FGA/G2bAhCqy8kcoaUwBIEUmgCkJwjyFbzI3
 ad8eBZv6YVIkqV6KmnLfdo+hvXcz4gGqOmzxUijdIuzY/ivWlGpG3jOcaSEJxpBbQ9Mb
 b0MrvYcEwhC7riqyznJYrGzIMM8Upd2sFh2oVNILLQAkW0S/VRpEuuJ0kT3UL4TPMIbN
 aVQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Z2qA/nx6b2hVt99Xq1/BNxevnH3ER09ysGbUi3OiTck=;
 b=ZhbWflaO1wWSHcOAsbUOVRPaae5W+izhNEGTXUCfJsXh32mPpzcfoo22hSSAFXv0il
 KFbJ5omBP4R/R/QHIgafiQjd7/E28sVXej7e2fZJCHxhdRBLLJ6yj3z57d034V/GLjmK
 4DZIZ3L0MqO4rEweMHIHHBIbJT7Ynuth22b+rMvat40j+xRxQsk6d7xGU7aYBFgHDngj
 JpqwTSlNs+B32abKeOMVDFvC++Ve9fps8VAQ8RDopw3MposcO0T8sQkS3wzhl/rERUZa
 7eeAX5Z/i1H5T3xR6nsLMs0/FkxVRKLr2BvtU+kyIPdqEkoJEhOlXLbbncv0LhPzH0m1
 xg/A==
X-Gm-Message-State: APjAAAWAWxzanxNWMhKnA61MYJV8gSMbm+JfB0yeuGs2O/foeBWNnFeb
 HKC+bfyvoNeaTJSByJB65y8=
X-Google-Smtp-Source: APXvYqy0cOzFe5jep7CWMgLECPC/rlt7GNgSM4e9zfiV+ou3UxaEdb+AhtoRpx9yM+e3toEJb737zg==
X-Received: by 2002:a5d:6a0f:: with SMTP id m15mr2393833wru.40.1576669474016; 
 Wed, 18 Dec 2019 03:44:34 -0800 (PST)
Received: from pali ([2a02:2b88:2:1::5cc6:2f])
 by smtp.gmail.com with ESMTPSA id n16sm2292214wro.88.2019.12.18.03.44.32
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 18 Dec 2019 03:44:33 -0800 (PST)
Date: Wed, 18 Dec 2019 12:44:32 +0100
From: Pali =?utf-8?B?Um9ow6Fy?= <pali.rohar@gmail.com>
To: =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Message-ID: <20191218114432.rasbfboex2z2xsj5@pali>
References: <20191217072836.11411-1-zajec5@gmail.com>
 <20191217072836.11411-3-zajec5@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20191217072836.11411-3-zajec5@gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_034436_055666_78BAC390 
X-CRM114-Status: GOOD (  14.04  )
X-Spam-Score: 3.4 (+++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (3.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
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
Cc: openwrt-devel@lists.openwrt.org, John Crispin <john@phrozen.org>
Content-Type: multipart/mixed; boundary="===============1812663282958781126=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org


--===============1812663282958781126==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="nr6pvrpkw5moxabg"
Content-Disposition: inline


--nr6pvrpkw5moxabg
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tuesday 17 December 2019 08:28:35 Rafa=C5=82 Mi=C5=82ecki wrote:
> From: Pali Roh=C3=A1r <pali.rohar@gmail.com>
>=20
> commit e526f503918cc29d8b1ccf36a5c3a34645d2be6e upstream.
>=20
> When FAT directory entry has leading byte 0x05 it is interpreted as byte
> 0xE5. This is how FAT stores file name which starts with byte 0xE5 as
> leading byte in 0xE5 in FAT directory entry means that file slot is empty.
>=20
> Fixes: #533
> ---
>  libblkid-tiny/vfat.c | 2 ++
>  1 file changed, 2 insertions(+)
>=20
> diff --git a/libblkid-tiny/vfat.c b/libblkid-tiny/vfat.c
> index 49b865a..93e4053 100644
> --- a/libblkid-tiny/vfat.c
> +++ b/libblkid-tiny/vfat.c
> @@ -167,6 +167,8 @@ static unsigned char *search_fat_label(blkid_probe pr,
>  		if ((ent->attr & (FAT_ATTR_VOLUME_ID | FAT_ATTR_DIR)) =3D=3D
>  		    FAT_ATTR_VOLUME_ID) {
>  			DBG(LOWPROBE, ul_debug("\tfound fs LABEL at entry %d", i));
> +			if (ent->name[0] =3D=3D 0x05)
> +				ent->name[0] =3D 0xE5;
>  			return ent->name;
>  		}
>  	}

Yes, this is my patch for util-linux project which was included in
upstream two years ago... It was part of my initiative to fix handling
of FAT labels in different Linux software, see for more details:
https://www.spinics.net/lists/kernel/msg2640891.html

Do you need some help with FAT labels?

--=20
Pali Roh=C3=A1r
pali.rohar@gmail.com

--nr6pvrpkw5moxabg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EABECAB0WIQS4VrIQdKium2krgIWL8Mk9A+RDUgUCXfoRHQAKCRCL8Mk9A+RD
UvesAJ4mV+OPH73lRf3RlBZYrYXK7tjAmwCeJMgWMjnZ2CND1srulvq15dDLjm4=
=F7aW
-----END PGP SIGNATURE-----

--nr6pvrpkw5moxabg--


--===============1812663282958781126==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============1812663282958781126==--

