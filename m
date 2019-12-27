Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 024E912BABF
	for <lists+openwrt-devel@lfdr.de>; Fri, 27 Dec 2019 20:34:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=QEpEYMOJxPKXqtsul/mU38vZrzFu6Ovo0/fP2bHhqrQ=; b=IvdKsaO4IfSECy15xOvewjJoj
	8Uc+yRFb/oeZYPOeuagAgnw7dEJe2Q6ROmwSjNRYlvpZ/2TkSZP4AgDkGk0A/2AtMVEPXPiKyCQAK
	/FCp5TsWURxgJ3WtZkMltJ2Tq3pv1fGT7vZ7cWGTTKNZZwUkQWk8rpBy0V9sL48J4q44Eoq9oq5SP
	84gDtIAIEoj3qeENTF9WhDxdTJDIIwvPjmBx3ut2xuip3BWXr+icVXZUytH1e7TUhtThUYOFIic2z
	FrOG8kRpXdu8DnbR1Rhe8yY3n+fTCABwCaA4kezN8yEON67nUGbQbj0SwiswpqOAT/wk/xd6M4Ppi
	eLx7iRTRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikvNo-0007QD-0E; Fri, 27 Dec 2019 19:34:48 +0000
Received: from mout.kundenserver.de ([217.72.192.75])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ikvNe-0007Pm-Td
 for openwrt-devel@lists.openwrt.org; Fri, 27 Dec 2019 19:34:40 +0000
Received: from desktop ([188.194.105.26]) by mrelayeu.kundenserver.de
 (mreue106 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1MEmtx-1j03oQ2S3X-00GKow; Fri, 27 Dec 2019 20:34:33 +0100
From: <mail@adrianschmutzler.de>
To: "'Stijn Segers'" <foss@volatilesystems.org>,
 <openwrt-devel@lists.openwrt.org>
References: <20191225143851.12368-1-foss@volatilesystems.org>
 <00ce01d5bc41$d1e99520$75bcbf60$@adrianschmutzler.de>
 <9339FD6D-FDED-4104-A6A4-9BE03124F192@volatilesystems.org>
In-Reply-To: <9339FD6D-FDED-4104-A6A4-9BE03124F192@volatilesystems.org>
Date: Fri, 27 Dec 2019 20:34:33 +0100
Message-ID: <03d001d5bcec$aa805ae0$ff8110a0$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AQGiL1PWem/OmFXn4PTpL5gEbv8yQgDfxzIYAvTylIOoFtRwMA==
X-Provags-ID: V03:K1:T6wlIQWpcgSQc2BiBeafzATWkeDqyM7zLTnQTej6JiEB+nuGrBj
 NdnkQPn894rb/HWBAFBUwQ7+9SFcAtZmAm0RH9WB/VkbPogkPbfsyEQeWnB54l4XohDsrcI
 YK2DUqkQlAdTNCnrTFK4tTJv0AJtNFw0BBMKpnoFxJse3GhgwgPIHoxhfu7xFjXBPlWQ1jl
 ItVq4/++hrYjqmv6xDSSA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:E9rLx1vkwJ0=:Rq+nMIJ81bOL5mMQqjUyH8
 098WocLfOLlIMrOPcTnYUvDmQtZ0A4Oln4KTJAq0wtPutH86ZqgufYgBsR/V7nrRx0Buoa1QF
 Um2aGRrpz/JvwnDinZmcnzeiAGngWjAP5hkJ4C4IjsNmJCSV41yCILnbYE7vX/VJGvXojU0Ag
 kWP3CBCHrczVu8ffo+GSPwzUFNXGW+m6yLCL/j5ZTXq8ck8pFAe27DvMYoigAzJTQn/E21lHt
 PLYq2+ok0UNpata7OKSFn0nGs3HEGQeuz20WOuH9ajLTjIOYKxwQ5MYEcKYwDGDKAUteCeulc
 20FWi2owxN2T53TSaKZ19yg4KnZgdd8PzHhamq3f2EqpjEMOsOb0Pww6PRLQuHLSBP0w43947
 Nr2MYEZ0oleGkO6Nh9Q3DWD26Zq+YX8QDnuw2CjeWkkYxtusSXvR9mqr2o6cZfCR/K/uGzpfi
 Qt2ths5JLLapG09MYU8FwxYlPnoDoI84KyYNPrMM1F4a/b0+at+8xF+LN95oJkaZA+p9W2NYX
 YZDwleJj8FbDYKT6bKBoG/a38KTSULGfw0WQe37KLiyzEFSsvtPoxn63I5cAMEZBWwyagBE+3
 Uc7h7WSVG2FYQKedM82dctg8sWazRI6GWEdCnT7+WcF7uTHwAS/TVRiy4o1+YlxOUUcRugW5V
 YAAOoDqXl9gwwBmJKKb1E+vKkMaiW5he8V1ANfPfa5cbOAGpfTDYS6RdfghMLyUtwoPT6sP+0
 /v8ihyEe6Vk7UDlaNDJFGTlVGmayBNWfi0lk0J+OrykAnxSxnMTSVFOFUYwJAmnrqEmGKnqLY
 tZfxW280UBzXKdNvKaJrwNn/vaA2tiGgUroWD0sSqk8GRMWuTZ1lqVp9xR4Uw5C04glv3NnLi
 Nfn53T7Dch4M8iUhFqhy/Kt+ufjhkAWYMprfgSMm4=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191227_113439_254376_CFA31B2F 
X-CRM114-Status: UNSURE (   8.27  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.75 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] [19.07] ramips: rename DIR-860L entries
 according to the new manufacturer / device spec
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
Content-Type: multipart/mixed; boundary="===============9031224747496736406=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============9031224747496736406==
Content-Language: de
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="=-=zLaZDAOGh30yDg=-="

This is a multipart message in MIME format.

--=-=zLaZDAOGh30yDg=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

> >> Master had this updated a while ago, it's okay there.
> >
> >Though I'm a big fan of unification and made an effort to have this
> >sorted out in master, I do not think backporting those device name
> >changes is very helpful. This will create additional work, but
> >effectively it will just move the "break" from 19.07/master to
> >18.06/19.07.
> >
> >As a cosmetic issue, it wouldn't be a candidate for backporting under
> >normal circumstances, too.
>=20
> Well it was worth trying =F0=9F=98=81
>=20
> Stijn

Somebody marked it as "Accepted" in patchwork. So, either that was a mistak=
e, or you are lucky and another committer had a different opinion on this. =
Let's see ...

Best

Adrian

--=-=zLaZDAOGh30yDg=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl4GXMUACgkQoNyKO7qx
AnA8wQ//TpQB8f9iXjthBV6V9Kay+zdVmpxiDesZEG+FWJhb4jzbGqILtTCCAt5f
EL2GRWPkJzqbZn9Z//81jUAAJ6R0s45AZ5F5S8Ko6MQc5PbOfifQfOJ7UQ06G+TK
D++xTh1krABwwBvYhHV2mdacd21zxiwhyhmzBZrR6qs+/ueykmYTG3Mz99pKAe0L
Rv0EgnEuT602FzeYbNmS5umDaoqpHsDsTy5SWdSf7cH+BKwacsZa8J5bpXF7yosa
fRFPJQROxACEujlg3VBLnXyNlqlJU7TtN95tqU1h+avC0NO6zL5ztDLBG8QUOk0q
aS9aD14WOJ3nLMn5N3niTgdW5XeOBu8EADPPwj2V9CQcsHtxdJogkTSGTvDUYIWp
tHKtaaggRn7FvIMVFo6HHtS5vmnP80+1spDfoDwTxxgP2HUWiUikYqMsvfh2rdLI
fzWZVKW8gdALSkaoySZvMDCnatXzVP9FCJMUiiaNcxgZWsRFXtoyx2qZkE5B88eG
eC6JTjAOUHfWcds0ym5FgA8e4Bt4izSoDXucPlgauS7BkeHOu7WOSHuYdE3GFo/5
7MpulYyJNTN7arne/ZueZNpXW2GI2EABZ+mJ5GoqIq3evGnJvLmXSbN2AmwRdh56
g/X0i1ksxkqr6EK19fl7F+3V7ARpBow1kJHcpSKQ10taCAEvBdo=
=Rkg+
-----END PGP SIGNATURE-----


--=-=zLaZDAOGh30yDg=-=--



--===============9031224747496736406==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============9031224747496736406==--


