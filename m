Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41F1817CECD
	for <lists+openwrt-devel@lfdr.de>; Sat,  7 Mar 2020 15:49:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=3Yaxnd33/Z92SJzncnIiGSSQ513jiyXrXPNDLUO8n7o=; b=gQg5rICyqS37WW07z7NGTY7L3
	L/wHWNIFCK1g5Qy9oIw8+KQMlelFJY2W8wdQL9voq7AL4XD5a6jAAXFD37mOlrtsZyl+bOpo64Z7f
	TuZ/dElt4j6vx/txqBL4PpMdWs1pKHTRCFngTp6qK+tytCHdhVQxvqMRt7zIQWm5NHwlPLyVE+MHO
	4ZLLgatnDTjuW2+9P1OdL5vfN182IZCv8kFCLTreesEUsNfxjf/EuUvlyQTOi9Hw4+qd1XYowhIwA
	r6GW3B8j197X1eC4EEKEFbt2Lg5WGMYVZbZL8USx2j4GRhEHdKC6cStJpdjzP64/K0WyhlQOQojwV
	xhaW4SN9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAal7-00053i-F9; Sat, 07 Mar 2020 14:48:57 +0000
Received: from mout.kundenserver.de ([212.227.126.135])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAakw-000533-0h
 for openwrt-devel@lists.openwrt.org; Sat, 07 Mar 2020 14:48:48 +0000
Received: from desktop ([188.192.136.226]) by mrelayeu.kundenserver.de
 (mreue011 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1Mbies-1jmPPf2M5G-00dGth; Sat, 07 Mar 2020 15:48:37 +0100
From: <mail@adrianschmutzler.de>
To: "'Stefan Lippers-Hollmann'" <s.l-h@gmx.de>,
 "'Rosen Penev'" <rosenp@gmail.com>
References: <20200305211643.25830-1-paulb@blazebox.homeip.net>
 <CAKxU2N9=pe0RM55CV=YNQYr1jXVDQqH+DzN1+v36cP7s-TmLwQ@mail.gmail.com>
 <8c4b340a-ae84-eb86-ab62-d04ffe2f6b5f@blazebox.homeip.net>
 <CAKxU2N_YjghwpmSXD3Myu+iUpT1J0hJ03Yv3TT7U5DfZ_wiFKA@mail.gmail.com>
 <20200307013138.05d8a8fe@mir>
In-Reply-To: <20200307013138.05d8a8fe@mir>
Date: Sat, 7 Mar 2020 15:48:36 +0100
Message-ID: <003601d5f48f$7c08cd70$741a6850$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AQKWkjIymRyzr5kzsQcl7GPZK/kJcwIS1VfIAZluRjwA7A1LmQLBKIpupoEuQJA=
X-Provags-ID: V03:K1:hRcwZOvCy5qehxd35vNZ6ZAq7hoLoXHhjEVhvVMNVbCnznT5dhL
 eI3e7Nq/bUDyQ0q2qwjVHogCUGUqPhIYs+KUUCqz/Y8c7578DjBaxJO91PRJeywjPdbdvHe
 KuFNrn6favnviLVL2vxh5MGlpeISSsAExtA+7WkfarFExFH6CFSjdvSjAwwNO90Q/q7zj5Z
 JUYlfLjgdK9S0cRpdOGkQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:4yQPyAZlGrs=:kR0l+Lk+8voa9nSTX/MQBw
 SrbIbzpL3pVhNL3kW02WWvzOAI0mqcjk6t2gAryCjylkDZrArWQLpNwIbLOp8o8ZQWnXR0o/f
 dEEDK5wGuCw0jfX92nkt+xeCC3SGxmSIxg0W2xSAQ9qcsOCXrC2ON0lMw7zsiz8QlppcWjH+U
 GKrFz4k6BZr6RHCYral7D/AOGb7XC05FCzWFPkNdV0R/YzP1abI3MdCaZSi/oS2O+IF/g0XnI
 3+lUChhZ/xOuoetBnrzjJUvVmAHeljbNvHPMY0Rq3wOn4QgIBAzTZlhzpL9eBoNhx/kRWGJ8G
 OLudWmMcsnuArMt+AEhvrtfd9fGFuiPUm/YGdfwef0t2h6ERse6BXh5mdFftMGUoOvOvRTG5+
 I0/GVa7fR7Z6YUKiCgPK2rzzypftDRZwVV4VI8AEcLoqxaA2Rq/rTBPiR6jX2IQEU0C5lZMrJ
 C/1uzuy35KvFD7rP2SfE6rx8M1zgoT71dlZHOeGFNmpEjvIEWffTP3DiWXUr3697tFDR48pdq
 1f7sFEMxrv45+dMKOXbeG1yyCw2CDs1MeiQit9t/UPzmUKbta/HgUACEWDbfM0ujGEsBwYFnz
 Lp1i94tGi0WxhIse+LolDjlDjwwOJyVWYDhjkIkN6Xb43ty5RVZExr+G1etqH2Awrskzcofv+
 IRlCwiBDadw6hdArFJFXDpSOEs54/naqmxxcitkHuByJqzYnXz+SLoQjPQ+jpz0dO7aBAMYGr
 uLEAucjIslUeBfOglWJmHMrAG3IDh4fZ+Z2jVus/FtbT/gIjCETfpycuEt2AtbJ2TLat/dPym
 DyPyCee9YmXeL/SBnjgpzda+nxM93IUuMnvcYa++JI5lqKxlK92PDUIIhQ1lNr8DCynZyx6
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200307_064846_349112_C6EB639B 
X-CRM114-Status: GOOD (  11.78  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.135 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] exfat-nofuse: fix kernel 5.4
 compilation issue
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
Cc: 'Paul Blazejowski' <paulb@blazebox.homeip.net>,
 'OpenWrt Development List' <openwrt-devel@lists.openwrt.org>
Content-Type: multipart/mixed; boundary="===============8667592471393054114=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============8667592471393054114==
Content-Language: de
Content-Type: multipart/signed;
	protocol="application/pgp-signature";
	micalg=pgp-sha256;
	boundary="=-=UhN+7FVH7zCfYw=-="

This is a multipart message in MIME format.

--=-=UhN+7FVH7zCfYw=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
> On Behalf Of Stefan Lippers-Hollmann
> Sent: Samstag, 7. M=C3=A4rz 2020 01:32
> To: Rosen Penev <rosenp@gmail.com>
> Cc: Paul Blazejowski <paulb@blazebox.homeip.net>; OpenWrt Development
> List <openwrt-devel@lists.openwrt.org>
> Subject: Re: [OpenWrt-Devel] [PATCH] exfat-nofuse: fix kernel 5.4
> compilation issue
>=20
> Hi
>=20
> On 2020-03-06, Rosen Penev wrote:
> > On Fri, Mar 6, 2020 at 11:38 AM Paul Blazejowski
> > <paulb@blazebox.homeip.net> wrote:
> [...]
> > > -   DEPENDS:=3D+kmod-nls-base
> > > +   DEPENDS:=3D+kmod-nls-base @(LINUX_4_14||LINUX_4_19)
> > I prefer @!LINUX_5_4
>=20
> Using @!LINUX_5_4 would break, once the next kernel after 5.4 comes
> around (be it in semi-private testing or officially with the next LTS ker=
nel),
> while it's safe to assume that no older kernels will be merged back into
> master. It's usually a better strategy to test for known old kernels/ fea=
tures,
> than to consider the new approach as an exception.

I see it similarly, using older kernels for selection will make the code ba=
se more future-proof.

Despite, it is also easier to adjust dependencies if an old kernel is remov=
ed.

Best

Adrian=20

--=-=UhN+7FVH7zCfYw=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl5jtEAACgkQoNyKO7qx
AnD3/g//eFOKmUTVga6DD5HUzSCv8TAMEBy9gF5tkn+IhJDqRnbfvBeopzXcR5Ch
Ww3s1Svso8bIeEF2wu4r3x8HqgJbFCISl8qi8IKC0q+bduPPJcK+9Md5Y1vz03kL
Mk6i1lhybagSIZFOsINuyzCDfM1y9mtb0rK65uugw/uKrHm99N5AYQFHj15VxDmS
sY6qr8hJbP+HlEk2dPRT7MCZkEU/3SuX57A6D+pXPqgPQxn8R0RcL4hB2HK5C2Bu
tYv16lpjUxORms+ToDB665fyTttC3UPRceFbsQOJuhPub4kPGphz9tT+fsY5JQ01
5VDo6u6LUpVagG/dkapJs2Z6HNw3JYP55sm52UqOxamZC9OBizdl5TD9GWhw7WJY
gD/q1G6ZVR1e+5Xm/kY8P2AxtsWrWEo15RO+PX1RXDnm0zsV/KhUpY4o4Q5m3r8D
VUm6zqCRYSjPd76WhMC5rFvnvO7/lu0HPmvdvSXLs3FfQgi78t+KSL9seY7ABOqZ
LZlkm36vzrdjcnvtDTaAbhmjy0YIh62E/O+DNHotLV1NE4FaZj0OVK0G8q45ena+
zwVD3oDI8qF3KhvX6WaT0Xj4WHgBHSxY3lDLHrwFW/Je1GOaleZktkj6h+ZEJwG2
P0Wo0unAc2JYSt307prUjJYmtkk0UwStougz45jhBVVA8NLltLo=
=ki3A
-----END PGP SIGNATURE-----


--=-=UhN+7FVH7zCfYw=-=--



--===============8667592471393054114==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============8667592471393054114==--


