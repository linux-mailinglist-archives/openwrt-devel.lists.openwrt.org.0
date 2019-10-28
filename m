Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0812E7132
	for <lists+openwrt-devel@lfdr.de>; Mon, 28 Oct 2019 13:18:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=HG28chFchK0XXsVzjExpuQwbvZ20r1p2RULKIYFeRCk=; b=Nf/KbgFgrcn9Ct7UGgcRlePj5
	RhTSsLbzrRUI1AKIBhVnxq7cUJGoWZDLbVNXv/EO92vfmf6h7puy8zgSDauTuEqeC8GvDe44Z90BD
	vz41p0L7TNZUWiQ1IpCz64pLYYToyZ1y0q+xnFYd54x5dFjkOIK0mwV17ADC1NJSCYj2Hysr+s/y9
	JCbqhQczTbCjONDV2xsgKl52kF6KwBeEYrackyCzHhD2cgG0D1awfhoRDJ+JZc6YYH03HTAF0A4LQ
	NBr7HQY44ZtdA5GnWRVTkL57sYHszHVDtB17hE28b6NHCuDskWvPvrftqgYpym0gADlIh7ZzQixmJ
	WhvxZb3zA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iP3yO-0001QG-PT; Mon, 28 Oct 2019 12:18:13 +0000
Received: from mout.kundenserver.de ([212.227.17.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iP3y5-0001G9-53
 for openwrt-devel@lists.openwrt.org; Mon, 28 Oct 2019 12:17:55 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue109
 [212.227.15.183]) with ESMTPSA (Nemesis) id 1MfpGR-1hnmKd3hCT-00gJ0m; Mon, 28
 Oct 2019 13:17:34 +0100
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: =?UTF-8?Q?'Petr_=C5=A0tetiar'?= <ynezz@true.cz>,
 "'John Crispin'" <john@phrozen.org>,
 "'Tom Psyborg'" <pozega.tomislav@gmail.com>
References: <CAKR_QVKpKpbDdhQTF9=H63JaxoAwjOq0qJN7RK2G1UjjKapASw@mail.gmail.com>
 <4b8917b6-5e11-bb71-3b97-5eb450daa4e2@phrozen.org>
 <20191028115743.GD22393@meh.true.cz>
In-Reply-To: <20191028115743.GD22393@meh.true.cz>
Date: Mon, 28 Oct 2019 13:17:34 +0100
Message-ID: <025101d58d89$ae223110$0a669330$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
Content-Language: de
Thread-Index: AQGBMxz1COnpcATFOZp2+rPVSjT7aKgYqHJA
MIME-Version: 1.0
X-Provags-ID: V03:K1:ucZjsaIY8C3cXMppmiI3R2FW+ehbXXBhFoluqzsyLaDlhWaivFx
 eieQ/FbHkymot/uTnKk/w3mZPdrqHipmu1ZxXSWI1+4Yvi6i6ZH6ZblH+88F/NfU6qsrc8z
 Zrf6uNRGLnXfGQWTpM3BkU8Nx80YgRtBzu/sco2+iPV3kxqUsBYsBbyQWg0vrFIILhfbge2
 miwAHT6cdSOTMdgu4Yomg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:A/ts+d7Gcns=:OP4OEVlWc4kEap6t57iDXv
 eXViMa4NGsiY5Bfjf0idYT2SMwPQFvpsKKEtAstzaVMLnAIZcDkgPswXBQd7mGbaWuIFXqnhY
 D0TxSc+cmKGkuDgYlBpeP+OHQxDl1K86e3lEgrerF/xywAvyciyKGr61gfd1OGJY/GjSx9KvF
 O1t+Vov8XsuPKyBw+Ipjz+akQ1esDzxJwhdcKK8uk9mooOH9F2DlV3nowHzRUkj4/S1T9pcss
 TNInkg5ZJZBLcQaeV2A47c3c7slsQtH1ZylBT19wy6n5j1j1ljzVyNlQxoGKwqPPNEQn1Sif7
 lFm4pL9fCjlSznh0BVQtbhTfTDf+N7lG2H0fb+iHc5ry9DaewNvWZrC7pMKpJymobVmGPHqVk
 PY6sXl0089CDEeUmNzalXHNvEhUyvkozQ4njCCFHw/UeFkxpjdypH2lzOiTLopDN9P9w+wPz4
 pAg4HbDPOHU5XodquCTG1O9OcLWObTD5IuWbkH6eUpJmlTazWFfyLpIkr6oqVGH1G9tcy8gqV
 BvZ2A+g7tlOGZwFRFtDFhOIjGqUXnGF9BE9AYN3qidgU171JPg+JlDQghRl8XH+Ly1aTyCCSt
 0bVE8mLMb9moUIj+puOiIAeKZhYQs37oPDpIfvhQ43Mhv8Y5vNiLidEMQAsX7j3oKie9K4FDf
 xh7uzjNwGoFpaIKdr/AMcavF9Q6JIp584zuX8ANoAJaQQyBGjg0WG4sFf6bZ1OpLvY5/EYQVu
 DGnfw5k9iCcPIMbwB0grF33pO7vjdqEDOY3ci1svX89yUrSenXW02TPT5ZP2og8hKlffXDCDH
 dxTHhkpKDcukGInP64jjXkodr59MSEP+eFxqECOshrkGcp3nqdVySabAE7W/sD+zSkFtA2JTk
 ux1whVH2hlSxIJpt6I1PECv/HXGU4jqVZ1RWW5yqc=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_051753_486533_CBAABEC4 
X-CRM114-Status: GOOD (  17.16  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.24 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] patches from 2018
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
Cc: 'OpenWrt Development List' <openwrt-devel@lists.openwrt.org>
Content-Type: multipart/mixed; boundary="===============2285114260072316663=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============2285114260072316663==
Content-Language: de
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="=-=1IothqVyydKlac=-="

This is a multipart message in MIME format.

--=-=1IothqVyydKlac=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org] On B=
ehalf Of Petr =C5=A0tetiar
> Sent: Montag, 28. Oktober 2019 12:58
> To: John Crispin <john@phrozen.org>; Tom Psyborg <pozega.tomislav@gmail.c=
om>
> Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
> Subject: Re: [OpenWrt-Devel] patches from 2018
>=20
> John Crispin <john@phrozen.org> [2019-10-27 14:34:04]:
>=20
> Hi,
>=20
> > I'd like to close all patches pending from 2018 in patchwork, there are=
 ~25
> > and a quick try on some showed none of the apply anymore.
>=20
> thank you for cleaning up the backlog, really appreciate the effort.
>=20
> You're just mentioning Patchwork(PW), but I think, that the same applies =
to
> the GitHub PRs (GH) and bugs/issues (FS) as well.
>=20
> Perhaps we could take this thread as an opportunity and come up with some
> general rule, which would clearly define somewhere at the appropriate pla=
ce on
> the wiki, that for example any open topic on PW/GH/FS platform would auto=
close
> after some predefined period of time (it can always be reopened if reques=
ted).
>=20
> Say 6-12 months since the last activity in that particular topic?

I'd personally differentiate here. Particularly on GitHub, there is two typ=
es of stale submissions:
1. Those where the submitter left track after (initial) feedback
2. Those where there never was any feedback

I'm all in for closing the first category after a certain timespan (and eve=
n suggested that when I went through old GitHub PRs some months ago). Since=
 it's easy to reopen a GitHub PR, I would even choose a relatively short ti=
me span for that (e.g. one month).

However, I do not think it's fair to just close an old submission without a=
ny developer (or others people's) feedback (category 2), just because nobod=
y is interested in it. I'd see this differently if the old submissions woul=
d do any harm, but since they are just lying around and making a list a lit=
tle longer, it's not like they pose a big problem.

For the patchwork, one could do a compromise:
Instead of just closing submissions, one could provide a standardized feedb=
ack that 1. patches do not apply anymore, 2. it seems to be that interest i=
n the subject isn't there and 3. that resubmission of a rebased patch is po=
ssible if the author wants that. This will remove inapplicable patches from=
 the list, but reach out for those having invested time in an enhancement t=
o OpenWrt.

Best

Adrian

--=-=1IothqVyydKlac=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl223FsACgkQoNyKO7qx
AnCHiRAAqx7nByDZOqWCX11xYP0Zbn7CPUWzapLpzKNu8CZQL6Xdia1U6Wo6DkEK
AQw5H7zUg3uWvX3HL0xC4atqEWaw5yG8tnBdn40RYdnzVXY3kiMpTnubHfXJXe9b
L6WVB7GRUCcDlij6kRFbx/j7UHGut13z2vM94qjDoYlKiFG6Yh2dVMquuPMpbMsy
oC6VOtH6H2pSZ/Gn+5PqlLJzQnBdDKPjDMbXtUS9RNH1XGVIEkaYcJJETV51QynS
jKNqv4oTAEKsZLRb00SPZk5nw8OrgPASy1hCLId3NzBKB26sRnz4Ayzv2n9FVaqk
pAlth5KIUgx6Sbpd7REngbg/WaJ+Ij7aErHQIXvJexGI3YwQk1g6JRFzzPzXWJBB
RZQKRoQ4mJqmidkitTfYQDERDe34chdad7hvSTqHrUyepzH8v+xSAFBpiFiRA8pu
qR8S9eKQqsjNk4whiBGKp1Eca5RRT05cmVaWJ5rEpEXidI2S62N/4h525U3UlPM4
IRhBGmprXLuBU4BQ9ou2fxpeVauptfJhOiDN9vWaeVeyv1buKRa/rc5dao/GbAu9
J3pj04Gq0x22VaDnCUox7FfIDUJ2a2bsRIhglvADWGkZPXWlUJwkD1jCEjXYXahK
cu553OR9G5cAMM1dUmok046t7cmzVSjkayfouY2OjbEmP2wkBjg=
=d02q
-----END PGP SIGNATURE-----


--=-=1IothqVyydKlac=-=--



--===============2285114260072316663==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============2285114260072316663==--


