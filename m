Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F008712AF8D
	for <lists+openwrt-devel@lfdr.de>; Fri, 27 Dec 2019 00:11:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=CMsWobevYy1rtL0/iMskdMzQnBT7UYwFF4ue8g5ocR4=; b=TDYKMIptg0I70t1U3kllr7ZaP
	uiiTg2Iju8ZTgIMtIOufSYI/V8UaDuZ01P+pNIf7NjoOzq3nV2UWDAvRO152U0MIoJ3rcoGQC5ahX
	gLsGqj/OyWOoJjy2DCzLvQ6c/Sk4pCUvudGmZX3jEtuzn4q8RS4x5Oh60mNw7Wx44Brwd2EMuLXYt
	1LPq6QtcJ7Queb3UzhjbV8s9s9CvQYRM6mjX9No4loMtDVSotrphmKJuUogasTkJourOLDbsXCoEF
	yOf/WfCM/Eg+H7ttSGXojtJcOVPbGABSCRN4pnwWGSpNlSDEltxsxzGqGz15Vl46rM7/Kr/dvconm
	SWVZwfkqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikcII-0006FD-H8; Thu, 26 Dec 2019 23:11:50 +0000
Received: from mout.kundenserver.de ([217.72.192.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ikcIA-0006EO-B8
 for openwrt-devel@lists.openwrt.org; Thu, 26 Dec 2019 23:11:44 +0000
Received: from desktop ([188.194.105.26]) by mrelayeu.kundenserver.de
 (mreue107 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1MVuXT-1j9fgA39QD-00Rtmv; Fri, 27 Dec 2019 00:11:35 +0100
From: <mail@adrianschmutzler.de>
To: "'Stijn Segers'" <foss@volatilesystems.org>,
 <openwrt-devel@lists.openwrt.org>
References: <20191225143851.12368-1-foss@volatilesystems.org>
In-Reply-To: <20191225143851.12368-1-foss@volatilesystems.org>
Date: Fri, 27 Dec 2019 00:11:34 +0100
Message-ID: <00ce01d5bc41$d1e99520$75bcbf60$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AQGiL1PWem/OmFXn4PTpL5gEbv8yQqg0Iqyw
X-Provags-ID: V03:K1:S0VIC/VRu4KF1bXrPSsPISJMqG/h1ZIIKppAk/31D/ObCb7X8mI
 PL2di8/Oafqw56k5ECjI0JSnbC8zip9c1tdTZG/p74EI7Cn1/pT4EjzgJc4qmLppeqG9VoH
 QH6syufMqEV3B2HjuUF/4Vi4vQXFgZaB3S/Lvb8A7NPbDCF//M1KSqPDlDl47R+3sABab1C
 dBhAnDypejKPFXbRTopsw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:JfseAvrbHQ4=:gU/OWlop8vP1tXMQoYTRY4
 BQevWgLLoOyIqiwpopsRRoKqlEg4vHMtCRhaAzaTCQMerBWvD1YgBSFR76tL1swxVC/YZUdaW
 x0wiD1RsbhsabS5NP+fEIlE+0SRz8hNxGMElB3JzozjQLJWlz/I+O8+K5ooMKXC1SqYIWAkDy
 tVNv43fqUewlULKcori+nX3D+aajIojHqjRIYCqIjVJrUF2dLwyiBbhrSi0aMcp7FmUZXgDvu
 5qqpC4Xa5QqVmODZnKPml5yEoEu6r0k/LZpYY00ZDzXr3kSY/W162cDExIaQXbzMGwAQXwGDy
 xRQG84BSTkUCI1aC35xaHl9hcsEBus8PA6zWke8Ixb791Mfo/t6T7iYPZ6u2UdXLoPUBvlt4S
 ASqqnUiewczqvRT0JFV1NQLh0qt4v8AuEzaSOz2Vm+GW+oDtFRfAo0YaWnfPnTVPYJbK3cUXc
 QrbIaTzspyvwhLI5uVBw22qlZ53ZP9kb3g1QwJhXXglOJGwQPWuUQqxIRvXK/E8S/o4IjjjTZ
 l7tahfFsws547Cxj1/hrQuDTWoD2KiViDg1zPdSlcrFjy5jDsTexjgg/bkQB+pCChksTuGXMy
 Etv/53mDuPPGR3mkqOxtEVs8ri0JiDeE+KcYIxmfhkTneRm5pSmTeLw4Kpn9yBXdEHOzDMrDa
 jYGXHarzmdEXO8FdlahVd9ufzzj4KBQnYidwiHMrc5BrODHkNjYVt9qneTopMtIpEDE7C6KG7
 J9UcqTO/RZARbsAR75ojc2i7hzr4vq74jZlZEE3mnL5XuuSGdaMw7LRo/qOcYoS2DOjSZ/NG2
 OE2K4eYh7/lB3SR2I06PhTN4qG+6KBBwzRwwcObMPxqDs6ncgUZ1EZQ12VZeF01b0G+/rS3q8
 ZPQgFAzZcfVW1yCbFZqm0o2+uSIxqnze6iLxprwf0=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191226_151142_678094_D12EF2A3 
X-CRM114-Status: UNSURE (   7.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.74 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Content-Type: multipart/mixed; boundary="===============7272296864864967106=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============7272296864864967106==
Content-Language: de
Content-Type: multipart/signed;
	boundary="=-=ymdwEPK3CXo5sT=-=";
	micalg=pgp-sha256;
	protocol="application/pgp-signature"

This is a multipart message in MIME format.

--=-=ymdwEPK3CXo5sT=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
> On Behalf Of Stijn Segers
> Sent: Mittwoch, 25. Dezember 2019 15:39
> To: openwrt-devel@lists.openwrt.org
> Subject: [OpenWrt-Devel] [PATCH] [19.07] ramips: rename DIR-860L entries
> according to the new manufacturer / device spec
>=20
> Most images follow the openwrt-target-subtarget-manufacturer-device
> naming specification, but the D-Link DIR-860L rev B1 does not. This patch
> brings it in line.
>=20
> Master had this updated a while ago, it's okay there.

Though I'm a big fan of unification and made an effort to have this sorted =
out in master, I do not think backporting those device name changes is very=
 helpful. This will create additional work, but effectively it will just mo=
ve the "break" from 19.07/master to 18.06/19.07.

As a cosmetic issue, it wouldn't be a candidate for backporting under norma=
l circumstances, too.

For further reasoning/discussion, refer to the following PR in GitHub, wher=
e the same question has already been discussed a month ago:

https://github.com/openwrt/openwrt/pull/2574#issuecomment-559460188

I will mark this PR as Rejected, I hope you accept my arguments and continu=
e to submit contributions in the future.

Best

Adrian=20

--=-=ymdwEPK3CXo5sT=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl4FPiIACgkQoNyKO7qx
AnAdbhAAvMxaf96xIoUxexQZCQoU3YPiG02F+0/DlVtD1TufCgbPe0A8r+8BKFoT
PmjeHWl3+p9dfDGWos4BHES1/fUps+e2Niqo5eAubV0NVtha02RegX9Qg9cckyxC
TqjcBs4a+iesg5jNLTuHWifgJ5mq0hUglL3fxtCVD1dvVZBlZooi5J1z18XLXy52
hefJ6WwII0vwSZGJMYIiwkHYG9DLDsZ4Jb+px48TgFB1DEhPQJDKSoH0RgN9ExpN
3Ys5HngVehuS7h7o13tdBm+AVF3McW8rS4xhQ9EPYEibXVq9988+0iRpo2uH7DD7
zl1v7BJgBw2CothXXRxhVKyTfEY0R6+JuJeN2ukRRQsvEwgxcmTqzLXQn3SDejf6
epD7BM5WTLYphTQTSxXRjp3YLHaDrWWHZsRJZAF8osPEr7IzHdk1N3zytC++cNxO
bCH7A24/+qOqbAOjh1sxnEobMi86LpuT1FCu+BkV7tz51aJFWxW1VPZUgq48OVel
L9hP7MOcMZHAbuQ01u3KNiEU+1n8R57XY+uxIEg53PUZpRtVV2sPSNcyeBOlMhkg
KWS4N2eoUHMaaEVmxqyFKj3KyPPbPCqeWrhAYjP2DQzLx5ToNN5GhF8pvEI5y93E
/i0qSu8BHzKYl0LBekCUWHb3rGaosDz4VHR/vJHjkMWJJYSpYgQ=
=bly9
-----END PGP SIGNATURE-----


--=-=ymdwEPK3CXo5sT=-=--



--===============7272296864864967106==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============7272296864864967106==--


