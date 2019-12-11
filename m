Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5302411BF5D
	for <lists+openwrt-devel@lfdr.de>; Wed, 11 Dec 2019 22:38:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=lx18Se0J4I3/ztt1AnvgFAKQJF+9X13AsirkgP7zGIo=; b=TtgsqHKc1ZtlM7sxKAJUFPWtp
	ghY/B7iOVOodjt77fsF+4NbKFAnnWLMKLg/hOQcYSfOmJjTrw3AAKfWmvOLdzo3AHa9801bdpdGMM
	q+WUKwakZFdcpS/tz9p/Hs4xi1hAfkLtjAm3IZyq6Pp89sItcS5dYf23ZziJ5C6OAs4VR0qEvZrpu
	ch3IYG2iGGFUyZJ2Rdn1agDmQKfQb42gAHjOm+oOp2x4yIpTMu+f71GDlizBrZyk1+efxHhOh/dLT
	/0X7jZNizbXY7Jlq9z+8ZdvOBBNd0cIsj/3NjjuMNLZ778wJGIpRwvPynATu8LNqTav60mpznJOKT
	0f6/k6juQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if9h2-0007i3-Qd; Wed, 11 Dec 2019 21:38:48 +0000
Received: from mout.kundenserver.de ([217.72.192.75])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if9gv-0007hY-KM
 for openwrt-devel@lists.openwrt.org; Wed, 11 Dec 2019 21:38:43 +0000
Received: from desktop ([188.193.231.72]) by mrelayeu.kundenserver.de
 (mreue106 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1Mcp3E-1i6e9Q2Og6-00a0bM; Wed, 11 Dec 2019 22:38:34 +0100
From: <mail@adrianschmutzler.de>
To: "'Daniel Golle'" <daniel@makrotopia.org>,
 "'Tom Psyborg'" <pozega.tomislav@gmail.com>
References: <e13712e.36225d.16ef3b3ec4c.Coremail.rqgxfc@vip.163.com>
 <CAKR_QV+a___R2qsPSf6vtpk+JUPqvt3ZdvTHQA9Y_pFOZ-R6zA@mail.gmail.com>
 <20191211142209.GC1371@makrotopia.org>
In-Reply-To: <20191211142209.GC1371@makrotopia.org>
Date: Wed, 11 Dec 2019 22:38:33 +0100
Message-ID: <007d01d5b06b$57191af0$054b50d0$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQH/fbwNIuEGbCBmqKpATnbj+0Z8UAKSxE0vAm0PUMynOdjtkA==
Content-Language: de
MIME-Version: 1.0
X-Provags-ID: V03:K1:SE2A8Z6tHOLv95bo1J9qWBlATubiLfNr/XqE62qzUXrNJgJhtNG
 Az4a3Jc3FQRB7tjD659n86Tyl4s0MpfRyXUkjBJKoegE1BYZLlM+lqmaV8MgTlEn6FrDpdP
 ZghEQ5DkQ387AoOiyO2V9MP//H5yF4h3bj7qb7Kn+Zmpdt+9ylwvoC1PKe10AHv5unFfTFT
 wigOAAG9CcqPki/AbgC1A==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:HxGG4i9baI4=:+E+5TUdKo1FAoJcwV8pYoF
 5ANZmrNikUmHipnmGF5oYmXGP5m4bPrSIT5VDyvfvo3GNSQGmFywWqvOOfbJtfXc81ElrDyDL
 1PtfijpySc7zosRdKb5yXMxGNTODNPWu/dxavEyMcrulOyMbf275IGjVDSZ8Yq5qrvKk+hfjw
 9xoNAZgULNfYdj3tcMZFKMTrnLWT1FQ7PD/GBd6lY+JycMOMPkZwxgigZrrO6wvH9Xai0g+bL
 KcU5oPphQEyRqZXbdgQJhSzAWo//DwFS+4/KUohaFJi5gfMNm7sIRhUrMgvRnNqYfA2rOkfVw
 bBaf1C0QR5OpwBO8wLOTIUuofPrvzndeSq7YPfwCphf8unrqGxxJXBQp7BqN0JzYzvBsI/PDn
 XVPKofJnGkaqvyr6B9Kn9WcvPyx/eL+in7Lf49kkw6LRxyJD6PwwNPMhjRcfWAunS+FqZz5k2
 kDcqQyXciiX+GmqEz4SslNCao0c8uQhX9XEdsWJXIrCFpQSRQHGb365aOmfa/As6OLLJG6Hd/
 iD0+MllooX9RdEP/KnfzEDCH1Lf481T5zXGuRSKbXqBFgfHjkOeCicp2ZPpfZB6IzHOVVi2Tp
 RYtEVy1eCSQ0PIlsey0W4qlO7IifHiGB+ZJ3B5yLE/yfwgqdWrMhaulMRah8VKVM04l57YA+3
 dRdSQIUpR3TwjxrJ0g2knXG6SUk3okDBcwAyBiDzLxQ8LO+rytsuwMHXYZbcbXxkGOgQc0Pm1
 yuTpsn/xQaDAn6Klv74KZ9hC+aNNBBjgM6KF/Jo7XKquPlL18LvA7arIxLR3Cr5A1PmP3MXy4
 oe7LXfPqzfq76DZUif2pymTjWmuPw75nbOCxVE4AjhX+6UbZZqd2qRxCdVbG1RVnONKqY3974
 EJ8JQ+G6e+QW9kShyBXcsjq6SwC3LteUigv+6Sb08=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_133841_961119_00F03F85 
X-CRM114-Status: GOOD (  17.50  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.75 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] Inquery
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
Content-Type: multipart/mixed; boundary="===============2956437254262310133=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============2956437254262310133==
Content-Language: de
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="=-=3CXo5sTLJSez0e=-="

This is a multipart message in MIME format.

--=-=3CXo5sTLJSez0e=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
> On Behalf Of Daniel Golle
> Sent: Mittwoch, 11. Dezember 2019 15:22
> To: Tom Psyborg <pozega.tomislav@gmail.com>
> Cc: openwrt-devel@lists.openwrt.org
> Subject: Re: [OpenWrt-Devel] Inquery
>=20
> Hi Tomislav,
>=20
> On Wed, Dec 11, 2019 at 11:24:21AM +0100, Tom Psyborg wrote:
> > suck it
>=20
> As a community, we decided to give our self a set of minimal rules[1].
> And even though it is in the last position, rule #12 "Be nice to each oth=
er." is
> meant just as serious as all the other rules.
>=20
> So here, not for the first time, you are using language which has the only
> purpose to hurt other people (for which reason ever, it doesn't matter). =
This
> is therefore a very clear violation to the above mentioned rule. You
> statement "suck it" (guess what) is also an obvious and disgusting exampl=
e of
> a masculist culture which hurts our community as a whole and I strongly
> believe we should not tolerate that.
>=20
> And yes this was a spam mail. And it's even needless to say that replying=
 to a
> spam email in which ever way will always make it worse.
> But that's not the point here and I will not engage in any discussion on =
that
> matter.
>=20
> Please learn to behave or leave us alone.

+1

The latest reply from Tom forced me to also express my consent with what Da=
niel wrote here.
I indeed think his reaction is very appropriate, keeping it to the matter o=
f fact where the recent history of Tom's "contributions" might have tempted=
 other people to react less sensibly.

Adrian

>=20
> [1]: https://openwrt.org/rules
>=20
>=20
> >
> > On 11/12/2019, rqgxfc <rqgxfc@vip.163.com> wrote:
> > >
> > >
> > > Hello Sir =EF=BC=8C
> > >
> > > We are  a trading company named Shaanxi Hao Zi Guan Materials Co.,Ltd
> .
> > > Now
> > > we are very interested in your products , we will plan to  sell your
> > > products in the Chinese market . If you are interested in
> > > cooperation, please send us a catalog and pricelist .w Looking
> > > forward to receiving your reply .
> > >
> > > Best regards,
> > > Catherina
> >
> > _______________________________________________
> > openwrt-devel mailing list
> > openwrt-devel@lists.openwrt.org
> > https://lists.openwrt.org/mailman/listinfo/openwrt-devel
>=20
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--=-=3CXo5sTLJSez0e=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl3xYdUACgkQoNyKO7qx
AnDXWxAAoR188FB6QLtHGyDTmmQ50VAcKUsx68IpvSkY8ohHGr1yDyv6GJKKRq8p
c9nlAOfJ/upjvj+OznV9IBZxDHE12a3KidezW8FvZz/sgrK82dp/UATtdpTVGeVM
WEbppORlE3fGKHM0a3vr8NcdbFOE+S9F5LgfUdzlV9+ZydaHEG9epGUw8/AaGK+M
KQmlY66CyqBZdLAjJ9wAoTcUMmvm5nxK4UMlPe3pbwR0eVQJuWCZ1VnJaEPAAh50
negwDPKWbiN+CW4PxOrNBBDcsd0eUUTwrbJn8yJJYQIlZlR0Mu4QEalTvxviWcJp
pOjj5t9JBChgdM+PFpbWexIMSuWy99+aTqU32+P5fqN8S/XepULtvrNigbfZAcRa
WUHnRSHtJlipvspKf3l9H3aAjJT65RkeuUNvB6oWEADgw9Hl6SN9b6wOfUKkZCT4
hcwK0Hl00ydNjf3c9lAPHKtjYBnxtKYc8DjotIT5G7pnOh1Qu7yxhW8nyQDGGFxA
WjohZnqPGttWiryWKlN566kEH8xBdIfEV32FxHcYEk+eWannvSdKzVMtuwabPzLB
fpWswemXHMNXuPVTg1EQc3FEJHPkklsQD55a41h4NaFcYAPxZf0xlvAcGITslzbN
d7UewsSFZXZadcPCQYOrz/ki0cwGoTjBCDDzVL9bQMdsOukmTZE=
=hTL5
-----END PGP SIGNATURE-----


--=-=3CXo5sTLJSez0e=-=--



--===============2956437254262310133==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============2956437254262310133==--


