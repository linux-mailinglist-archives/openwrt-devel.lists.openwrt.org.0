Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 829761DEEC5
	for <lists+openwrt-devel@lfdr.de>; Fri, 22 May 2020 20:00:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=bDs/2gMVa3nMZZFZJD3UR9JTxG1cprwsPxBGkZ2tqms=; b=UejhsGfP0jcJPOW2Zl8O1kadA
	rOhJix7F5Y3HuLA24zmpkDKQJsMTJb0eCZeyBM7idl4y3jgu+/k3Jo+WWAAob5ISgTVjanSy1YKGU
	oAF7gqoAsWn02WJszFCB9XhIqbi80LpfpSCwERuMjRnF7t6Q8tKkdT5r8FXTogDhMyRDKKJmCS3qy
	L73yw2GmH5dQuzfA3vHNZj/4PAr3xYNQ/cWz+I+ZkwB+S8HSn2/YSD5OyoBqL/F44EJWgKYlFLEL/
	8ZESgm4cQVrW2o7hc+WZo2bwCYv9QDo1psLf7AspHEsP6QawwAJ2xhAgjPxJhVRlSuKV3GFCMPX26
	8A71n3snQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcBxy-0005zL-7j; Fri, 22 May 2020 18:00:18 +0000
Received: from mout.kundenserver.de ([212.227.126.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcBxh-0005EI-5S
 for openwrt-devel@lists.openwrt.org; Fri, 22 May 2020 18:00:03 +0000
Received: from desktop ([178.26.243.176]) by mrelayeu.kundenserver.de
 (mreue012 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1N5CMP-1ivoYM1VED-011DXY; Fri, 22 May 2020 19:59:51 +0200
From: <mail@adrianschmutzler.de>
To: "'Olli Asikainen'" <olli.asikainen@gmail.com>,
 <openwrt-devel@lists.openwrt.org>
References: <CAK9yiZBMx2SRcA8-V5nOoa=XhF4QZM372EopshJUbmATctQgAw@mail.gmail.com>
In-Reply-To: <CAK9yiZBMx2SRcA8-V5nOoa=XhF4QZM372EopshJUbmATctQgAw@mail.gmail.com>
Date: Fri, 22 May 2020 19:59:49 +0200
Message-ID: <016e01d63062$ca598140$5f0c83c0$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AQH3+87xE6VA6oNjyvGEMrEtINiz66hwzc2A
X-Provags-ID: V03:K1:yTzlDK0aMLXCvflER433AXx6vKhHZ1NNIvLiiTWcLNRaSA/lN1A
 139xp0c2zCRAgmMYtZWV5mMgVR1tudSt8jRkBGDzUJsVQqRcYtaKJnGb9bWbHYzgx+aSOiH
 zQA2nuydoQXUMoV+8owNNY4o4zJ6UDSp0XSjpPPK5dIoNVOaS8lDT9nbxbEfu1kD0BDBsyJ
 ALRJLZQ6VrtkYyhgqCVFw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:xdlvvg0vvv0=:p+/PQr5I42fiP4VmodGhz/
 S9zc1gOQxpH/qif1y9LDOkUC+zAoOh1bpxL+jAVlEh4XtfwZqsa02Bt/VByM5kUXiouyY/MV3
 IpTTbMd2Ji6TWzBHNNKFfMudHMKf5QSqdrr8U6JiEdUciogez/Jqsu5RwzUBAOyancihLHBj4
 0TWwJ1eHHdJm2BDENksfiHeWvShGDb6G0+JKon1+Oy6vn7YRehT/IxmuPtRvIhxUl0W2DNV53
 tlG4U56MlZZW0F4B4oJJnZSuFlmIOjC9lavSjHe8bh0sxbidQAyCdOKthEYL49hrm2IJvdw1I
 LiHtW9fMIy2X0CGYga3KFtDE4nid2VL4RFrhED5a6Bd5+E/ynK7YbbIrV/NjWxLGFzdy0S9mo
 9jW07kHmTJvuotIrWfwtXc0EzZgJR9WaSwhp3O787sW37ZinnzvjwYiYSFF2NuzewgnRrF/9Z
 4vPBi7PfLiZ8q+VwH2giQEDeKMkZi6SxlHAuNxyctvQwR9U6DnEzlwqtN7srJPaMIa7QbKJFE
 sDhyslY28i1Ut/ag8pURAajnB9tfW0QCd7xNi7YohMFe2o40YbcKZ9v/ZbWB75Mw3UC//SKz6
 ep0uDG1KJ+eVswqlR2fmx1niRb0Pbkp57fhWKQMIQCu7x2eSkqGPyNW7rGCk477wuRlx5g1e1
 NMF45ekXlDM4BXbf+ViRKU+TSktXUDg8exUwUvydnWeVgqbuiD3lWuxUgJRYITtOiRDYBo9E/
 E+/nbWpiW+qks0z7QwQcnumrUSQqQwUNORkkgWJnpOnMRI6X43r40scuvUa+OaGOBdXXjNUYk
 oeDrYUNuDVRWTKlPg0NzVEzIRZfZLgH6wW/uSdNTtUfNb0lwh392tEZv23bDkCaCdeImqdP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_110001_517955_1A0BB9FE 
X-CRM114-Status: UNSURE (   4.44  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.133 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.133 listed in wl.mailspike.net]
Subject: Re: [OpenWrt-Devel] [PATCH] ramips: kernel: fix awake-rt305x-dwc2
 patch
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
Content-Type: multipart/mixed; boundary="===============5007849206663377668=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============5007849206663377668==
Content-Language: de
Content-Type: multipart/signed;
	boundary="=-=IothqVyydKlacp=-=";
	micalg=pgp-sha256;
	protocol="application/pgp-signature"

This is a multipart message in MIME format.

--=-=IothqVyydKlacp=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

> I can confirm that this change to awake-rt305x-dwc2-controller.patch fixe=
s the USB hub initialization on WS-WR512N1. USB enumeration works properly =
after removing 0032-USB-dwc2-add-device_reset.patch, too.=20

So, can you provide a Tested-by?

--=-=IothqVyydKlacp=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl7IExMACgkQoNyKO7qx
AnCG8g/+Jh08QCylbsvu38y70gksRS4ZSLKWUToZISiDPYKZZ4d9tqJCvymLge5d
2kSKGRANQ4EgLuodPw+IUcEKH1YIaIDQSMzCf46TG8xXzqzqY8NcFFD/Ve9uK3i5
mDjpx/YZ3+oe9+y9IoqQCFpMzTiPl+VKbrDBR39OrJz7hUah5MxRPc1a7Vt/DnzS
I+bsOPhK/wzAoq7bSikjcWXkh43VX5mcK/tYqckpWM4sNaks6f74L6MRBTlSiRF7
94wEJmGY7dg5pAEM/l7A46Kk+2CJGuNGDrle1i3S8z1s0nDdOlBvGT4JtSUOogiR
O25R6MyJH02AKfAmxAOTMQUdbHwwT+g50e036knJNgV+2lBfZ+FpdMwVscfkR2+h
wlLPWYalcdiYcjeK7CWMH+/x7ZlB+pIoCQ/Bo1IjCHrXdkg6KSURpvW8dSx3cbhE
A0WOOHPsIQoPMJTvxneQUBnm6jKl01DQOTnbFWzpmHtps5/lP4HEssrYh708b1iT
o7Jj0kmyCuf+DcLxojqFaDjaF46ueHMXsGyKDfjRRt8M8NQuuAM006OFaRsnQS9x
FFlRl5OIrFO2EXyFmXqf9oZkzw5i6z9qWW6S8jmsD06t3AhS1KX0HxU03qA1WVQk
JhZa8dgdgGKTxDKT7J2Upkhfn5sHoxgybW08FfIos7TRH1X9KCc=
=5uG2
-----END PGP SIGNATURE-----


--=-=IothqVyydKlacp=-=--



--===============5007849206663377668==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============5007849206663377668==--


