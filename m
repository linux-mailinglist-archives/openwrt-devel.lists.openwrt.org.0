Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7168B80060
	for <lists+openwrt-devel@lfdr.de>; Fri,  2 Aug 2019 20:48:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=+k1w8HmTyc6+hLBNIyGqM7G5MtqkN93vdIaTVHI0gjM=; b=r0S0w4y49AaayF2AFWuFj5Aaoy
	RetguGROnsG3dqV1mZrrGl2eWGdLRGEnH5PAPn4gjifs9HvxqzDugqUTFf0D9TOE7b0P+BHss8EQ0
	/G97S0fntKWVhnNzhJFQDFLJJlBSCsTgwvhcWCSJC/Ik/Z+njYUbZ2dnifjsfJYnh+cBDnPuvMQZs
	Vx0uhirIuPUByVjcpQIRPuTz9JRsMVUQ2gfkL8uJ5IjkcgSl9bf18YK1DOO9c2on19fu5qjGNjheC
	kAfq85Iz2ZM/xW+amdfTlSX32av6oOYVB+UsZbr94VhiR86WxeFJawr/xDmHkY8YCxqw1/uP+M/PY
	XltG+u5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htcao-0002VR-9k; Fri, 02 Aug 2019 18:47:54 +0000
Received: from mx4.wp.pl ([212.77.101.11])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htcad-0002V8-Rj
 for openwrt-devel@lists.openwrt.org; Fri, 02 Aug 2019 18:47:45 +0000
Received: (wp-smtpd smtp.wp.pl 31548 invoked from network);
 2 Aug 2019 20:47:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wp.pl; s=1024a;
 t=1564771659; bh=T7vjrbjyVb9tqjkZCyjupOHM1Gki6/Q0Jz2xEcqmRG8=;
 h=From:To:Subject;
 b=E38ShiYPxGvbiUPLH5XKUThuB1K0Ujb59GxfWQxI3kBNyj7DISWRg7W1FE9n18k6b
 qmyxhR48CWKG2zSe394j+Z81Lkpv7x1dDgCs85/J8OdcaqOYYIg4i4asRJnpChQ0rH
 kNEKiutRQYkOuzJWl5KodVrRz2UW055NjuVWL7CE=
Received: from 89-79-49-72.dynamic.chello.pl (HELO kosmio.komorska)
 (michal.cieslakiewicz@wp.pl@[89.79.49.72])
 (envelope-sender <michal.cieslakiewicz@wp.pl>)
 by smtp.wp.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <openwrt-devel@lists.openwrt.org>; 2 Aug 2019 20:47:39 +0200
Date: Fri, 2 Aug 2019 20:47:01 +0200
From: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>
To: openwrt-devel@lists.openwrt.org
Message-ID: <20190802204701.6967de4d@kosmio.komorska>
In-Reply-To: <20190802144610.1229-1-freifunk@adrianschmutzler.de>
References: <20190802144610.1229-1-freifunk@adrianschmutzler.de>
X-Mailer: Claws Mail 3.17.1 (GTK+ 2.24.32; x86_64-slackware-linux-gnu)
MIME-Version: 1.0
X-WP-MailID: c99e99a7d1acb92f90d42a9a9c374a56
X-WP-AV: skaner antywirusowy Poczty Wirtualnej Polski
X-WP-SPAM: NO 0000000 [wXPk]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_114744_233001_7D8C26AE 
X-CRM114-Status: UNSURE (   9.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.77.101.11 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (michal.cieslakiewicz[at]wp.pl)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: convert devices to
 interrupt-driven gpio-keys
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Fri,  2 Aug 2019 16:46:10 +0200
Adrian Schmutzler <freifunk@adrianschmutzler.de> wrote:

> This converts all remaining devices to use interrupt-driven
> gpio-keys compatible instead of gpio-keys-polled.
> The poll-interval is removed.
> 
> Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
> ---
> [...]
> diff --git a/target/linux/ath79/dts/ar7240_netgear_wnr612-v2.dtsi
> b/target/linux/ath79/dts/ar7240_netgear_wnr612-v2.dtsi index
> 8e934429a3..7b5f0ca70b 100644 ---
> a/target/linux/ath79/dts/ar7240_netgear_wnr612-v2.dtsi +++
> b/target/linux/ath79/dts/ar7240_netgear_wnr612-v2.dtsi @@ -15,8 +15,7
> @@ };
>  
>  	keys {
> -		compatible = "gpio-keys-polled";
> -		poll-interval = <20>;
> +		compatible = "gpio-keys";
>  
>  		reset {
>  			label = "reset";
> [...]

Hello all,

Please clarify the scope of above change - AFAIK there is no GPIO IRQ
for wireless chips (or please correct me if I am utterly wrong), hence
ath9k-connected buttons will not work with this setting.

I've built an ath79 image for Netgear WNR612v2 with this patch applied
and indeed, at startup it gives an error:

gpio-keys keys: failed to get irq for gpio:507

which points to reset button wired to ar9285 at pin 7. As expected
with this sort of problem, reset button does not trigger any action at
all.

Currently I'm porting some older WNR* routers to DTS and ath79, most of
them have all or at least some buttons wired to wireless chip, so I
would like to see your opinion on following:

0. Buttons for ath9k-phy GPIOs should remain polled.
1. If above is true and we want to use mixed (irq/polled) configuration,
maybe it is advisable to split DTS definitions into 'keys' and
'ath9k-keys', identical to LEDs setup.
2. Or alternatively, because we need to poll ath9k GPIO pins
anyway, we keep all buttons in polled section.

Cheers
Micu

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
