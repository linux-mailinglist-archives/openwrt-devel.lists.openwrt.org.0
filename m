Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EE71E8816
	for <lists+openwrt-devel@lfdr.de>; Tue, 29 Oct 2019 13:25:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7+0rQVx+JXoDUTxcKSmIf3VDIoSidoANhbR9JtGsLf8=; b=iKoamYnv7sVhN4K9InmWwyxru
	0OYYtCn8Eo3B5GE2PptXut7nuDd0dtv6/3Oa/S6WEHrTCBBAgyh55xtR82tt6VCrC9NDfGU027iZL
	+XI8tjG930UfwqFV5aCzirFKjuHduxOFgeR7SY17RbN/qa+U8o17kWShnf5ynd2NjEAc9YDi/sRcx
	td1GY3JzrV+RDESS9xkylVombcGdLw1paKP9J8cINqgzNUue0nRl1I+JJyVD1UVxs8f+8UjHfPH0Q
	rjc72PDlLeS0Ie+ANmUW48QnMOaqjL0C0ifdPKiDSlXAa0ICV+DPCgD2w57aghKVtA/hjfUIB4KBa
	wn26Q+Azg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPQZJ-0003O8-Hm; Tue, 29 Oct 2019 12:25:49 +0000
Received: from mout.kundenserver.de ([212.227.126.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPQZ6-0003Mc-P7
 for openwrt-devel@lists.openwrt.org; Tue, 29 Oct 2019 12:25:38 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue010
 [212.227.15.167]) with ESMTPSA (Nemesis) id 1MVv8f-1iZdBF0iiD-00RmsF; Tue, 29
 Oct 2019 13:25:28 +0100
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: =?utf-8?Q?'Petr_=C5=A0tetiar'?= <ynezz@true.cz>
References: <CAKR_QVKpKpbDdhQTF9=H63JaxoAwjOq0qJN7RK2G1UjjKapASw@mail.gmail.com>
 <4b8917b6-5e11-bb71-3b97-5eb450daa4e2@phrozen.org>
 <20191028115743.GD22393@meh.true.cz>
 <025101d58d89$ae223110$0a669330$@adrianschmutzler.de>
 <20191028135923.GE22393@meh.true.cz>
In-Reply-To: <20191028135923.GE22393@meh.true.cz>
Date: Tue, 29 Oct 2019 13:25:27 +0100
Message-ID: <004e01d58e53$f2a70700$d7f51500$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AQFFJmztUCN5sLAVwJsetvgPCo1uJAF9TdyhAYEzHPUCIBLaiAJuOUH9qFXoStA=
X-Provags-ID: V03:K1:gB+hLPFSvu2m6UFyLdSQGz1a2u/ae5WKbDLB4ldXwNqhilgande
 NzWJsHRNrYOnLPU7JSZxu3IEU8Bx8BHbMlFPONBh+EE5oVLg9kJ5SRGJRsRo5++egvcaQ1M
 FJtO0eQqXupeiVAFrFPdtQ+r7taa2rThPCS42Tg3MKtl1SD8Pqm5mnHR0fSBQWUeosZ7ZFt
 h0tjelZv5HkcZMZwFukzA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:3RkG3IT8Tlc=:ARVg0z2rYOyoUK5jDGLfKe
 tIrEyKEKGJej/EBxZ5i/5g3T0GkUj0RwxSGeyHFONt1fcZ690WbuHiylSvQjqlbUm4uaJWl3y
 CiLLRPLq/eVuc00D0GWP1fFlNbAGgtmLmgqJLt79c1HYpJ6fNBLpEOEmoeynPQUawnF3COUqg
 qkqx+wpwyvCyEq+6YEvWbJe0WNGvbzrHWdvbs0BTKs54vtA+WP14fTW8wmGa9bSsrLxoururQ
 QpP6Uuzf98GJkh1jT/9C3M+2Qxkt5jW+UslPMa+iE4piKlDSqYJppnj1iCkC9PGNDKxJjz45u
 Svbqx9ctQypdgj+6bCIpdNauc5IsoYG2V7hIqo19RpIr2Fp0hkTb8kMOcoJrwt9whBT8oSc98
 sNN5MUQ7WYK20EzHfdPe1EpHJA/M+GC96vUPE1A0o4CE2lASHDWsmljxFaTduBgUbRkZEYA9B
 Fpsg7NBNkuOnuL0f5caoRsGmdIATdCsVWh3EjSDHO0RaJCl+/wZMghDPb6qaMvrTFgN4Xvy5U
 ZdPjmmslK4ptJD7HiWOV8vHHpeBHJkRudWGnz4HH7CDtorrRCPlP8fMxyA2/xxxKImfjrOP6x
 qzmlzwZnMZxG+U7RbbVMKmn7DXfiQnNR+qzamRhMfQhDJH9u4RBZEi4AjZl52eZZPU+h24EVI
 +lDJT9Jb1O4xc6eQiHI7UeaFmkAXgW0C3OWb92EpWMxx9cyKkoSvBQer4KZzdVs6V2UkDBi3Q
 +6P/Y8ARZtERlY+dZpbMRVVzz2TYeZcxhTm5oTTARHOeR6iMpkK1VglirHZb7l+kD6a1pB9jn
 kDo96xAcx5bVoLi/iZWx/4G6P7ynwMWV5X/ZdZBDrC6pfMrEvxy4PrgshU9EGtsaPFEQntIRi
 uO8ahZdq7IJb0Q9Y0dTmLgOo4EEfi81Bd+3otkkLg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_052537_118527_DB5AC6A4 
X-CRM114-Status: GOOD (  27.22  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.187 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.187 listed in wl.mailspike.net]
Subject: Re: [OpenWrt-Devel] improved handling of contributions [Was: Re:
 patches from 2018]
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
Cc: 'OpenWrt Development List' <openwrt-devel@lists.openwrt.org>,
 'Tom Psyborg' <pozega.tomislav@gmail.com>, 'John Crispin' <john@phrozen.org>
Content-Type: multipart/mixed; boundary="===============1313611279265176718=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============1313611279265176718==
Content-Language: de
Content-Type: multipart/signed;
	boundary="=-=BMWpLHXMvxVdaV=-=";
	micalg=pgp-sha256;
	protocol="application/pgp-signature"

This is a multipart message in MIME format.

--=-=BMWpLHXMvxVdaV=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

after doing the inline comments, it looks to me like our concepts actually =
are not so far from each other=E2=80=99s.

We are both looking for a set of rules/guidelines on how to deal with old P=
Rs. As it appears to me, the main difference is just that I prefer some man=
ual interference, where you are looking for more automation:

> > 1. Those where the submitter left track after (initial) feedback
> > I would even choose a relatively short time span for that (e.g. one mon=
th).
>=20
> so this probably means PRs with `needs changes` tag and defined inactivit=
y,
> right?

In principle, yes. However, I just don't think it's really necessary to aut=
omate this.

I'd introduce a "stale" tag (as suggested by you, too) to GH. When looking =
at a PR with no submitter activity for X days, I'd write a comment like "Do=
 you plan to respond/work on this? Otherwise will be closed ..." and assign=
 the stale tag. The stale tag can be filtered as well as open/closed status=
. If there is no response on the stale tag for Y days, the PR is closed.
It's not like we have thousands of Pull Requests (situation might be answer=
ed differently for bug reports). I think doing the above manually is achiev=
able without severe additional work. In contrast to automatic close, this g=
ives the committer the chance to have a brief look at the PR, so he is able=
 to account for special circumstances.
(Despite, with PRs being autoclosed, I wouldn't be surprised if we get lots=
 of duplicate PRs instead of old ones reopened, which would also increase m=
aintenance efforts.)

Nevertheless, I'm all in for closing stuff with no submitter feedback.

>=20
> > 2. Those where there never was any feedback
> > However, I do not think it's fair to just close an old submission witho=
ut
> > any developer (or others people's) feedback (category 2), just because
> > nobody is interested in it.
>=20
> And whats the point to keep them lingering on the GH forever? My feeling =
is,
> that people are simply afraid to reject the PRs so they simply ignore the=
m,
> but in the end, net result is the same.

Well, if the latter is true, rejecting would be the honest response, instea=
d of keeping the submitter in misbelief that his contribution is just not g=
etting enough attention.
I'd personally keep those contributions anyway and use a special tag for th=
em, like you started to do with "needs reviewer" or also the "stale" tag. A=
gain, this enables people that want a clean list to filter, but won't remov=
e them in case someone gets interested eventually. I admit this is easier t=
o achieve for GitHub compared to patchwork.
(Still, this is an opinion, I do not think there is right or wrong for this=
 matter.)

>=20
> > I'd see this differently if the old submissions would do any harm, but =
since
> > they are just lying around and making a list a little longer, it's not =
like
> > they pose a big problem.
>=20
> If we're talking about following GH PR filter:
>=20
>  is:pr is:open comments:0 updated:<2019-04-28 sort:created-asc
>=20
> Then it yields following result:
>=20
>  kernel: add kmod-frame-vector                   https://github.com/openw=
rt/openwrt/pull/1518
>  kernel: build kmod-dma-buf properly if required https://github.com/openw=
rt/openwrt/pull/1519
>=20
> Both PRs from the same author, almost 1 year old. I believe, that if some=
 bot
> would autoclose those (or at least marked those with `stale` label which =
would
> mean autoclose in next 30 days without any activity) it might signal the
> author, that there probably is more effort needed to make it merged.

Yes, but this can also be an argument for the opposite: If it's only two ou=
t of 170, why bother with a bot? Will two entries in 170 really bother when=
 reviewing submission?

>=20
> > one could provide a standardized
> > feedback that 1. patches do not apply anymore,
> > This will remove inapplicable patches from the list,
>=20
> this could (and should) be automated and it's not an issue I would say.
>=20
> > 2. it seems to be that interest in the subject isn't there
>=20
> what could be more explicit then no activity for > 6 months?
>=20
> >  and 3. that resubmission of a rebased patch is possible if the author =
wants
> >  that
>=20
> indeed, but rebased patch (and additional work attached to that) wouldn't
> necessarily mean, that it wouldn't linger in the patchwork for the follow=
ing
> year, until next pre-christmas cleanup.
>=20
> > but reach out for those having invested time in an enhancement to OpenW=
rt
>=20
> To me it seems, that it might make more sense to take a look around for
> inspiration, how it's being handled in other FOSS projects and try to imp=
rove
> current workflow.
>=20
> This PW/GH/FS fragmentation still makes me crazy, but anyway just a quick
> ideas for PW/GH, we could handle the aging of the contributions more grad=
ualy,
> like in more phases:
>=20
>  1. change patch status from 'New' to 'Needs Review / ACK' after 30 days =
of
>     inactivity
>=20
>     - on GH label=3D`needs reviewer`

Yes.

>=20
>  2. change patch status from 'Needs Review / ACK' to 'Under Review' and a=
ssign
>     it randomly (to predefined set of volunteer commiters) after 60 days =
of
>     inactivity
>=20
>     - on GH label=3D`awaiting review`

In principle, yes. However, the volunteers will need to deal with anything =
that comes on the desk.
I'd personally make that dependant on whether there are volunteers or not.

>=20
>  3. change patch status from 'Under Review' to 'Needs Review / ACK' after=
 90 days
>     of inactivity

That's the same as after 30 days? (Chosen because there is no "stale" equiv=
alent on PW?)

>=20
>     - on GH label=3D`stale` and remove the randomly assigned reviewer
>=20
>  4. change patch status from 'Needs Review / ACK' to 'Rejected' after 120=
 days
>     of inactivity, sending out some meaningful mail with a link to
>     exaplanation of the currently failed merging process on the wiki
>=20
>     - on GH close the PR

As introduced earlier, I would require to do this manually, so at least som=
eone has to have a brief look at the thing. This won't be that much work, a=
nd it prevents stuff being sorted out nobody really looked at.

Despite, if one automates, one of the crucial points will be how to measure=
 "activity".

And how to deal with bug reports? In contrast to feature requests, a bug re=
port cannot just be closed because nobody is interested in addressing it?

Best

Adrian

--=-=BMWpLHXMvxVdaV=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl24L7QACgkQoNyKO7qx
AnDp0BAAuyN2znbvCCBfGeK6GVaZFfJ2cdNQoePr1jlHTVas8iDM6SaY8Nq5ty+b
FLnKUAcLCXTmj6O3e7hgo2EecS1HEnUCXTdr8DhOyDsYYa+aUnSPlltiSTOYbQxP
FpQ9Q5yAzUtgMwXF9/gRZyI221MY7uAXSN4GIvKIY/tOhKVArGQ+S8aghlmlds2p
sDUR7BN01BgUjE+oDdzoQSOUQGDkaxD6G1MPfJgiYS2TWdDwIIcUGoM+7xrxAiF6
UVDdiHf4eXR8VyGPZ3IkEbhv5B8R5PDzeZ3f8BwOUYasf4VcRnrN0zKw7oZerqj4
qOEZ2bkGHm/5KMUSlepY3CdyRnhn88yNaic+VheHOXznOkz65B5bxUDwKkd0Fmtc
hAHnmYAWuwRmGB7HNwYSu/3deEuOLp34IYUVTc9vIqpF8lcpW0HQTDcK+2vuxHTl
4Bnrdat92b7t4fDVI3V5DN/sDjIobVVV/sHmlV22n9rpdn/o0nHLjqYDkP42tHsX
oiq+TfaJc0nM+1GuNSVtW/R6Yc4zg8NEgCm5wJcCRusgRkg2x1ctWWjiS8A3jqq0
4p0wKTQyYSUzVPRBaBYxa8DU1IuY798s/HOaRtWDp/4swNCXQ7hxBTqolbFflv0v
4TVOwJwCFeJ+UjQhUnn3AF8vcJFkj1SFXkEY4/0E+J09Sbfw00o=
=8z1M
-----END PGP SIGNATURE-----


--=-=BMWpLHXMvxVdaV=-=--



--===============1313611279265176718==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============1313611279265176718==--


