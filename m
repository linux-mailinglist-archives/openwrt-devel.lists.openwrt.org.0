Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85B171308E4
	for <lists+openwrt-devel@lfdr.de>; Sun,  5 Jan 2020 16:57:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=JSTsHs9sQt5tlQ62pA9Os6FdBamgVG9fqBjwfZNvkPg=; b=ZKYNBQ0jEPt4Rirq3glQDrc6F
	5kCc7tGhpoPnGWaqF2ZEULHRqOceOVOPC547Qk0VbaJokqfuEq5O2unCd4phTNS9Fjd4APaIK2kAb
	OW8nsDbBrbsfJ2T81ntR0kyfq7hl4dSF2PJjQ+LQKE1GLH6NGr48oU2gticPLqu/VxRXYaAv9Vb8M
	TpRMfhCXtTnvIQl8b6lPmC2G+K5OL16qgiWl9gTuUxj/YwLRrSG7qAmvhDylOGs4QRoA1K4KJUJC3
	AZlUUh0uvSdaIEXoNRxOzQn5WaZxwN6j2MexmTM34o91a2XUmHYv8QKE7ZyTyfr6NtewalpBefEDv
	qajOICB6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1io8Hi-0003L0-3A; Sun, 05 Jan 2020 15:57:46 +0000
Received: from mout.kundenserver.de ([212.227.126.135])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1io8HW-0003K9-HF
 for openwrt-devel@lists.openwrt.org; Sun, 05 Jan 2020 15:57:36 +0000
Received: from desktop ([188.194.105.26]) by mrelayeu.kundenserver.de
 (mreue009 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MYNW6-1j9hOs1Xf8-00VMB6; Sun, 05 Jan 2020 16:57:28 +0100
From: <mail@adrianschmutzler.de>
To: "'Tom Psyborg'" <pozega.tomislav@gmail.com>
References: <3a6109f9-07db-7670-5a57-9a801d7c4dfc@hauke-m.de>
 <019d01d5a617$53e76570$fbb63050$@adrianschmutzler.de>
 <9ab7f0b2-d122-222a-6d8b-4c330fe3935b@hauke-m.de>
 <009201d5c234$d1045e30$730d1a90$@adrianschmutzler.de>
 <50e1561a-a48e-6b82-0b2f-52bfd90e747e@hauke-m.de>
 <005f01d5c3c5$d420a320$7c61e960$@adrianschmutzler.de>
 <CAKR_QVJiA+kwuENABz=QLjBxVui-mVRTdNXCR+GmaaMf1Q26aw@mail.gmail.com>
In-Reply-To: <CAKR_QVJiA+kwuENABz=QLjBxVui-mVRTdNXCR+GmaaMf1Q26aw@mail.gmail.com>
Date: Sun, 5 Jan 2020 16:57:27 +0100
Message-ID: <009501d5c3e0$d4951b90$7dbf52b0$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AQKHHZl+c6tYe6NxV90oTdPoalDB0gKX3rv8AN9zaFkBVuaE5QBtT/prArzE7GECLNoiuqYoWwuw
X-Provags-ID: V03:K1:QEZUN0dwUhQ+wDmYRfXceDVVDJXEgiertXTOu9iKwP6yy7wNvAT
 bRO3DC/dci9WvtmJyfATQyjiGAecVoZIdke984DlHjOU8JsusGYt1ub1SxiPwbM7PVP190S
 7iUPZWIfjpggoPmHlN9mqPRxCoi88t1yZTbDt7p/TUhIzrcG29VYWYT5xcY0Tdc8STYnKd8
 PIzfTUldT8xXFHFlqoXcw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:PD1pVrsixDY=:DiBGswea58AdUv90TZ956a
 +V7U2dTiQV6xAieK+qjs8IjPJNGVCmv1hO1KwzZ0Thd5mIi8cOElm9PkRBp15rYV74yoViudo
 ByPmB56kILMB2KAR0bZlFKFjhEl68dckz62TW001mmDW0BV1m5yneJjGuyvIuE1Bt0YF90dOX
 ZrqbliZmkdf+i50llqaFAB8wf3qL55kbXZKu+YcVOrAa/Nba5DXqZ4+2pegrQdO97mtJWRiUb
 Ftz0w/ZTgXHlYDQUdHFv4yihcN2b9pwqI/xMJU4vCWnCRmgX5aW/ZayAPjSXBz8kBQ1HK6Acu
 Y9VLIv2nAtPRazydsKExHdaQQn97npOLFUtN6ugfQcqG/99zIA2F1G+dTZTHUNgfh3/7duPql
 35Yq8kiNjM0+apffqKKzshoMMbNMKDNyK6CS4B7F56Bh26sJPjQDqHSQWA0tnwZbdP7xGiDrd
 F5e6h+fVo739ueTcsPeoStqlzQO33XpvRe4H/eLIEDiQhNqx2CQqNtUAZPxIhXyAMjGgj00sN
 UGnP+YGv3nFMPbA4EWviM6/4JjyatAZFz2kKYg+ol57QpDfrlWcdweSS9YOsLa1i8DcEnor4H
 dPtF20D29kLkKH+pMqqVV1+eEoqaL5vUlmJWd3/A0xM3MI6qR25+gm2v+fjEb/TCThBP/vXqf
 uwwTzyiItS0pPYevJ5vT5ju9zg1RIhrp66hiHqNCo6fnmzHWJK2d5eADRCPc5WpdXcdpMG+LI
 tFgcFPSGp/yyMjPaaUPZbO9zMGa6JemL17/bhAkMIjvY+9TH+/Vi3e+zxnGexvnna4EOPmptA
 v4IYvcnz2pEg1nO861Omr8/J56gyeq47yxs8q9QkkdxB3y313ANwlLh02WTwb+Tk2hdIA6rn1
 wszXPg+PUXsXEzaPjPV9oZuOoHHsRZIWkd8ngzbio=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200105_075734_867301_B04D4992 
X-CRM114-Status: GOOD (  18.83  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.135 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] Kernel version for OpenWrt 20.X
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
Cc: 'Hauke Mehrtens' <hauke@hauke-m.de>,
 'OpenWrt Development List' <openwrt-devel@lists.openwrt.org>,
 'Koen Vandeputte' <koen.vandeputte@ncentric.com>
Content-Type: multipart/mixed; boundary="===============6691397109126538717=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============6691397109126538717==
Content-Language: de
Content-Type: multipart/signed;
	boundary="=-=yrx/gQ71GM+H4z=-=";
	micalg=pgp-sha256;
	protocol="application/pgp-signature"

This is a multipart message in MIME format.

--=-=yrx/gQ71GM+H4z=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

> -----Original Message-----
> From: Tom Psyborg [mailto:pozega.tomislav@gmail.com]
> Sent: Sonntag, 5. Januar 2020 16:33
> To: mail@adrianschmutzler.de
> Cc: Hauke Mehrtens <hauke@hauke-m.de>; OpenWrt Development List
> <openwrt-devel@lists.openwrt.org>; Koen Vandeputte
> <koen.vandeputte@ncentric.com>
> Subject: Re: [OpenWrt-Devel] Kernel version for OpenWrt 20.X
>=20
> On 05/01/2020, mail@adrianschmutzler.de <mail@adrianschmutzler.de>
> wrote:
> > Hi,
> >
> >> -----Original Message-----
> >> From: openwrt-devel [mailto:openwrt-devel-
> bounces@lists.openwrt.org]
> >> On Behalf Of Hauke Mehrtens
> >> Sent: Samstag, 4. Januar 2020 18:26
> >> To: mail@adrianschmutzler.de; 'OpenWrt Development List' <openwrt-
> >> devel@lists.openwrt.org>
> >> Cc: 'Koen Vandeputte' <koen.vandeputte@ncentric.com>
> >> Subject: Re: [OpenWrt-Devel] Kernel version for OpenWrt 20.X
> >>
> >> On 1/3/20 1:53 PM, mail@adrianschmutzler.de wrote:
> >> > Hi Hauke,
> >> >
> >> >> -----Original Message-----
> >> >> From: openwrt-devel [mailto:openwrt-devel-
> >> bounces@lists.openwrt.org]
> >> >> On Behalf Of Hauke Mehrtens
> >> >> Sent: Donnerstag, 28. November 2019 19:42
> >> >> To: Adrian Schmutzler <mail@adrianschmutzler.de>; 'OpenWrt
> >> >> Development List' <openwrt-devel@lists.openwrt.org>
> >> >> Cc: 'Koen Vandeputte' <koen.vandeputte@ncentric.com>
> >> >> Subject: Re: [OpenWrt-Devel] Kernel version for OpenWrt 20.X
> >> >>
> >> >> On 11/28/19 7:11 PM, Adrian Schmutzler wrote:
> >> >>> Hi Hauke,
> >> >>>
> >> >>>> The following are still on kernel 4.9:
> >> >>>>  * ar7
> >> >>>>  * ixp4xx
> >> >>>>  * orion
> >> >>>
> >> >>> There are patches (actually from you, May 2019) on the list which
> >> >>> claim to bump ar7 and orion to 4.14:
> >> >>>
> >> >>> https://patchwork.ozlabs.org/project/openwrt/list/?series=3D107337
> >> >>> https://patchwork.ozlabs.org/project/openwrt/list/?series=3D107339
> >> >>>
> >> >>> I haven't looked closer, just in case you forgot about them ;-)
> >> >>
> >> >> Nobody reported that they are working so I never applied them. I
> >> >> do not have the hardware, I just made them compile.
> >> >
> >> > Since there was no response of any kind from a third party, I've
> >> > just
> >> marked the two patchsets as "Deferred" in the patchwork, so we get a
> >> little more overview there. I hope that's okay for you.
> >>
> >> Yes fine with me, we should probably drop these targets soon.
> >>
> >> Hauke
> >
> > I think it's time to remove the three targets and kernel 4.9 support
> > as well after the release has been made. Or does keeping kernel 4.9 in
> > master (even without targets) make it easier to support 18.06 branch?
> >
> > Best
> >
> > Adrian
> >
>=20
> This LTS version will receive updates for another 3 years, why do you wan=
t to
> remove it?

Next release will be kernel 4.19 or 5.4 only, and the respective targets ar=
e still at 4.9. So, they haven't been included in 19.07 (4.14 only) and won=
't be included in future releases unless someone updates them. At the momen=
t, it looks like nobody will update them.

So, we plan to remove these targets now, as they are effectively unmaintain=
ed. Those who still want to use them can have the 4.9 version in 18.06 stab=
le branch until that one is EOL.

In both cases, updating or removing the targets, there will be no need to k=
eep kernel support if no targets are left. Thus, we can save time for maint=
aining that kernel version.

Best

Adrian

--=-=yrx/gQ71GM+H4z=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl4SB2QACgkQoNyKO7qx
AnCRNRAAhMfwdZPv6Emz99AGtIp8a7GPTyhIxiPn1zqiOaFxb/ClGfXHwZn2wkVr
HMQ+5SvHXPmc+5Xwc9MmuiDO6tU1+wxk5QzvbKnVGhKi61PFltuevy5a5DqC0nE+
D7r3V+346VoE6KHRRf6P2UwYHVZHZJhVT79+YR8tcQJOwx5zS+h5dG8lRtq7Pu1Z
tS0ql3wDUyb1BP/0q8si6b5CPE4VF98Kqa4C/SLGVhoLY9fcujOOPfz0HEpisf+g
N6aVVQnHHJYvptlElLTaTR5sNVpazfvEdxbevjS7Dud8uyYBhl8PqCs5Nk3pW22n
2F6WhIJOP1l9UbBpr498/zr5Q9ZR+WDFQjhJkZtAJBArc41TZmctll9W50NeuUko
GVKHn5OL/C1nIQOrE1ZM+IvHK4yUvlnfVQYnSDVIxN1pYACoKbmH5Ar/JtH8vcI+
PW0pNqZkkg4KogbsjgRl6DPcDdDlAXbCdH1YMtn8oSNKrVeKetufGYgViftX82cn
M9EJpxRtR0pJob0i9PL97110SVpE4v+9S9D2daLV6PTkypMAd8HPIr4KqnvBnUVF
4GXzNO5DZo4xNc6aHBBTtJo6FZQLRRxB6UNu4eULagLg5vaUGNPOWwYFObQitFnO
R5Lpaj1W2MIT9TV8nGdC5aJ0NPxJN+13khRKYFkpS8L7ajNkmG8=
=rqLK
-----END PGP SIGNATURE-----


--=-=yrx/gQ71GM+H4z=-=--



--===============6691397109126538717==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============6691397109126538717==--


