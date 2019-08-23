Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 558599ADEB
	for <lists+openwrt-devel@lfdr.de>; Fri, 23 Aug 2019 13:13:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=LUhFNW20pYQW/l9BFyfboEJZPJ5s6/K3UHI6NoMY5ZE=; b=cwpf6jqakSnfwHqaY+XUEKgfd
	ZIl8j+w0RrbNfT8e3WTGz7b4L8Vchgos4vcnXAL1fG08x42axStQIDh54Ou4SfyK7gxdOPKiIfuBD
	CsN1wdHwi7Sfx4FoQcEdydZUEd+1w5ZcnTAa1VWJMHJTzOVlncW+5wXvEoc1qUW8Bpo6OMtmwtuV2
	FI7XDqurhrzJH8ejOasrUxOrtH41CB6YP0RcH2MpVGGbcccrnZm36Yx7Kz2S7Yzwxlqzl0IhWkiVF
	79ujY7DH2Vicg9KF34c0M2F3YhgI9wILJH5jOhKzUfNsSAQdWq0aadHbGge8Z7Z50kMxzM3skNxXj
	XYB1Fuliw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i17VK-0008Mg-Fy; Fri, 23 Aug 2019 11:13:14 +0000
Received: from mout.kundenserver.de ([217.72.192.73])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i17VE-0008MH-BH
 for openwrt-devel@lists.openwrt.org; Fri, 23 Aug 2019 11:13:09 +0000
Received: from desktop ([188.193.174.123]) by mrelayeu.kundenserver.de
 (mreue109 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1MCsLu-1i9xBl2ViC-008t00; Fri, 23 Aug 2019 13:13:01 +0200
From: <mail@adrianschmutzler.de>
To: "'Birger Koblitz'" <mail@birger-koblitz.de>,
 "'OpenWrt Development List'" <openwrt-devel@lists.openwrt.org>
References: <4c93e4ac-c8ca-fb41-eb96-d5cfeed5f1d6@birger-koblitz.de>
In-Reply-To: <4c93e4ac-c8ca-fb41-eb96-d5cfeed5f1d6@birger-koblitz.de>
Date: Fri, 23 Aug 2019 13:13:01 +0200
Message-ID: <004401d559a3$ba3cdd70$2eb69850$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQKs46HRfBsVmMrzwrX1GmHhUaaxjKVZf/rw
Content-Language: de
MIME-Version: 1.0
X-Provags-ID: V03:K1:Js8NciGX6ha8tt+mFI3kmQZDqI0vCmoOJbhVbfwpXH3gBRsCyh5
 ds6epFT6tg2J1iR0GeGR5pUsNV8Ds4K0J7zN/mRK5Cmho87YYmiCO8lBuTir8VufYKcotWL
 62Qu2CbfG4MHDhqMtBMKPuzHyZRKCtDc9vSDcB2d9AYNTjuinplI5kK4TaJndIHNRZoQOOQ
 3AFzb4znEnLpTH5z7ftYw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:nWv9gMFMPCM=:JZ0ml6ye3toCxfiIcCvQg+
 aTclJwqaFEvQ2ls2SLafg5xc8c2BM+dBbH0YTp2lWbbA46w57cn0ZSn999DsV9/s57F0+fzay
 ZDIsjzUyLgu4aYPaf8SdxfIrpTWsZKCYjLuUQ1TFYS0NR3e7qYNPg78ysP/YpYZ6BhhA4LUCq
 fNLF4YN4OVNTh9N01tbB6BnVEo4lwBfE9LOZuDi6oVPnsJJef7O9PewB9oip9LDC0czj/0Uw1
 ZSfd+vSFZMVq6dC0A3RV4vpenM71VvRqABzQCjvygOqbrD9EItzHMDE6nuoNv1h/s5AcdGwa9
 n8/ko6MrCrBK39nQ8S0spnsjtLW8HqyxubT56RZLe20kHAfhZCQ6q0Qn/MD7yh+zWl5VtnJG4
 M21JntbWVBvw3L1MWw+OyGyvMR2BIpug8Yckz9/5sUuHjzAwDQ9ExNDLAseVe3swMam+XQ/ID
 9tAmoS43WF6OyffzaPfZAHSZ5lo6La8qwJFf76LV3NQM1vVccEf6DKCZp1hYVqyLyopp7JHLS
 wsdZjsqcyhsahVpJx5KXSwd6i1BrpJWskCX/SVVXfmQwX+4MgnDBYqmOMUvuqqggmeG99IV7k
 2YFuJGySYVG1Yoeap6Qk9zBKuztWJoK6cpicy3mdIe3ghE+/8dPAn+nDk+Agr2WAw2G8y+SxQ
 wGKpmX+XZ8EUvCArp2vHyDWGlRWCMzn1pcb6BZYCi43DgPa3d3KKfitKkukResVNRN/3xXaBf
 6DzscVJXR8DxQCqWCvt9NEuODXPRjAPTwsmgEdUlsiQGZA0+7bynS9D8d+o=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_041308_680099_DA6B9A8C 
X-CRM114-Status: UNSURE (   7.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.73 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH v4] ramips: add support for Asus RT-AC85P
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
Content-Type: multipart/mixed; boundary="===============1231178066654972406=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============1231178066654972406==
Content-Language: de
Content-Type: multipart/signed;
	protocol="application/pgp-signature";
	micalg=pgp-sha256;
	boundary="=-=wKZC5ydJsA+FZV=-="

This is a multipart message in MIME format.

--=-=wKZC5ydJsA+FZV=-=
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi,

> a/target/linux/ramips/base-files/lib/upgrade/platform.sh
> b/target/linux/ramips/base-files/lib/upgrade/platform.sh
> index a65492a309..cd9d8ae650 100755
> --- a/target/linux/ramips/base-files/lib/upgrade/platform.sh
> +++ b/target/linux/ramips/base-files/lib/upgrade/platform.sh
> @@ -18,9 +18,16 @@ platform_do_upgrade() {
>  	mikrotik,rbm33g)
>  		[ -z "$(rootfs_type)" ] && mtd erase firmware
>  		;;
> +       asus,rt-ac85p)

Wrong indent here.

Best

Adrian 

--=-=wKZC5ydJsA+FZV=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl1fyjgACgkQoNyKO7qx
AnClwBAAjywWDy01YzMtqT4bqPq03UO3C3Fymj374yzxI9XOtwuxEjGhuIpd5b3F
Ah+Yiu875dKbWuBavgtEM5uACqJVHWu9Vho5rLA49T6F64Sp7BEqe4Mrcl/681IP
YpjYBojKl4FZdqDrZTlf7W8u/kVA7NyzEgG2f5LYHeU8aEx0pScvlZtJxRGFz1CY
gh+xUKU6DmvH6GQPYMS2YikQVe1iPBK+4dQpRDR5TuZWOG78Rm0ah9GKt2WfqfYP
2ZDc92LCJElpUJxc6tVDWAO0pLLl9YQzZOWgoJX1jtgBiDV0jKUTSSYbpDUF8tX8
gcxUPMyoECerJWNR/PCRucN+nBKi07s/xiu6x5jBxm+55ZzEyIdgSCuPYtYlq5Mm
9GmJCI197wD6xR9b5+CoTAa5e7EwxWqkdgQJrQwt1wDJC2Ixk4I6puxBCGsoTJFC
ouCjKe0z0C85UrhjvXp7Zzyfw7hkBwbj+gsKVQCcQ4Gp4m2SedubetGTyhHDZjHu
qozyAUiN1TFJQQ38wL/vH5n17wNO/W6pyNn68rfce1epEr1/O5Y7dnMiCa3u9Sb/
Q7U/tZutN0YkKqh6tvtUE2hvlCWRlUDnMG93ibREYmPIQKat5M50s8l5gHocytUp
dix5kRLaSP2SQSY8DHf3a6B7Tf5ZR4BoI7MA4Efs3kY4hMAMl38=
=mIVG
-----END PGP SIGNATURE-----


--=-=wKZC5ydJsA+FZV=-=--



--===============1231178066654972406==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============1231178066654972406==--


