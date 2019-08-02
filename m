Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD6687FBE6
	for <lists+openwrt-devel@lfdr.de>; Fri,  2 Aug 2019 16:18:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=DvLhisrm+SQjhWqwbIrd6CncKLnJZQcQSA5hdA1E87Y=; b=MbfIXfJwgZtwOc3pYfM5wyGwn
	Wu6Kc50QfeXFcg/PzBoHy/Ejv3moHjKPXu1oa/iQRsb06Wc69FabgaVpJFLArNtyzQWMh7SvoNayz
	XQwEubqq3dsWHXkVymXgfmK/MB1+IwouOa84JoTVuFbMdGObzmFAr0X2UKjCcfjH/cykqZAAaQhb4
	7zfUn9nGEZgKzpdjJz+t9kYJtZomMS+biYLu6mRA8wqutYlZUzWZvTelEMc+Ls6jVnJQsIR1wLaLe
	+/vmM8xnlhx2YsBKeE8wTB9a5KDsrq4uX9NxNdWfXLQUcUkR0bo/CoMp4zvii9BlPfvlis976Hsal
	t6okQrjAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htYNW-0004x0-1b; Fri, 02 Aug 2019 14:17:54 +0000
Received: from mx2.mailbox.org ([80.241.60.215])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htYNP-0004wc-Ml
 for openwrt-devel@lists.openwrt.org; Fri, 02 Aug 2019 14:17:49 +0000
Received: from smtp2.mailbox.org (smtp2.mailbox.org
 [IPv6:2001:67c:2050:105:465:1:2:0])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mx2.mailbox.org (Postfix) with ESMTPS id ABF1EA0CD7;
 Fri,  2 Aug 2019 16:17:45 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.241])
 by spamfilter06.heinlein-hosting.de (spamfilter06.heinlein-hosting.de
 [80.241.56.125]) (amavisd-new, port 10030)
 with ESMTP id 7x7TWZB6KyMu; Fri,  2 Aug 2019 16:17:44 +0200 (CEST)
To: Koen Vandeputte <koen.vandeputte@ncentric.com>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>
References: <28699ed1-e5c2-c9bf-c611-04ddef9ed254@ncentric.com>
 <4a1a6912-b1db-f392-ed4f-8b75abe95181@ncentric.com>
From: Hauke Mehrtens <hauke@hauke-m.de>
Openpgp: preference=signencrypt
Autocrypt: addr=hauke@hauke-m.de; keydata=
 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
Message-ID: <71a441c8-6221-b7f9-cd51-68309a56595a@hauke-m.de>
Date: Fri, 2 Aug 2019 16:16:57 +0200
MIME-Version: 1.0
In-Reply-To: <4a1a6912-b1db-f392-ed4f-8b75abe95181@ncentric.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_071748_046063_C659137F 
X-CRM114-Status: GOOD (  12.51  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [80.241.60.215 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] atomic sleep bugs - 19.07 (and probably Master
 too)
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
Cc: Felix Fietkau <nbd@nbd.name>
Content-Type: multipart/mixed; boundary="===============8823832162459224920=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============8823832162459224920==
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="Gma4nNFkkIQL3PMJIhQtxy3l6pL7d9Jth"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--Gma4nNFkkIQL3PMJIhQtxy3l6pL7d9Jth
Content-Type: multipart/mixed; boundary="XAqnu2gCEbRuI3fdEekg5Dzry5qW9T1MQ";
 protected-headers="v1"
From: Hauke Mehrtens <hauke@hauke-m.de>
To: Koen Vandeputte <koen.vandeputte@ncentric.com>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Cc: Felix Fietkau <nbd@nbd.name>
Message-ID: <71a441c8-6221-b7f9-cd51-68309a56595a@hauke-m.de>
Subject: Re: [OpenWrt-Devel] atomic sleep bugs - 19.07 (and probably Master
 too)
References: <28699ed1-e5c2-c9bf-c611-04ddef9ed254@ncentric.com>
 <4a1a6912-b1db-f392-ed4f-8b75abe95181@ncentric.com>
In-Reply-To: <4a1a6912-b1db-f392-ed4f-8b75abe95181@ncentric.com>

--XAqnu2gCEbRuI3fdEekg5Dzry5qW9T1MQ
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

On 8/2/19 10:40 AM, Koen Vandeputte wrote:
>=20
> On 01.08.19 17:27, Koen Vandeputte wrote:
>> Hi All,
>>
>> I've been playing around the last few days stresstesting latest 19.07
>> on different targets (ar71xx, cns3xxx, imx6, ...) with extra kernel
>> debug features enabled.
>>
>> I'll post some results here as maybe somebody has a clue. :)
>>
>>
>> Some interesting splats already showed up, actually also *breaking*
>> some functionality while the board is running:
>>
>> on Mikrotik RB2011 (ar71xx)
>>
>>

=2E.....

>=20
> [=C2=A0=C2=A0 13.152502] eth0: link down
> [=C2=A0=C2=A0 13.155063] BUG: sleeping function called from invalid con=
text at
> net/core/dev.c:5563
> [=C2=A0=C2=A0 13.161685] in_atomic(): 1, irqs_disabled(): 1, pid: 456, =
name: ip
> [=C2=A0=C2=A0 13.167848] 2 locks held by ip/456:
> [=C2=A0=C2=A0 13.171315]=C2=A0 #0:=C2=A0 (rtnl_mutex){....}, at: [<8032=
aba4>]
> rtnetlink_rcv_msg+0x2d8/0x380
> [=C2=A0=C2=A0 13.179039]=C2=A0 #1:=C2=A0 (&(&ag->lock)->rlock){....}, a=
t: [<802e3c40>]
> ag71xx_hw_disable+0x24/0x94
> [=C2=A0=C2=A0 13.187385] CPU: 0 PID: 456 Comm: ip Not tainted 4.14.134 =
#0
> [=C2=A0=C2=A0 13.193019] Stack : 805a0000 80547894 8051de14 831c98ec 80=
5f0000
> 805f0000 83918efc 805733a7
> [=C2=A0=C2=A0 13.201348]=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 80517e44 000001c8 805f38bc 831c9ccc 8390d0c0
> 00000001 831c98a0 b0502ae3
> [=C2=A0=C2=A0 13.209681]=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 00000000 00000000 80ae0000 831c979c 6138f004
> 00000000 00000007 00000000
> [=C2=A0=C2=A0 13.218016]=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 00000091 b3400000 00000090 00000000 80000000
> 839c9d8c 839c9db0 00000001
> [=C2=A0=C2=A0 13.226347]=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 80428b7c 831c9ccc 8390d0c0 83b51210 00000003
> 00000000 00000000 805f0000
> [=C2=A0=C2=A0 13.234680]=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 ...
> [=C2=A0=C2=A0 13.237114] Call Trace:
> [=C2=A0=C2=A0 13.239556] [<8006c88c>] show_stack+0x58/0x100
> [=C2=A0=C2=A0 13.244006] [<800aab74>] ___might_sleep+0x100/0x120
> [=C2=A0=C2=A0 13.248853] [<8030fb84>] napi_disable+0x30/0xd8
> [=C2=A0=C2=A0 13.253354] [<802e3c80>] ag71xx_hw_disable+0x64/0x94
> [=C2=A0=C2=A0 13.258304] [<802e3cd4>] ag71xx_stop+0x24/0x38
> [=C2=A0=C2=A0 13.262731] [<8030d580>] __dev_close_many+0xcc/0x104
> [=C2=A0=C2=A0 13.267697] [<803165fc>] __dev_change_flags+0xc8/0x1ac
> [=C2=A0=C2=A0 13.272801] [<80316708>] dev_change_flags+0x28/0x70
> [=C2=A0=C2=A0 13.277662] [<80329fc0>] do_setlink+0x31c/0x91c
> [=C2=A0=C2=A0 13.282178] [<8032ca90>] rtnl_newlink+0x3ec/0x7f8
> [=C2=A0=C2=A0 13.286865] [<8032abc8>] rtnetlink_rcv_msg+0x2fc/0x380
> [=C2=A0=C2=A0 13.292019] [<8034de64>] netlink_rcv_skb+0xd4/0x178
> [=C2=A0=C2=A0 13.296849] [<8034d440>] netlink_unicast+0x168/0x250
> [=C2=A0=C2=A0 13.301797] [<8034da04>] netlink_sendmsg+0x3d8/0x434
> [=C2=A0=C2=A0 13.306753] [<802f2774>] ___sys_sendmsg+0x1dc/0x290
> [=C2=A0=C2=A0 13.311607] [<802f37d0>] __sys_sendmsg+0x54/0x84
> [=C2=A0=C2=A0 13.316225] [<80071eac>] syscall_common+0x34/0x58

There is a bug in ag71xx_hw_disable(), it calls napi_disable() while
holding a spinlock in the same function which is not allowed. I never
looked into ag71xx before, someone should fix this code and make it call
napi_disable() outside of the spinlock.

Hauke


--XAqnu2gCEbRuI3fdEekg5Dzry5qW9T1MQ--

--Gma4nNFkkIQL3PMJIhQtxy3l6pL7d9Jth
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCgAdFiEEyz0/uAcd+JwXmwtD8bdnhZyy68cFAl1ERekACgkQ8bdnhZyy
68dHyQf9EZl9MuLrqbBSFFOOw/0zpO5jikDmlhJEMULqFP6VMCxvFiGNa4xuCDjD
MbXK16mQoZ+yQ+zFg4xMMi5bOKcWiQawDLCHdpRXXul3S3Ek6NZ6S2nq6Rd5EjVC
fTo0KqiyZAbT+2rtiYKH2wnO5iIYN0hanMcc8XH81Sj6k/MJyNKL/ouJQPr30mgd
i6jXTUwlAe71GMP2cGCNg59KBgwnDPSlp+2AOQMSBc6fEX5xZvfC88qsB7OAz6tw
/sFEsl+MgNLeAWl7AqYXLVGLkAlJ5Yr1hfw/MwGQTGffjqa9gSAbdNcu1im+PA/L
aVsAiXD72Xfsu/dSGHZdFF8nhgBzag==
=zPjQ
-----END PGP SIGNATURE-----

--Gma4nNFkkIQL3PMJIhQtxy3l6pL7d9Jth--


--===============8823832162459224920==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============8823832162459224920==--

