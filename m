Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46019A5C54
	for <lists+openwrt-devel@lfdr.de>; Mon,  2 Sep 2019 20:42:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=NBo9lpMls24FALn/4/FoD/ItCyCjiXfa7wO+YI902fI=; b=SnMfGWi14hFoUksvOcDT0Fa7t
	fj+6CHJzkKJQfK4uf7QUfzc3+riZRtpvir+ArAM7Kf1HdbDJpsTmYZPAaH9zDtee6mO5MEaGUEWWF
	SenwWXYz0HxHE+YzC5sZHnSMORykGb10tzYlk0jZQfG208/ju9MckG6EepiJbu4/RT/MPp9HF0m13
	xoHJBAyAsMs+vheAF8p5UMlIo6vKQHn3vKppaoi2a87mKmlt4fSxeGCa+B2LKFSco3ljZnaNr1KkY
	TQQuFCJi6xRNS8RDGk5GnQTTQygKJhjKnjYqq1oLa0IcLHCVWL3lziOGKGcxkrsCham+b5Wr+trR9
	WKnKJcuQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4rHT-0006MN-18; Mon, 02 Sep 2019 18:42:23 +0000
Received: from mx2.mailbox.org ([80.241.60.215])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4rHJ-0006Lh-VR
 for openwrt-devel@lists.openwrt.org; Mon, 02 Sep 2019 18:42:16 +0000
Received: from smtp1.mailbox.org (smtp1.mailbox.org
 [IPv6:2001:67c:2050:105:465:1:1:0])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mx2.mailbox.org (Postfix) with ESMTPS id 9818AA12D1;
 Mon,  2 Sep 2019 20:42:03 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp1.mailbox.org ([80.241.60.240])
 by gerste.heinlein-support.de (gerste.heinlein-support.de [91.198.250.173])
 (amavisd-new, port 10030)
 with ESMTP id KsPIDTdIiP5Z; Mon,  2 Sep 2019 20:41:56 +0200 (CEST)
To: Enrico Mioso <mrkiko.rs@gmail.com>, openwrt-devel@lists.openwrt.org
References: <alpine.LNX.2.21.99999.352.1909020530360.2689@localhost.localdomain>
From: Hauke Mehrtens <hauke@hauke-m.de>
Openpgp: preference=signencrypt
Autocrypt: addr=hauke@hauke-m.de; keydata=
 mQINBFtLdKcBEADFOTNUys8TnhpEdE5e1wO1vC+a62dPtuZgxYG83+9iVpsAyaSrCGGz5tmu
 BgkEMZVK9YogfMyVHFEcy0RqfO7gIYBYvFp0z32btJhjkjBm9hZ6eonjFnG9XmqDKg/aZI+u
 d9KGUh0DeaHT9FY96qdUsxIsdCodowf1eTNTJn+hdCudjLWjDf9FlBV0XKTN+ETY3pbPL2yi
 h8Uem7tC3pmU7oN7Z0OpKev5E2hLhhx+Lpcro4ikeclxdAg7g3XZWQLqfvKsjiOJsCWNXpy7
 hhru9PQE8oNFgSNzzx2tMouhmXIlzEX4xFnJghprn+8EA/sCaczhdna+LVjICHxTO36ytOv7
 L3q6xDxIkdF6vyeEtVm1OfRzfGSgKdrvxc+FRJjp3TIRPFqvYUADDPh5Az7xa1LRy3YcvKYx
 psDDKpJ8nCxNaYs6hqTbz4loHpv1hQLrPXFVpoFUApfvH/q7bb+eXVjRW1m2Ahvp7QipLEAK
 GbiV7uvALuIjnlVtfBZSxI+Xg7SBETxgK1YHxV7PhlzMdTIKY9GL0Rtl6CMir/zMFJkxTMeO
 1P8wzt+WOvpxF9TixOhUtmfv0X7ay93HWOdddAzov7eCKp4Ju1ZQj8QqROqsc/Ba87OH8cnG
 /QX9pHXpO9efHcZYIIwx1nquXnXyjJ/sMdS7jGiEOfGlp6N9IwARAQABtCFIYXVrZSBNZWhy
 dGVucyA8aGF1a2VAaGF1a2UtbS5kZT6JAlQEEwEIAD4CGwEFCwkIBwIGFQgJCgsCBBYCAwEC
 HgECF4AWIQS4+/Pwq1ZO6E9/sdOT3SBjCRC1FQUCXQTYzQUJA5qXpgAKCRCT3SBjCRC1FT6c
 D/9gD0CtAPElKwhNGzZ/KNQL39+Q4GOXDAOxyP797gegyykvaqU/p0MOKdx8F2DHJCGlrkBW
 qiEtYUARnUJOgftoTLalidwEp6eiZM9Eqin5rRR6B5NIYUIjHApxjPHSmfws5pnaBdI6NV8t
 5RpOTANIlBfP6bTBEpVGbC0BwvBFadGovcKLrnANZ4vL56zg0ykRogtD8reoNvJrNDK7XCrC
 2S0EYcGD5cXueJbpf6JRcusInYjMm/g2sRCH4cQs/VOjj3C66sNEMvvZdKExZgh/9l9RmW0X
 6y7A0SDtR3APYWGIwV0bhTS2usuOAAZQvFhc+idSG0YrHqRiOTnWxOnXkFFaOdmfk99eWaqp
 XOIgxHr6WpVromVI+wKWVNEXumLdbEAvy1vxCtpaGQpun5mRces5GB2lkZzRjm90uS9PgWB1
 IYj1ehReuj0jmkpan0XdEhwFjQ3+KfyzX7Ygt0gbzviGbtSB2s1Mh0nAdto9RdIYi3gCLQh3
 abtwk6zqsHRBp1IHjyNq60nsUSte4o1+mRBoB6I7uTkxqJPmynwpmAoaYkN2MRO8C1O09Yd4
 H3AgFGZBXpoVbph8Q7hE33Y9UrElfiDsvdj4+JVu1sdPPGFWtpjpe5LeoXzLANAbJ2T+Y68U
 gtsNFCbSKjXsRJlLIHR1yHQbq2VdUDmsUZaRbLkBDQRbS3sDAQgA4DtYzB73BUYxMaU2gbFT
 rPwXuDba+NgLpaF80PPXJXacdYoKklVyD23vTk5vw1AvMYe32Y16qgLkmr8+bS9KlLmpgNn5
 rMWzOqKr/N+m2DG7emWAg3kVjRRkJENs1aQZoUIFJFBxlVZ2OuUSYHvWujej11CLFkxQo9Ef
 a35QAEeizEGtjhjEd4OUT5iPuxxr5yQ/7IB98oTT17UBs62bDIyiG8Dhus+tG8JZAvPvh9pM
 MAgcWf+Bsu4A00r+Xyojq06pnBMa748elV1Bo48Bg0pEVncFyQ9YSEiLtdgwnq6W8E00kATG
 VpN1fafvxGRLVPfQbfrKTiTkC210L7nv2wARAQABiQI8BBgBCAAmAhsMFiEEuPvz8KtWTuhP
 f7HTk90gYwkQtRUFAl0E2QUFCQOakYIACgkQk90gYwkQtRUEfQ//SxFjktcASBIl8TZO9a5C
 cCKtwO3EvyS667D6S1bg3dFonqILXoMGJLM0z4kQa6VsVhtw2JGOIwbMnDeHtxuxLkxYvcPP
 6+GwQMkQmOsU0g8iT7EldKvjlW2ESaIVQFKAmXS8re36eQqj73Ap5lzbsZ6thw1gK9ZcMr1F
 t1Eigw02ckkY+BFetR5XGO4GaSBhRBYY7y4Xy0WuZCenY7Ev58tZr72DZJVd1Gi4YjavmCUH
 BaTv9lLPBS84C3fObxy5OvNFmKRg1NARMLqjoQeqLBwBFOUPcL9xr0//Yv5+p1SLDoEyVBhS
 0M9KSM0n9RcOiCeHVwadsmfo8sFXnfDy6tWSpGi0rUPzh9xSh5bU7htRKsGNCv1N4mUmpKro
 PLKjUsfHqytT4VGwdTDFS5E+2/ls2xi4Nj23MRh6vvocIxotJ6uNHX1kYu+1iOvsIjty700P
 3IveQoXxjQ0dfvq3Ud/Sl/5bUelft21g4Qwqp+cJGy34fSWD4PzOCEe6UgmZeKzd/w78+tWP
 vzrTXNLatbb2OpYV8gpoaeNcLlO2DHg3tRbe/3nHoU8//OciZ0Aqjs97Wq0ZaC6Cdq82QNw1
 dZixSEWAcwBw0ej3Ujdh7TUAl6tx5AcVxEAmzkgDEuoJBI4vyA1eSgMwdqpdFJW2V9Lbgjg5
 2H6vOq/ZDai29hi5AQ0EW0t7cQEIAOZqnCTnoFeTFoJU2mHdEMAhsfh7X4wTPFRy48O70y4P
 FDgingwETq8njvABMDGjN++00F8cZ45HNNB5eUKDcW9bBmxrtCK+F0yPu5fy+0M4Ntow3PyH
 MNItOWIKd//EazOKiuHarhc6f1OgErMShe/9rTmlToqxwVmfnHi1aK6wvVbTiNgGyt+2FgA6
 BQIoChkPGNQ6pgV5QlCEWvxbeyiobOSAx1dirsfogJwcTvsCU/QaTufAI9QO8dne6SKsp5z5
 8yigWPwDnOF/LvQ26eDrYHjnk7kVuBVIWjKlpiAQ00hfLU7vwQH0oncfB5HT/fL1b2461hmw
 XxeV+jEzQkkAEQEAAYkDcgQYAQgAJgIbAhYhBLj78/CrVk7oT3+x05PdIGMJELUVBQJdBNkF
 BQkDmpEUAUDAdCAEGQEIAB0WIQTLPT+4Bx34nBebC0Pxt2eFnLLrxwUCW0t7cQAKCRDxt2eF
 nLLrx3VaB/wNpvH28qjW6xuAMeXgtnOsmF9GbYjf4nkVNugsmwV7yOlE1x/p4YmkYt5bez/C
 pZ3xxiwu1vMlrXOejPcTA+EdogebBfDhOBib41W7YKb12DZos1CPyFo184+Egaqvm6e+GeXC
 tsb5iOXR6vawB0HnNeUjHyEiMeh8wkihbjIHv1Ph5mx4XKvAD454jqklOBDV1peU6mHbpka6
 UzL76m+Ig/8Bvns8nzX8NNI9ZeqYR7vactbmNYpd4dtMxof0pU13EkIiXxlmCrjM3aayemWI
 n4Sg1WAY6AqJFyR4aWRa1x7NDQivnIFoAGRVVkJLJ1h8RNIntOsXBjXBDDIIVwvvCRCT3SBj
 CRC1FZFcD/9fJY57XXQBDU9IoqTxXvr6T0XjPg7anYNTCyw3aXCW/MrHAV2/MAK9W2xbXWmM
 yvhidzdGHg80V3eJuc4XvQtrvK3HjDxh7ZpF9jUVQ39jKNYRg2lHg61gxYN3xc/J73Dw8kun
 esvZS2fHHzG1Hrj2oWv3xUbh+vvR1Kyapd5he8R07r3vmG7iCQojNYBrfVD3ZgenEmbGs9fM
 1h+n1O+YhWOgxPXWyfIMIf7WTOeY0in4CDq2ygJfWaSn6Fgd4F/UVZjRGX0JTR/TwE5S2yyr
 1Q/8vUqUO8whgCdummpC85ITZvgI8IOWMykP+HZSoqUKybsFlrX7q93ykkWNZKck7U7GFe/x
 CiaxvxyPg7vAuMLDOykqNZ1wJYzoQka1kJi6RmBFpDQUg7+/PS6lCFoEppWp7eUSSNPm8VFb
 jwa1D3MgS3+VSKOMmFWGRCY99bWnl2Zd2jfdETmBFNXA94mg2N2vI/THju79u1dR9gzpjH7R
 3jmPvpEc2WCU5uJfaVoAEqh9kI2D7NlQCG80UkXDHGmcoHBnsiEZGjzm5zYOYinjTUeoy3F0
 8aTZ+e/sj+r4VTOUB/b0jy+JPnxn23FktGIYnQ+lLsAkmcbcDwCop4V59weR2eqwBqedNRUX
 5OTP93lUIhrRIy3cZT/A5nNcUeCYRS8bCRFKrQKEn92RFg==
Message-ID: <127c76e3-441e-816e-7168-fb1942e23484@hauke-m.de>
Date: Mon, 2 Sep 2019 20:41:29 +0200
MIME-Version: 1.0
In-Reply-To: <alpine.LNX.2.21.99999.352.1909020530360.2689@localhost.localdomain>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_114214_323843_86C1B8A7 
X-CRM114-Status: GOOD (  25.18  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [80.241.60.215 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [lantiq] general help on AR10 platform
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
Content-Type: multipart/mixed; boundary="===============2636821606008511859=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============2636821606008511859==
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="KxCxfRIqt82suDUH19DYRthxGuI2vALwS"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--KxCxfRIqt82suDUH19DYRthxGuI2vALwS
Content-Type: multipart/mixed; boundary="CWFG5f6AahDAvG7r0TfuvuAy8oErCGQLU";
 protected-headers="v1"
From: Hauke Mehrtens <hauke@hauke-m.de>
To: Enrico Mioso <mrkiko.rs@gmail.com>, openwrt-devel@lists.openwrt.org
Message-ID: <127c76e3-441e-816e-7168-fb1942e23484@hauke-m.de>
Subject: Re: [OpenWrt-Devel] [lantiq] general help on AR10 platform
References: <alpine.LNX.2.21.99999.352.1909020530360.2689@localhost.localdomain>
In-Reply-To: <alpine.LNX.2.21.99999.352.1909020530360.2689@localhost.localdomain>

--CWFG5f6AahDAvG7r0TfuvuAy8oErCGQLU
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

On 9/2/19 5:38 AM, Enrico Mioso wrote:
> Hello guys,
> Hello Hauke,
>=20
> Sorry for the amount of mails.

Did you had a look at this vendor device tree file:
https://gitlab.com/gplmirror/telekom-speedport-w925v/blob/master/w925_1.5=
=2E001.7_opensource/extern/lantiq-bsp/ugw711-grx550/UGW-7.1.1-SW-CD/Sourc=
es/UGW-7.1.1/ugw/target/linux/lantiq/dts/xRX330.dtsi

The arch code is added by these patches on top of kernel 3.10.X:
https://gitlab.com/gplmirror/telekom-speedport-w925v/tree/master/w925_1.5=
=2E001.7_opensource/extern/lantiq-bsp/ugw711-grx550/UGW-7.1.1-SW-CD/Sourc=
es/UGW-7.1.1/ugw/target/linux/lantiq/patches-3.10

The AR10 is probably partly working wih these kernel patches.

> So in I patched the kernel to be more specific on PMU error messages,
> since it seems something is fundamentally wrong here:
> the system panics like
>=20
> [=C2=A0=C2=A0=C2=A0 0.000000] SoC: xRX300 rev 1.2
> [=C2=A0=C2=A0=C2=A0 0.000000] bootconsole [early0] enabled

Do you use the compatible string lantiq,ar10 for the device?

> [=C2=A0=C2=A0=C2=A0 0.000000] CPU0 revision is: 00019556 (MIPS 34Kc)
> [=C2=A0=C2=A0=C2=A0 0.000000] MIPS: machine is AVM FRITZ!Box 3272
> [=C2=A0=C2=A0=C2=A0 0.000000] Determined physical RAM map:
> [=C2=A0=C2=A0=C2=A0 0.000000]=C2=A0 memory: 08000000 @ 00000000 (usable=
)
> [=C2=A0=C2=A0=C2=A0 0.000000] Initrd not found or empty - disabling ini=
trd
> [=C2=A0=C2=A0=C2=A0 0.000000] Detected 1 available secondary CPU(s)
> [=C2=A0=C2=A0=C2=A0 0.000000] Primary instruction cache 32kB, VIPT, 4-w=
ay, linesize 32
> bytes.
> [=C2=A0=C2=A0=C2=A0 0.000000] Primary data cache 32kB, 4-way, VIPT, cac=
he aliases,
> linesize 32 bytes
> [=C2=A0=C2=A0=C2=A0 0.000000] Zone ranges:
> [=C2=A0=C2=A0=C2=A0 0.000000]=C2=A0=C2=A0 Normal=C2=A0=C2=A0 [mem 0x000=
0000000000000-0x0000000007ffffff]
> [=C2=A0=C2=A0=C2=A0 0.000000] Movable zone start for each node
> [=C2=A0=C2=A0=C2=A0 0.000000] Early memory node ranges
> [=C2=A0=C2=A0=C2=A0 0.000000]=C2=A0=C2=A0 node=C2=A0=C2=A0 0: [mem 0x00=
00000000000000-0x0000000007ffffff]
> [=C2=A0=C2=A0=C2=A0 0.000000] Initmem setup node 0 [mem
> 0x0000000000000000-0x0000000007ffffff]
> [=C2=A0=C2=A0=C2=A0 0.000000] random: get_random_bytes called from
> start_kernel+0x98/0x4dc with crng_init=3D0
> [=C2=A0=C2=A0=C2=A0 0.000000] percpu: Embedded 14 pages/cpu s26256 r819=
2 d22896 u57344
> [=C2=A0=C2=A0=C2=A0 0.000000] Built 1 zonelists, mobility grouping on.=C2=
=A0 Total pages: 32480
> [=C2=A0=C2=A0=C2=A0 0.000000] Kernel command line: [=C2=A0=C2=A0=C2=A0 =
0.000000] Dentry cache hash
> table entries: 16384 (order: 4, 65536 bytes)
> [=C2=A0=C2=A0=C2=A0 0.000000] Inode-cache hash table entries: 8192 (ord=
er: 3, 32768 bytes)
> [=C2=A0=C2=A0=C2=A0 0.000000] Writing ErrCtl register=3D00050000
> [=C2=A0=C2=A0=C2=A0 0.000000] Readback ErrCtl register=3D00050000
> [=C2=A0=C2=A0=C2=A0 0.000000] Memory: 119048K/131072K available (5210K =
kernel code,
> 241K rwdata, 1524K rodata, 3376K init, 232K bss, 12024K reserved, 0K
> cma-reserved)
> [=C2=A0=C2=A0=C2=A0 0.000000] SLUB: HWalign=3D32, Order=3D0-3, MinObjec=
ts=3D0, CPUs=3D2, Nodes=3D1
> [=C2=A0=C2=A0=C2=A0 0.000000] rcu: Hierarchical RCU implementation.
> [=C2=A0=C2=A0=C2=A0 0.000000] NR_IRQS: 256
> [=C2=A0=C2=A0=C2=A0 0.000000] deactivating PMU module 0 (clock gate) fa=
iled!
> [=C2=A0=C2=A0=C2=A0 0.000000] deactivating PMU module 0 (clock gate) fa=
iled!
> [=C2=A0=C2=A0=C2=A0 0.000000] deactivating PMU module 0 (clock gate) fa=
iled!
> [=C2=A0=C2=A0=C2=A0 0.000000] deactivating PMU module 0 (clock gate) fa=
iled!
> [=C2=A0=C2=A0=C2=A0 0.000000] deactivating PMU module 0 (clock gate) fa=
iled!
> [=C2=A0=C2=A0=C2=A0 0.000000] deactivating PMU module 0 (clock gate) fa=
iled!

Did you add the PUM like this:

		pmu0: pmu@102000 {
			compatible =3D "lantiq,pmu-xway";
			reg =3D <0x102000 0x1000>;
		};

Please share your device tree and the other changes you did.

> [=C2=A0=C2=A0=C2=A0 0.000000] CPU Clock: 333MHz
> [=C2=A0=C2=A0=C2=A0 0.000000] clocksource: MIPS: mask: 0xffffffff max_c=
ycles:
> 0xffffffff, max_idle_ns: 11467562725 ns
> [=C2=A0=C2=A0=C2=A0 0.000018] sched_clock: 32 bits at 166MHz, resolutio=
n 6ns, wraps
> every 12884901885ns
> [=C2=A0=C2=A0=C2=A0 0.012011] Calibrating delay loop... 221.18 BogoMIPS=
 (lpj=3D442368)
> [=C2=A0=C2=A0=C2=A0 0.061193] pid_max: default: 32768 minimum: 301
> [=C2=A0=C2=A0=C2=A0 0.068648] Mount-cache hash table entries: 1024 (ord=
er: 0, 4096 bytes)
> [=C2=A0=C2=A0=C2=A0 0.078418] Mountpoint-cache hash table entries: 1024=
 (order: 0, 4096
> bytes)
> [=C2=A0=C2=A0=C2=A0 0.094717] rcu: Hierarchical SRCU implementation.
> [=C2=A0=C2=A0=C2=A0 0.107625] smp: Bringing up secondary CPUs ...
> [=C2=A0=C2=A0=C2=A0 0.116227] Primary instruction cache 32kB, VIPT, 4-w=
ay, linesize 32
> bytes.
> [=C2=A0=C2=A0=C2=A0 0.116249] Primary data cache 32kB, 4-way, VIPT, cac=
he aliases,
> linesize 32 bytes
> [=C2=A0=C2=A0=C2=A0 0.116461] CPU1 revision is: 00019556 (MIPS 34Kc)
> [=C2=A0=C2=A0=C2=A0 0.154663] Synchronize counters for CPU 1: done.
> [=C2=A0=C2=A0=C2=A0 0.191216] smp: Brought up 1 node, 2 CPUs
> [=C2=A0=C2=A0=C2=A0 0.202371] clocksource: jiffies: mask: 0xffffffff ma=
x_cycles:
> 0xffffffff, max_idle_ns: 7645041785100000 ns
> [=C2=A0=C2=A0=C2=A0 0.216869] futex hash table entries: 512 (order: 2, =
16384 bytes)
> [=C2=A0=C2=A0=C2=A0 0.226527] pinctrl core: initialized pinctrl subsyst=
em
> [=C2=A0=C2=A0=C2=A0 0.237723] NET: Registered protocol family 16
> [=C2=A0=C2=A0=C2=A0 0.265485] dcdc-xrx200 1f106a00.dcdc: Core Voltage :=
 2040 mV
> [=C2=A0=C2=A0=C2=A0 0.284748] pinctrl-xway 1e100b10.pinmux: Init done
> [=C2=A0=C2=A0=C2=A0 0.393384] Kernel panic - not syncing: activating PM=
U module 0
> (clock gate) failed!
> [=C2=A0=C2=A0=C2=A0 0.404809] Rebooting in 1 seconds..
> [=C2=A0=C2=A0=C2=A0 2.865738] Reboot failed -- System halted
>=20
> Secondly, I am encountering some issues in
> int __init lq_gptu_init(void)
> ... infact vendor firmware is not using
> as I get a data abort at line 798 which reads:
> timer_dev.number_of_timers =3D GPTU_ID_CFG * 2;
>=20
> and looking at the vendor firmware, they do something like
> timer_dev.number_of_timers =3D 3 * 2;
>=20
> Where may I check for wrong things?
> Thanks!!
>=20
> Enrico
>=20
> From 23bc8dd1d48bf7588f3aca1bf90c3999c0d05bcd Mon Sep 17 00:00:00 2001
> From: Enrico Mioso <mrkiko.rs@gmail.com>
> Date: Mon, 2 Sep 2019 05:04:19 +0200
> Subject: [PATCH] lantiq: XWAY: report PMU module for which
> =C2=A0activation/deactivation failed
>=20
> Helps in diagnosing issues when porting new devices.
>=20
> Signed-off-by: Enrico Mioso <mrkiko.rs@gmail.com>
> ---
> =C2=A0arch/mips/lantiq/xway/sysctrl.c | 8 ++++----
> =C2=A01 file changed, 4 insertions(+), 4 deletions(-)
>=20
> diff --git a/arch/mips/lantiq/xway/sysctrl.c
> b/arch/mips/lantiq/xway/sysctrl.c
> index c7f6dee..b30fdcc 100644
> --- a/arch/mips/lantiq/xway/sysctrl.c
> +++ b/arch/mips/lantiq/xway/sysctrl.c
> @@ -165,7 +165,7 @@ void ltq_pmu_enable(unsigned int module)
> =C2=A0=C2=A0=C2=A0=C2=A0 spin_unlock(&g_pmu_lock);
>=20
> =C2=A0=C2=A0=C2=A0=C2=A0 if (!retry)
> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 panic("activating PMU modul=
e failed!");
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 panic("activating PMU modul=
e %u failed!",module);
> =C2=A0}
> =C2=A0EXPORT_SYMBOL(ltq_pmu_enable);
>=20
> @@ -180,7 +180,7 @@ void ltq_pmu_disable(unsigned int module)
> =C2=A0=C2=A0=C2=A0=C2=A0 spin_unlock(&g_pmu_lock);
>=20
> =C2=A0=C2=A0=C2=A0=C2=A0 if (!retry)
> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 pr_warn("deactivating PMU m=
odule failed!");
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 pr_warn("deactivating PMU m=
odule %u failed!",module);
> =C2=A0}
> =C2=A0EXPORT_SYMBOL(ltq_pmu_disable);
>=20
> @@ -218,7 +218,7 @@ static int pmu_enable(struct clk *clk)
> =C2=A0=C2=A0=C2=A0=C2=A0 }
>=20
> =C2=A0=C2=A0=C2=A0=C2=A0 if (!retry)
> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 panic("activating PMU modul=
e failed!");
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 panic("activating PMU modul=
e %u (clock gate)
> failed!",clk->module);
>=20
> =C2=A0=C2=A0=C2=A0=C2=A0 return 0;
> =C2=A0}
> @@ -243,7 +243,7 @@ static void pmu_disable(struct clk *clk)
> =C2=A0=C2=A0=C2=A0=C2=A0 }
>=20
> =C2=A0=C2=A0=C2=A0=C2=A0 if (!retry)
> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 pr_warn("deactivating PMU m=
odule failed!");
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 pr_warn("deactivating PMU m=
odule %u (clock gate)
> failed!",clk->module);
> =C2=A0}
>=20
> =C2=A0static void usb_set_clock(void)



--CWFG5f6AahDAvG7r0TfuvuAy8oErCGQLU--

--KxCxfRIqt82suDUH19DYRthxGuI2vALwS
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCgAdFiEEyz0/uAcd+JwXmwtD8bdnhZyy68cFAl1tYm0ACgkQ8bdnhZyy
68eAbQgA4rksgq9ei8Gr81pOz6ZHOUiUazAvOVdVUdSBGMiu4xPMI7piNK0+KG4a
GJoxUTKWShAV19eUahamyexcjDLfPZZKhsMm9C8ENUZTgaRMROUV61Qlv8hTPfhg
tIYLKge4SIJr2m4gOoedRH7gyEjEfK0ZIjIESbM/veyC+434Bz6AdxD1U0xROyGN
Y77c4PYR1GIvw2HaAIwtthk6WW5t6umKi0EivUBmD83/Sf/6yCbANBHH3KUBaSmK
eLKLCPdEnQFUh/5p2JoTVnyX35oGEn16O7V7VFQnnhaFYNf5oM8R8Az59+HZh+Bx
JhCMHovmLVZmsRDgL7qFuV9IIS2uCw==
=Pnn/
-----END PGP SIGNATURE-----

--KxCxfRIqt82suDUH19DYRthxGuI2vALwS--


--===============2636821606008511859==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============2636821606008511859==--

