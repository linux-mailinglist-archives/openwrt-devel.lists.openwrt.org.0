Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94FCE14E424
	for <lists+openwrt-devel@lfdr.de>; Thu, 30 Jan 2020 21:41:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Subject:
	List-Help:Reply-To:List-Archive:List-Unsubscribe:List-Subscribe:Cc:From:
	List-Post:List-Id:Message-ID:MIME-Version:In-Reply-To:Date:References:To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=f+WkSu/sbZzAQjn1AnLQgB2JBBIaWvhwJpD5UL9U9nI=; b=lSJh2K127qeTxCKMh0hmlHFAz
	Ku2AGxLkeoPbCON3Ju6SvvwF2ukQR3hSMzbjScIPYdsQ0M/TvLlKaDooV1acLDbpyuOrt4wgbTykk
	XII7s9BGjFIrAON8YaUPFlOaNG2rsQlRSixUb42mLqpKv2qB7CHL99YTkY88eZXk5larggZRGu/zL
	ZuSmSNX6dh5K0ysdrq/UmS3CeaCEtXaCRdat17MSZRGxy/c66M0ZZW7QElyUz7ryHHreZH5Scqy6E
	V25nctWUjAwvi56MCgxL5ixIrLsUrFgkJ+B4o/xGbqjVVYXaubYXebRyxciZGQxc3h2otFiaOm6Fx
	fWg6EXiVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixGcW-0001xP-Np; Thu, 30 Jan 2020 20:41:00 +0000
To: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>,
 openwrt-devel@lists.openwrt.org
References: <mailman.27217.1580134584.2486.openwrt-devel@lists.openwrt.org>
 <ed6f8dd3-fe44-62e1-f631-4842ff33d373@ncentric.com>
 <bbbdb47a-a1f1-9dd0-1a53-05ab93f218c2@guifi.net>
 <mailman.27646.1580316070.2486.openwrt-devel@lists.openwrt.org>
 <20200129200716.44ef140a@kosmio.komorska>
Date: Thu, 30 Jan 2020 21:40:43 +0100
In-Reply-To: <20200129200716.44ef140a@kosmio.komorska>
MIME-Version: 1.0
Message-ID: <mailman.27833.1580416855.2486.openwrt-devel@lists.openwrt.org>
List-Id: <openwrt-devel.lists.openwrt.org>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
From: "Roger Pueyo Centelles | Guifi.net via openwrt-devel"
 <openwrt-devel@lists.openwrt.org>
Precedence: list
Cc: Koen Vandeputte <koen.vandeputte@ncentric.com>
X-Mailman-Version: 2.1.29
X-BeenThere: openwrt-devel@lists.openwrt.org
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
Reply-To: "Roger Pueyo Centelles | Guifi.net" <roger.pueyo@guifi.net>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
Subject: Re: [OpenWrt-Devel] ath79: NAND bad eraseblocks in MikroTik
 RouterBOARD 922UAGS-5HPacD
Content-Type: multipart/mixed; boundary="===============9050171898216164863=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============9050171898216164863==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============9050171898216164863==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Received: from smtp1.guifi.net ([109.69.9.53])
	by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixGcO-0001ws-Uj
	for openwrt-devel@lists.openwrt.org; Thu, 30 Jan 2020 20:40:55 +0000
Received: from localhost (localhost.localdomain [127.0.0.1])
	by smtp1.guifi.net (Postfix) with ESMTP id 487sgc3R8Fz3w36;
	Thu, 30 Jan 2020 21:40:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=guifi.net; h=
	content-language:content-transfer-encoding:content-type
	:content-type:in-reply-to:mime-version:user-agent:date:date
	:message-id:from:from:references:subject:subject:received
	:received:received; s=dkim; t=1580416844; x=1582231245; bh=Wa53Z
	Vmm926S5FpQuorA0NTqxmjautIDaYObdvJJXhI=; b=y/0z2qDGgBQaqmq7lt6Sc
	SZsGwlcvQ7I6yXpaXtTOZ9RHCaVwU864zvtmC9MqYubIVHjcV3TfjVCLw+FGD/ba
	EbaKIDNv8+ZepwN0+qoIHu8Blh2lvVKSiTIxIL6YLqBRBQJmTQSc8WJAoth/cg+s
	1w93iGVx3kcnQw1qt5eXxIz7TL0iokOFLYZ30yrYpizgy83jSNpH/mAbMWdQiUvK
	ENqNpZyYulmX/0Cq5WMtXaVT9whdX4l0z5QkQ23gDumP2iSIamH7sK+5ZzdHnR6k
	8ZgbcZreFmRDsAQFIX5efIMQZJ3uVYGzCDfG2b85J3T3WUvwgW1LU602zKuh0OEE
	g==
X-Amavis-Modified: Mail body modified (using disclaimer) - smtp1.guifi.net
X-Virus-Scanned: Scrollout F1 at guifi.net
Received: from smtp1.guifi.net ([127.0.0.1])
	by localhost (smtp1.guifi.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id mJH7_SuJy0aZ; Thu, 30 Jan 2020 21:40:44 +0100 (CET)
Received: from mail.guifi.net (mail.guifi.net [109.69.9.9])
	by smtp1.guifi.net (Postfix) with ESMTP id 487sgc08vcz3w1j;
	Thu, 30 Jan 2020 21:40:43 +0100 (CET)
Received: from [147.83.42.157] (dync-42-157.ac.upc.es [147.83.42.157])
	by mail.guifi.net (Postfix) with ESMTPSA id AE87A6A8F88;
	Thu, 30 Jan 2020 21:40:43 +0100 (CET)
Subject: Re: [OpenWrt-Devel] ath79: NAND bad eraseblocks in MikroTik
 RouterBOARD 922UAGS-5HPacD
To: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>,
 openwrt-devel@lists.openwrt.org
Cc: Koen Vandeputte <koen.vandeputte@ncentric.com>
References: <mailman.27217.1580134584.2486.openwrt-devel@lists.openwrt.org>
 <ed6f8dd3-fe44-62e1-f631-4842ff33d373@ncentric.com>
 <bbbdb47a-a1f1-9dd0-1a53-05ab93f218c2@guifi.net>
 <mailman.27646.1580316070.2486.openwrt-devel@lists.openwrt.org>
 <20200129200716.44ef140a@kosmio.komorska>
From: "Roger Pueyo Centelles | Guifi.net" <roger.pueyo@guifi.net>
Autocrypt: addr=roger.pueyo@guifi.net; prefer-encrypt=mutual; keydata=
 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
Message-ID: <bfed731f-4a06-b3c9-3292-f3a7506ffb63@guifi.net>
Date: Thu, 30 Jan 2020 21:40:43 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200129200716.44ef140a@kosmio.komorska>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200130_124053_570315_74803403 
X-CRM114-Status: UNSURE (   8.17  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [109.69.9.53 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain

Hi Michal,

El 29/1/20 a les 20:07, Michal Cieslakiewicz ha escrit:
> Please try adding 'qca,nand-swap-dma;' to '&nand' section in
> router dts file. This in theory should fix endianness problem.
Yes, that worked! I also had to set nand-ecc-mode =3D "soft";, as two-byt=
e
blocks were still swapped.
> By looking at C file, I have also found that this router uses
> model-specific ath79_nfc_set_scan_fixup() routine - a functionality
> that is not implemented in ath79, because there was no need for such
> quirks, at least not until now.

Could this be related to the fact that the detected chip has 128 MiB,
but it is only usable up to 64 MiB?

[=C2=A0=C2=A0=C2=A0 0.774760] nand: Samsung NAND 128MiB 3,3V 8-bit
[=C2=A0=C2=A0=C2=A0 0.779480] nand: 128 MiB, SLC, erase size: 128 KiB, pa=
ge size: 2048,
OOB size: 64
[=C2=A0=C2=A0=C2=A0 0.787178] Scanning device for bad blocks
[=C2=A0=C2=A0=C2=A0 0.797061] random: fast init done
[=C2=A0=C2=A0=C2=A0 0.927117] 3 fixed-partitions partitions found on MTD =
device ar934x-nand
[=C2=A0=C2=A0=C2=A0 0.934024] Creating 3 MTD partitions on "ar934x-nand":=

[=C2=A0=C2=A0=C2=A0 0.939338] 0x000000000000-0x000000040000 : "booter"
[=C2=A0=C2=A0=C2=A0 0.945095] 0x000000040000-0x000000400000 : "kernel"
[=C2=A0=C2=A0=C2=A0 0.950898] 0x000004000000-0x00000bc00000 : "ubi"
[=C2=A0=C2=A0=C2=A0 0.955673] mtd: partition "ubi" extends beyond the end=
 of device
"ar934x-nand" -- size truncated to 0x4000000

Kind regards,

Roger




--===============9050171898216164863==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============9050171898216164863==--
