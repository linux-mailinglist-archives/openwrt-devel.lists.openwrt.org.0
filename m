Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA6148A685
	for <lists+openwrt-devel@lfdr.de>; Mon, 12 Aug 2019 20:49:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PAOqDD6mTClBX1MydGcCPzVzAGVMp6Jhj86AnrOoOE8=; b=q/qYhkWTUln5uD
	1IplBdEEgqJzvtmb1k8Czrc9ZluKc3Q9p8GJTKWYMr1+AroRa1pv7SUj2mXnl+UrwwGkuCn2g1FCe
	eOe1KHd67mF3NI5dUf60xtM/cLfkTcQGRtRj38am9j3eEPd5FtWs9XK/WYItECspyzaj9fIOFyAlg
	xYV2ufXtD3daIlpsR46nKTAq6h3pQj3HM7xFvibTalXpljodLWpazceU34VIoU/Fyn6NaftcA7cvA
	aPp94dVcC1ZmhtbL093hcf6xQtv8JMp3CV+Mc8bPbjWpWPnXw+2qdege6Mkf4pq4YCmL+fAWR5WYN
	1yIZQ0eevE2ChYZahozg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxFN6-0003JG-40; Mon, 12 Aug 2019 18:48:44 +0000
Received: from mx4.wp.pl ([212.77.101.12])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxFMq-0003Io-S3
 for openwrt-devel@lists.openwrt.org; Mon, 12 Aug 2019 18:48:31 +0000
Received: (wp-smtpd smtp.wp.pl 10694 invoked from network);
 12 Aug 2019 20:48:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wp.pl; s=1024a;
 t=1565635702; bh=G3CiNWbiGi5Esa/OMh7xt+IKftun196PRjOSGdePXAU=;
 h=From:To:Cc:Subject;
 b=ns3qfR0taN7x+4IVOekb7YpoN8SHQPCkWqS+eLLs8n5oIy2LP9TzfRlp3Hxfy+Tyv
 L4ODGxrBxkoO/xRofO8MaEtR97nkXClCe6GXJ7UcfS8IHIsb7ZDgbMhLP6Dnb+t9AP
 ombnlW6eNvlB+hKnE1KXzl12H8GVWo3qAH0KHHro=
Received: from 89-79-49-72.dynamic.chello.pl (HELO kosmio.komorska)
 (michal.cieslakiewicz@wp.pl@[89.79.49.72])
 (envelope-sender <michal.cieslakiewicz@wp.pl>)
 by smtp.wp.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <mail@adrianschmutzler.de>; 12 Aug 2019 20:48:22 +0200
Date: Mon, 12 Aug 2019 20:48:17 +0200
From: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>
To: <mail@adrianschmutzler.de>
Message-ID: <20190812204817.4a479f5b@kosmio.komorska>
In-Reply-To: <00d401d55132$d755d980$86018c80$@adrianschmutzler.de>
References: <20190811223921.572cda5b@kosmio.komorska>
 <20190811224252.3641e63f@kosmio.komorska>
 <000001d55107$bf37e530$3da7af90$@adrianschmutzler.de>
 <20190812162422.139de0d2@kosmio.komorska>
 <00d401d55132$d755d980$86018c80$@adrianschmutzler.de>
X-Mailer: Claws Mail 3.17.1 (GTK+ 2.24.32; x86_64-slackware-linux-gnu)
MIME-Version: 1.0
X-WP-MailID: 31d99dd990644e899963f68b023871fc
X-WP-AV: skaner antywirusowy Poczty Wirtualnej Polski
X-WP-SPAM: NO 0000000 [seME]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_114829_425442_135DBEA8 
X-CRM114-Status: UNSURE (   8.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.77.101.12 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (michal.cieslakiewicz[at]wp.pl)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH v3 2/5] ath79: WNR612v2: improve device
 support
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

On Mon, 12 Aug 2019 19:24:47 +0200
<mail@adrianschmutzler.de> wrote:

> > Hello Adrian, 
> > This 'uboot' label was used only for MAC address extraction from 
> > u-boot partition (kinda strange, I couldn't find a clue why it was 
> > expected there), so I decided to remove it.   
> 
> Just out of curiosity:
> 
> Did you check what's in the relevant uboot locations?
> 
> So, are the addresses there, too (there are known cases of having the
> same addresses multiple times), or are they missing, so you are
> proposing a "fix" here?
> 
> Best
> 
> Adrian 

Before even starting to change anything in *wnr612v2*.dts* I've built
and flashed an openwrt master ath79 image for that router (I own a few).
MAC addresses set by original DT file were definitely bogus. Netgear's
u-boot source also points to 'pre-art' area not u-boot binary. I guess
location was inherited from other 7240-based router but definitely it
does not play well for any WNR model.

Maybe product called On Networks N150 (rebranded WNR612v2) had this
sort of setup... Personally I doubt they (ON) cared to recompile their
own u-boot and OS but I do not have such device to verify that claim.

Cheers
Michal
-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEi7ylFMzTSbpOuOZIHU8//LdGKWsFAl1RtHEACgkQHU8//LdG
KWtkxBAArK1IYjkgCfXSG1B4cE3WH4xshdA88S7jLKOxN8+gIl2J91abNPvxipFe
Dpwn+xC3D7irqguEgW95f8RI8L2GofJljuuBgTxBqCNCReWBDKsjaNv2mDeAeNwI
8uTbnSlRvq2M8Qt9b9as0/sj/0uNZ7TZrvAw8TWT7nIrgwudeejuYB6jnVJxLFGL
ek5LY/ZNSklRiAtZZEHqlLHiVmBLcIsIhZkVnREil10Pt+qX6toc58wMPiiXvvxf
dZJZTiFi7Nctjek+EyEV1WHMDpE+QN+FzgapPFRHzEPoWm930GTREfkbIT9afnxf
v8yqhWFcVvV0ye/dyntot30xpYE9gesqYJDlS8c2SRpov+NPPntAoEXn2UN9U6kw
bixjCTOvcHOyb4s/HJ9tgFJjXQtSLfvki2Bn57FwC2s9olP2EwcPpTR3r1+OmxEW
B95HTk1OH0YWTPhziSPsP4naDiC2XJsNnz7Q3RNd4ayxaDGYjkggzy4AuNj78xc1
YVr0pZU6p2rBjIWB9APmyt22HM9sAiSYZyDeC4g4bvkrHplFymtCkKHemO11Vq7e
JXaEv8vs4LjnE8ZBndUsq5Tezx69TXVo5Tj2DtyP0zTaVZLQ/NSvR8kaVOod9hk/
i/Sh7TcwmIamGme4P13Pb08JvyMhHHljcwzVtrXhZmzrE2JwxsM=
=mtF8
-----END PGP SIGNATURE-----
_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
