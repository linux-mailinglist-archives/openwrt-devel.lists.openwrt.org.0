Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8814A1370A7
	for <lists+openwrt-devel@lfdr.de>; Fri, 10 Jan 2020 16:05:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=aLDP3aGLk41qgnVW+kXYRcD2aqPcE9LHXSGs/cLhIK4=; b=I60/Hl95bmv1mdqRi7Jvq79FA
	ZxmjQv1ZSPdMhsM9ohToDCJigOyzqASK2RTP7P1SQJ3YdsfgdEzNZKbWesJBklmj9ir0JRSnnFwP9
	0NmaSYMpgbDC8mVpe5W1MH3Oup7QpKKvE2rB7/kDjwbSf9lEOHGwcZtz7baLT4hxFarOdVxkcy6bp
	eQjhb+sjU7rLGh22xPrI+pRwkuH8M7zBaeLIHHd9CO8FMCmJ09lHBXld/SPXxuWKz7uQDGGPnTw+1
	/T5Im6syUPF0RYT6zeqqrMsmYn4ByOlHK2KwjDCLc8U/b9AG5CBQPFST7Xn1q4flRsWsM8YiRZ3rY
	qoOmHGN+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipvqt-0005IT-F0; Fri, 10 Jan 2020 15:05:31 +0000
Received: from mails.bitsofnetworks.org ([2001:912:1800:ff::131])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipvqA-0003gT-ME
 for openwrt-devel@lists.openwrt.org; Fri, 10 Jan 2020 15:04:49 +0000
Received: from [2001:912:1800:0:2bb9:b551:caa7:dfa9] (helo=lud.localdomain)
 by mails.bitsofnetworks.org with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <baptiste@bitsofnetworks.org>)
 id 1ipvq6-0005BK-Li; Fri, 10 Jan 2020 16:04:42 +0100
Date: Fri, 10 Jan 2020 16:04:38 +0100
From: Baptiste Jonglez <baptiste@bitsofnetworks.org>
To: openwrt-devel@lists.openwrt.org
Message-ID: <20200110150438.GB209673@lud.localdomain>
References: <20191203091805.GA741856@tuxmachine.localdomain>
MIME-Version: 1.0
In-Reply-To: <20191203091805.GA741856@tuxmachine.localdomain>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_070446_952870_722D13B3 
X-CRM114-Status: GOOD (  11.62  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] High-level process for releases
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
Cc: Thomas Endt <tmo26@gmx.de>
Content-Type: multipart/mixed; boundary="===============1049663153934953248=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org


--===============1049663153934953248==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="+pHx0qQiF2pBVqBT"
Content-Disposition: inline


--+pHx0qQiF2pBVqBT
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Following the 19.07.0 release, I have updated the "release process" page a =
bit:

  https://openwrt.org/docs/guide-developer/releases/release-process

It is supposed to reflect the current release process and link to the
relevant documentation: feel free to signal missing steps and add links as
needed.

Thomas, regarding the step "Update the ToH to work with the new release",
do you have documentation on how to do that, and an estimation of how much
time it takes?

Thanks,
Baptiste

On 03-12-19, Baptiste Jonglez wrote:
> Hi,
>=20
> Following some discussion [1] that started with a focus on communication,
> it turns out that we are missing a high-level process for releases in
> general.  Such a process would have several uses:
>=20
> - make sure everyone agrees on the steps towards a release
> - identify which tasks need help, and who can help with them
> - use this process as a checklist when making a new release
>=20
> Here is a first draft: https://openwrt.org/inbox/release_process
>=20
> Discussion is very welcome to converge to a process that everybody feels
> comfortable with.  The most difficult parts are obviously the ones
> involving decision-making.
>=20
> Baptiste
>=20
> [1] https://openwrt.org/meetings/20191121



> _______________________________________________
> openwrt-adm mailing list
> openwrt-adm@lists.openwrt.org
> http://lists.infradead.org/mailman/listinfo/openwrt-adm


--+pHx0qQiF2pBVqBT
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEjVflzZuxNlVFbt5QvgHsIqBOLkYFAl4YkoIACgkQvgHsIqBO
LkbEnQ/+JTiIi8ElWb/F0yjy/JIV+7RDxslXU/tIOcsU+c+OACKS+uz0bOF6/1R5
ORRY7MGvl768scdDToj52F/TLN3ERqTy4H+nTy/cXNfkW+DcEIq6D/mBr/MrlipY
Fp+aoFSRbfUyOfaNJq5xatD7Gvtf0S6Q+ay3REtV77g9JRmsY/478jTlAclcOP76
pMt4JvwLHC8sqpdVqwxzQqtHLDClBQDAHB5qziylsX9x6MnTEQX7JqlkI3tGpfhe
RvBsGdoD5fucoSeDKwBvlpyzG8UPHTXZMQUxBT03P6a9EO6epjYmoCWWgBdwtvAM
Lz8zMllLhyooBSTWlCHzyI/ihkNku2VLR+b6Zlh8Lip4IYByPnuObGxhwT41uHvl
kYNpzCZaIdIyq8gMwREbp9TEOrqGHppaRXoVqWJmFcjJJPdKtG+D3oVIN9Q7LAVi
EwVC87Ao/3ViB0ixnRjl/2fW3hL7iPh2G18H5siZOzcjivvnzxu4Py3w9IddPP+O
3nPIkWsKfhqkUfiPzCbcpmJbjv4QpXNee1yvrRRGeHwGR5E4xIKb+SFjlmyYsLPp
9hQYD0ecxuOTGn2j9XnhxAcfT70Kar2hDVcmCSRMgLUB2sAB7mFLy4IEtnxwWUrp
A1KAtA7wRUJAMw6vHIJZVDa5Jh+vxizgraFSMf9Tx+zfx+xivFs=
=DT7z
-----END PGP SIGNATURE-----

--+pHx0qQiF2pBVqBT--


--===============1049663153934953248==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============1049663153934953248==--

