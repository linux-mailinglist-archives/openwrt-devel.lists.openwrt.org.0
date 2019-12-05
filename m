Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 954EC1149D2
	for <lists+openwrt-devel@lfdr.de>; Fri,  6 Dec 2019 00:24:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=knzMR56bKkPtYb/y2rPT4EYUpNt042eS8UONsmessOY=; b=h8JUPRHoXAUR4ya7z7VXjIi4E
	YLsQJDmvJhG5OJZrA5uozuM+OajBTYrc+/jzh+OZTOzRpy7UnTzlgfiFRE6qGuyBwdFISumxuV+NJ
	MXUwOdcMolxDOLFCw4O0nB0ZDYub5rukJvUUqSMwKIg0Oa/6AW7q38MDxlJxBATUmaNrWmUWE85P4
	oI1evmC5oog+f/nCHVT6jaAo9fLvK0lsYgFSNl/uyAMp5AjTw5FOpZ3GtfJArbc79erwa9SIg6+cr
	AUEGWKpdqVIOOJjMQ6IjiABYhrkWrAFP5ngAYRmeac4KEUNV2K86cjNMzZSzTOJEfU0evpgu3eo0k
	EtpQejwyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1id0Tk-0007gl-VO; Thu, 05 Dec 2019 23:24:13 +0000
Received: from mout-p-101.mailbox.org ([80.241.56.151])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1id0Tc-0007ff-PO
 for openwrt-devel@lists.openwrt.org; Thu, 05 Dec 2019 23:24:07 +0000
Received: from smtp1.mailbox.org (smtp1.mailbox.org [80.241.60.240])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mout-p-101.mailbox.org (Postfix) with ESMTPS id 47TWxp3KDYzKmc6;
 Fri,  6 Dec 2019 00:23:58 +0100 (CET)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp1.mailbox.org ([80.241.60.240])
 by spamfilter06.heinlein-hosting.de (spamfilter06.heinlein-hosting.de
 [80.241.56.125]) (amavisd-new, port 10030)
 with ESMTP id 1F3L8f7HRRdW; Fri,  6 Dec 2019 00:23:54 +0100 (CET)
To: openwrt-devel@lists.openwrt.org, Ben Greear <greearb@candelatech.com>
References: <d530eff4-2b67-0bfe-78d0-510185e416b9@hauke-m.de>
 <7d4516c2-c9d2-102a-cb33-796497baa611@linux-ipv6.be>
From: Hauke Mehrtens <hauke@hauke-m.de>
Autocrypt: addr=hauke@hauke-m.de; keydata=
 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
Message-ID: <547634bd-d618-8cb0-82ff-ae12caf50aab@hauke-m.de>
Date: Fri, 6 Dec 2019 00:23:29 +0100
MIME-Version: 1.0
In-Reply-To: <7d4516c2-c9d2-102a-cb33-796497baa611@linux-ipv6.be>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_152405_133659_2FBAE5DC 
X-CRM114-Status: GOOD (  21.79  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] OpenWrt 19.07 status
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
Cc: stijn@linux-ipv6.be
Content-Type: multipart/mixed; boundary="===============4231346549460092439=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============4231346549460092439==
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="aIsLRsupwQ7TOpFIh6BtZhT4SsD8sKnTW"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--aIsLRsupwQ7TOpFIh6BtZhT4SsD8sKnTW
Content-Type: multipart/mixed; boundary="xBQB6kxyNNs41afoKIr4rKYIXQlooItQy"

--xBQB6kxyNNs41afoKIr4rKYIXQlooItQy
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

On 11/26/19 10:44 AM, Stijn Tintel wrote:
> On 26/11/2019 00:34, Hauke Mehrtens wrote:
>> It looks like there is a throughput problem with ath10k-ct on QCA9984,=

>> https://bugs.openwrt.org/index.php?do=3Ddetails&task_id=3D2593
>> there are multiple reports in the Forum.
>>
>> For me QCA9880 on a BTHH5A with ath10k-ct on 5GHz works in openwrt 19.=
07
>> The AP can do 180 MBit/s TX and only 40 Mbit/s RX over about 8m with a=

>> wall in between with sae-mixed to a Intel iwl8265.
>> It is also very close to 40MBit/s not much changing the lowest I saw i=
n
>> about 30 outputs from iperf3 was 38.8 MBit/s and them highest 41.2 MBi=
t/s
>=20
> I am seeing the same low RX with a qca988x AP and an 8265 client. This
> did not happen earlier this year. I first noticed this on September 5th=
,
> but I don't have known good commit hash. The problem goes away when I
> disable 802.11w. Without 802.11w, I get 300-400Mbps TX and RX. Do you
> have any other clients than the 8265 to test this? Ben suggested this
> might be an issue on the 8265 end, and to use a sniffer to look into
> block-ack setup packets:
>=20
> 18|20:29:01< greearb__> sniff the block-ack setup packets, make sure
> client sends them encrypted (ie, if you see them open-auth encoded,
> sender is issue)
> 18|20:30:51< greearb__> you will really want to spend some quality time=

> with a sniffer to see if block-acks are working or not, and if BA setup=

> frames are properly encrypted
>=20
> Unfortunately the device with the 8265 is my only Linux client with 5GH=
z
> and convenient sniffing support. Some of the Raspberry Pi boards seem t=
o
> support it with nexmon, but that looks overcomplicated. Maybe I could
> try with my DIR860L, but so far I have not been able to do so. If you
> have the equipment for it, maybe you can give it a try?
>=20
> Other than that, ath10k-ct is extremely stable on all my APs. Something=

> that cannot be said about ath10k. With the right combination of clients=
,
> it was crashing within 1 day of uptime, while still sending beacons,
> thus clients still trying to associate to the 5GHz network. WiFi
> experience with stock ath10k was simply abysmal, almost downright
> unusable. It was suggested that this was due to the use of 802.11w, but=

> disabling 802.11w is not a solution, and in my opinion not even an
> option, especially with WPA3.

The BTHH5A uses the VR9 / VRX200, a Lantiq/Intel MIPS 35Kec BE SoC.

I connected my IPQ4019 to the QCA9880 and have the same results.
IPQ4019 -> QCA9880 ~> 200 MBit/s
QCA9880 -> IPQ4019 ~>  36 MBit/s

I also sniffed the traffic between my iwl8265 and the QCA9880 with the
IPQ4019.

I monitored a iperf3 session where I send 46.6 MBytes in 28 seconds from
the QCA9880 to the iwl8265 with about 40 MBit/s, I captured 44389
packets with the QCA9880 in monitor mode.

19.5% (8651) of the packets are RTS packets send by the QCA9880, 0.1%
(35) of the packets are RTS packets send by other devices.

I do not see the data send by the QCA9880 probably because the iwl8265
is closer.

I haven't seen any differences when deactivating 802.11w or WPA3.

Block Ack are send unencrypted.

The IPQ4019 and the QCA9880 used OpenWrt 19.07-rc2 with ath10k-ct.

Hauke


--xBQB6kxyNNs41afoKIr4rKYIXQlooItQy--

--aIsLRsupwQ7TOpFIh6BtZhT4SsD8sKnTW
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCgAdFiEEyz0/uAcd+JwXmwtD8bdnhZyy68cFAl3pkXEACgkQ8bdnhZyy
68ceqggAwq82hQg8cPbBmGAO0H4kcfOX+ylXE5htKltnbJHppa913bw8sHq2ey0x
0aag3/vtzTRbMjG8poCehFeJZAivXN/QD5w1dK6o9eGBKqn9oX3cDP64RNFPe+T7
EaUeIPIkJtjhUEVE7fb/07xoG3U+fzRmxp+Mbkym6HlrK7aBHhVC/uLj+xU8VwX6
bROs/64M9rNHBSkhr71GNMe40Z6ETtwES49CUS3xL+GiNIKOufct4faxG/1Ws0k7
0nyp+PN4wiZCVugAob7PEAFbTeS6aAbw3PT1FcUwpPkWiJpoXftNYslDbzwt0rsV
TgEsqIxNgqDcj9cT8OjdkoMh1965KQ==
=g6Z9
-----END PGP SIGNATURE-----

--aIsLRsupwQ7TOpFIh6BtZhT4SsD8sKnTW--


--===============4231346549460092439==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============4231346549460092439==--

