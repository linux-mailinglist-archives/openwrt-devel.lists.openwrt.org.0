Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E3D11E1253
	for <lists+openwrt-devel@lfdr.de>; Mon, 25 May 2020 18:05:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:References:In-Reply-To:Message-ID:Date:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=0uuq6a4m/U4dRStOHeS5fq5c1k833QeEo2IJGQ2NVnY=; b=R+tvoRk59K2teV49KpXIH8K9/
	ezhz6vi2EQTsuTP85wuZ/hSmUM9tqz2e1PckYdSgFHnQqWNn3WU6zSpQRKaCjjWu1yWLUy7UZ82Bn
	ab//g3bbi2feMLTDgQetFwwk2un/5PecvL74sdxt/w0a6jDCFuDUvSWZKJdWNTC+8h7Rj7Qu02PkR
	JTXZ9U4J/+FPt7aPoUiklwGDT2zbnI71e5Bh519SDfDGt4GmU0IwaWk0cSDsDl5BYjxNRfwhZbWtx
	hVLXmxN3HpDw/OHUBvbF/2ZxiHgDWGOJOSqEOR7obwDQWjzXIMkrZeITw+iub0RD/cmMy+Pr6tx7c
	M2Cg0IUTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdFbR-0004Hr-P9; Mon, 25 May 2020 16:05:25 +0000
Received: from dvalin.narfation.org ([2a00:17d8:100::8b1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdFbB-0002WX-OO
 for openwrt-devel@lists.openwrt.org; Mon, 25 May 2020 16:05:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
 s=20121; t=1590422704;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=WSknnTEelKDGTuse5nRhrnX6VQ35I6QBIT1ENiOtNh8=;
 b=1TXsAliuxu9Aka01DX7EZlS6dgwHJPJqkUr6tn2n4+wO7/kS71fP+jOkUiuyQvVuv28aXT
 7CVABCeM92HCHZwvWJmV+55CaUBAVzBt1rrLdhNn7PwxOYY5yJtm0EOfMqK8WwXrwFMcoV
 nKM61v/6SfjaM3xljjE9v18fGnF5sik=
From: Sven Eckelmann <sven@narfation.org>
To: Sebastian Gottschall <s.gottschall@dd-wrt.com>
Date: Mon, 25 May 2020 18:04:49 +0200
Message-ID: <3445075.COMLMNsY4U@bentobox>
In-Reply-To: <3608947.bSrYYtX6KI@bentobox>
References: <1523027875-5143-1-git-send-email-kvalo@codeaurora.org>
 <b23e65cf-4be7-72db-7955-32eae196953e@dd-wrt.com>
 <3608947.bSrYYtX6KI@bentobox>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_090509_963658_93F191E3 
X-CRM114-Status: UNSURE (   7.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a00:17d8:100:0:0:0:0:8b1 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH v13] ath10k: add LED and GPIO
 controlling support for various chipsets
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
Cc: linux-wireless@vger.kernel.org, ath10k@lists.infradead.org,
 John Crispin <john@phrozen.org>,
 Sebastian Gottschall <s.gottschall@newmedia-net.de>,
 openwrt-devel@lists.openwrt.org, Ansuel Smith <ansuelsmth@gmail.com>,
 Kalle Valo <kvalo@codeaurora.org>
Content-Type: multipart/mixed; boundary="===============7993091952289291842=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============7993091952289291842==
Content-Type: multipart/signed; boundary="nextPart3096809.FUlXiXFBBX"; micalg="pgp-sha512"; protocol="application/pgp-signature"

--nextPart3096809.FUlXiXFBBX
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Monday, 25 May 2020 11:22:13 CEST Sven Eckelmann wrote:
[...]
> And it still can with this OpenWrt version. But it doesn't seem to happen with 
> the most recent OpenWrt reboot-13353-gb1604b744b. But there are nearly 4000 
> commits inbetween. So no idea what changed (just a timing thing or an actual 
> fix - no idea).

Seems like there is a fix which solves some lost interrupt problems for 
IPQ40xx. Without this change, I see the reported problem. And with the patch, 
it is gone. Or in commits:

* creates timeout problems: 46b949a067e5 ("ipq40xx: enlarge PCIe BAR size")
* works fine: 18e942b6c4e5 ("ipq40xx: fix pcie msi IRQ trigger level")

If you look in the git logs [1], you can see that the working commit is a 
child of the broken one. So at least from my point of view, my initial report 
is no blocker anymore for Sebastian's patch (or Kalle's version of it).

Btw. OpenWrt is automatically assigning a trigger (phy*tpt) for these LEDs.

Kind regards,
	Sven

[1] https://git.openwrt.org/?p=openwrt/openwrt.git;a=log;h=18e942b6c4e51a5a717a121697a63f3f98d93b19
--nextPart3096809.FUlXiXFBBX
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAl7L7KEACgkQXYcKB8Em
e0YDExAAvLYXS4zpbkE17T7xWf7LcteEbclolX0FYft3zOSe7xE0wjqT2N9n6yhk
F9WF/jJdWnGgxDHOqGUSbK3OYBGTzO5f4ZTRwIa1ag0gQtdqwshPPrkjU3L/0+DN
kCyNZ5qfvgAlwzEo8sfvNiorKi6GexqEDgy5AUDZYVmSIJ3kFtiM4Llovn/ouPj9
AEg/JwopaB/ZkhVTyzTtiRz4dJbMSEcWPn6f47SK2NMY4+GJLkg4bUJdSZ1NVmVT
W0VzRUdX3zYIx+HAdmtoTj2OO4PnWcdi4m94eRVnvjgOwaa2DTPx/Y7wH45zJGnP
IQdXGs8GuDHTKoJWtMGGPqmOt4mqc4amdOZb9Dq63c4IMKDrwwwSsGi8HaQQyjJq
ChI2EmDNuKIZ8mIwLxpTv3hAZaol/iCkvVPaLBVJc8wH9rdHO/O1G5CimoZqGu9d
3umD+laVmJvzZe1FzKLRGfa57w2W9BSnqq3WQM7/UQC03NZeQjuPEV7mY0VxyEQi
GNEsm3zU5IWwsQxSkNbSZC+KypHYhZL/sm/ES7ubhZkkMlJeFnOnFxjgavr1lNmq
GCUOFSeiklgfV3Sf2aPwFdxDRusACEaaVujFu4h6qzI+U5Ob66vsam0q+RW1XIpm
t82QMQhLTDK7zfZr9PQvFaFf4B/9vRpg3jxWmRPjDfwTb7b3Cwk=
=Ahpg
-----END PGP SIGNATURE-----

--nextPart3096809.FUlXiXFBBX--





--===============7993091952289291842==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============7993091952289291842==--




