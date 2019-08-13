Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5426A8B693
	for <lists+openwrt-devel@lfdr.de>; Tue, 13 Aug 2019 13:25:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dYIxvL+9kmleIV0WSafcB/FXCtko56LCQXt/uA6XONc=; b=VAcUt6cS23S6Nf
	KierlSYsieM2wJqnI504tVsOt5vZq2LJZiO8Wg0HdxVdqIEsPJhRoYtm1Nw+SlMYoew74ONSSCSWm
	pvJZewaTdFpPefuqTYWxxAZ3R5KTxyZYAzJfqmLuHTc8D0DQdZRx6Sy+tPht/kOgLpetzIdNecYYv
	n9XmnHP/MaIN7tgmFVr8BvcXsNSwbpra07p/ftQL6r7mr76Gc3RwuYAYPwJjwJT75cz0O3PdEHnLy
	/UgJuqm9UjH5egprboSK8SmdA7hno2jlyMw0cRz8QVwaMSROxiez/HKKfWyNzsllMSMvqvgENcPdM
	YCYuPLpl5/Dn19Jd13kA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxUvB-00078x-AH; Tue, 13 Aug 2019 11:24:57 +0000
Received: from mx4.wp.pl ([212.77.101.11])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxUv0-00078Z-Le
 for openwrt-devel@lists.openwrt.org; Tue, 13 Aug 2019 11:24:48 +0000
Received: (wp-smtpd smtp.wp.pl 779 invoked from network);
 13 Aug 2019 13:24:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wp.pl; s=1024a;
 t=1565695483; bh=rzafUCseZZ/ffPrdD4d98zwYToBsQMCclITUdvAiLPA=;
 h=From:To:Cc:Subject;
 b=ct4NoszWIswQ0Ot2LpGOPyH7FdZ42qgfrtiYjXEsilgHLSXp7Smhqxr49pl8Dgh9n
 MaS+ZHLA1OKSewgFWcDUyVEC0coKLLZmpTEp4XJ/EeauNvIJhYyOVeuolbY5Ltxejp
 PkXuUhV1ghhE4LQxmJQhSAIGVuEB7Juk1N0y/Wvc=
Received: from 89-79-49-72.dynamic.chello.pl (HELO kosmio.komorska)
 (michal.cieslakiewicz@wp.pl@[89.79.49.72])
 (envelope-sender <michal.cieslakiewicz@wp.pl>)
 by smtp.wp.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <mail@adrianschmutzler.de>; 13 Aug 2019 13:24:43 +0200
Date: Tue, 13 Aug 2019 13:24:38 +0200
From: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>
To: "Adrian Schmutzler" <mail@adrianschmutzler.de>
Message-ID: <20190813132438.4dc09cbf@kosmio.komorska>
In-Reply-To: <00cc01d551c7$8fe0e500$afa2af00$@adrianschmutzler.de>
References: <20190813104658.17f88b71@kosmio.komorska>
 <20190813105247.2116784e@kosmio.komorska>
 <00cc01d551c7$8fe0e500$afa2af00$@adrianschmutzler.de>
X-Mailer: Claws Mail 3.17.1 (GTK+ 2.24.32; x86_64-slackware-linux-gnu)
MIME-Version: 1.0
X-WP-MailID: 7cb3cf7f2a7378613e40487310a9568a
X-WP-AV: skaner antywirusowy Poczty Wirtualnej Polski
X-WP-SPAM: NO 0000000 [YaME]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_042447_219841_516701D0 
X-CRM114-Status: UNSURE (   6.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.77.101.11 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (michal.cieslakiewicz[at]wp.pl)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH v4 4/5] ath79: add support for Netgear
 WNR1000 v2
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

On Tue, 13 Aug 2019 13:09:22 +0200
"Adrian Schmutzler" <mail@adrianschmutzler.de> wrote:

> Hi,
> 
> > +	keys {
> > +		compatible = "gpio-keys-polled";
> > +		poll-interval = <20>;
> > +  
> 
> I'd use "ath9k-keys" here and also in 5/5 ...
> 
> Best
> 
> Adrian

Hi,

Well, I had identical doubts, but now IRQ keys are reality, so it is
indeed a good idea to emphasize that. Scheduled for v5.

Regards
Michal
-----BEGIN PGP SIGNATURE-----

iQIyBAEBCAAdFiEEi7ylFMzTSbpOuOZIHU8//LdGKWsFAl1SnfYACgkQHU8//LdG
KWtMdw/3dNnpRkA00Q8kEgssX8dierTsEHouAb+un4rLbLZa4FmBqmCUpayQIiVX
/qx3qus8XkRKwLXf5qC9qzd5ZB5l68ggSnTStlBpV4QZdAWOYhyB6UP+FVxg38BA
9whvcXBIWcE3GeFp453XcdM8112vk50GMUFNenKSKtaBqW+xVhqkPlPWTHmca6AC
7+FPHiGn4ZNIGsYJP6/SgNrYUweiGsZOiWMRBYGeI6/NGaco4NH7Whs2jEzZzjNK
zKlc7A16r7om5woIjJXg4/3tHfhgj0iO8Jc3Ep4q6jWodmfTOM643BMJc3edTmEU
WYusCH2iKdI0dh6T0qDejZ3eYtiyxYpOD83qosc2rYUbTMRDjlAy2bmRFqi1yGUk
/sJKsUwk3AjeiEFLi2ulsAeaQmy/oDOLjjPoJqVG8QNGmYjcWl8tTM/qELM18Wo4
ABAablEeediNb9OLc0vsw5M0JfC5440/qgDF82K04khGu445GIBSWoht2wcwwFiJ
SqxKTkUjY2zmkBY5M9bwl9Kwf0MGxX+C5cBC1C3i3h8pXNyAyQcwhanqIB2TXd/i
tM7DOMr7iI0jGonxHDRvMs8CiBacS3kfiQlFPQSXfyzorOdb2aGSgpIC8JgRMYnr
7KuzhH6hGNhKiaJHSucYKWsfBKMvdIJxqPkx7VFsKiRLPfPGGA==
=e2NU
-----END PGP SIGNATURE-----
_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
