Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DED101DFF32
	for <lists+openwrt-devel@lfdr.de>; Sun, 24 May 2020 15:48:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Lkw2i/ODNRLKF+9rLGSWkcYxsDYW4dZ/zRVsswIcn0A=; b=SzuYFBEanmqa67WiIlQbvuKQW
	Wt9rdak6J0+cvPJ57BrYYvzFxbUrgieEJRIAHhtgt4H4lZaQTBizfmjp9SqJoF8DLCtt5AE2ks+qm
	QVxVS1/nL6ad30NVOaH22bQa7nvy6vSUUn12E8PcWArIfxxUiSZSEnVV/ui1z8mYAp6y945cwEap6
	ShcZbFcsuhxFej9O3Byy59q3Hj0XYle4tERcim7HWN7TkObExVqObkInjaQHv3sKZTp4/dy8zKoTO
	HU5pQxbP8zJtnNG0gjUOWqpnZk4kk0W2Bz6BZfc45euTzsoLJN0YtbyIlPGTA08aNkTJ9TQKYRvK0
	w+Ijqduaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcqys-0004A1-79; Sun, 24 May 2020 13:47:58 +0000
Received: from mails.bitsofnetworks.org ([2001:912:1800:ff::131])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcqyl-00049W-BR
 for openwrt-devel@lists.openwrt.org; Sun, 24 May 2020 13:47:53 +0000
Received: from [2001:912:1800::5c8] (helo=tuxmachine.localdomain)
 by mails.bitsofnetworks.org with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <baptiste@bitsofnetworks.org>)
 id 1jcqyh-0001dH-8O; Sun, 24 May 2020 15:47:47 +0200
Date: Sun, 24 May 2020 15:47:42 +0200
From: Baptiste Jonglez <baptiste@bitsofnetworks.org>
To: Michael Jones <mike@meshplusplus.com>
Message-ID: <20200524134742.GA1395434@tuxmachine.localdomain>
References: <20200523180045.GB1372015@tuxmachine.localdomain>
 <CAJQUmm4xUhFZEUs+z+cH5KY30rY7-1QtO8Pdb-6o71_ahp=usQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAJQUmm4xUhFZEUs+z+cH5KY30rY7-1QtO8Pdb-6o71_ahp=usQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200524_064751_555854_2D4DA2BC 
X-CRM114-Status: GOOD (  10.44  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] Experimental "release goals" for 19.07.4
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
Cc: openwrt-devel <openwrt-devel@lists.openwrt.org>
Content-Type: multipart/mixed; boundary="===============5043929422380058067=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org


--===============5043929422380058067==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="6TrnltStXW4iwmi0"
Content-Disposition: inline


--6TrnltStXW4iwmi0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 23-05-20, Michael Jones wrote:
> On Sat, May 23, 2020, 13:01 Baptiste Jonglez <baptiste@bitsofnetworks.org>
> wrote:
>=20
> > If the initial concept looks good, we can think about automating some of
> > it:
> > tag bug reports on Flyspray/Github/Gitlab as blocking for a specific
> > release, use "milestones", automatically find commits that satisfy a go=
al,
> > etc.
> >
>=20
>=20
> I find it very confusing that there are so many different places for bugs
> to live and be tracked.
>=20
> What's going on with gitlab? Is that going to be the source of truth for
> OpenWRT? Or will we always have 3 different bug trackers?

Switching to Gitlab is a bigger discussion / project.

Whatever the tools, release goals can be useful, just more or less
difficult to implement / keep track of.  I mean, in any case, some people
need to keep an overview of regression / reports / work-in-progress work
of the different components, and gitlab won't solve all of that magically
even if it makes it easier.

Baptiste

--6TrnltStXW4iwmi0
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEjVflzZuxNlVFbt5QvgHsIqBOLkYFAl7KevoACgkQvgHsIqBO
LkZL2BAAh1N0z2a6W2TFWaW8Br1Zw2ds5wXbAdK6vbVJtd6/O/7pVGZfSWHt1uqW
upf3d+ofhN835XHcDbbk3TYdHRPC3vzaFhnWiP+iv2zlOd50HbZ20WbwVV5mTyUv
zRxE9duJxw5ctiMC/A6NtGU0cqRlDUCXfx+xuxSGbazAxAihq4DbE+URoCTSR9qw
VweTPDzdeP2tNW8rDYZQmqzYOzaBHj0HV54jxuyXD6gNyWZNkMhgCaggwtYwQ0k3
taQ+Fwze1suXvtUZJHv6Wd+O6O7auef7EuwRZJtLSannPaWshLFfIDWl9p3Z5d4U
AFSv2Uvl/pvw7pPt5jSiD3/KecTeA16dokRYlh+OPpRfG8c+6OxhlEc62QeaUYTb
hWmf8JIzvapAgJCFVWWB3bzw91gA2e9imt0B03gnnJ7iCY7pPbqy2mMW1BUnmGBY
gLu6EYCibYuO3jqyhUsPD+oPgCDeGce2jpkyCpqFczSEWOiL4Gtj7Yws0+eqfp27
cEUruZk9Ee7mK2fEXI2XmC/YIXSkg9dF0Cz5nDVNL2AJqxkc+8RVm3bmOnzPQw5W
vs1c3NhscPshTAbvedqlAsjoxJp/C6O1p/LhgZ+JmRQGxLdttE7RxZBb2YTz19rD
pR4dPoj8hD2vlj8ft8sazP9F/PFS7sWpV+jeJwRF6H5DbXwJmjk=
=ZqXt
-----END PGP SIGNATURE-----

--6TrnltStXW4iwmi0--


--===============5043929422380058067==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============5043929422380058067==--

