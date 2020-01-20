Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9A1B1432C4
	for <lists+openwrt-devel@lfdr.de>; Mon, 20 Jan 2020 21:10:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HcYphKwnSR+0Eoxtt4Fg1vF1u49iNIoB92l9ZRPaNak=; b=owKGPOvwHfCpO7
	kVZtr8I70GZ9wvG3mcDNAKv7P20wD0mm6LT8mXu95Oe0X6h/unmUyDv4PGC8K78ie4HoQc45weYS2
	3PQJCuhY1Dd9BXoFybfVcEnIGb70hfE3CUsmA7jSYnlPztDGnnrrZojgNeby4IDZhvL53y5cbd9D1
	Ai1QBA+tuunYfw4T0g7Tn59GoCb3tqKifOMuaTYyD0JUssqmQWLzrThla/VGtyrTT2GFQcuFa0Y4E
	gsl2jG+Oykj6TOLCuog/BiKYY11Yq//vBAPVDtiwx3FrLI/ew6vZbBlfs4NILDcTlg0xK/BhKFTD4
	7rbCGXRJMlusc9YXclbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itdMy-0001fZ-Iy; Mon, 20 Jan 2020 20:09:56 +0000
Received: from mx4.wp.pl ([212.77.101.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itdMq-0001f8-9s
 for openwrt-devel@lists.openwrt.org; Mon, 20 Jan 2020 20:09:49 +0000
Received: (wp-smtpd smtp.wp.pl 22957 invoked from network);
 20 Jan 2020 21:09:43 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wp.pl; s=1024a;
 t=1579550983; bh=fk2lEdF0EMhjonme8bk/OmnPN+RCxhJDUfMEpzDg4Fs=;
 h=From:To:Cc:Subject;
 b=WMTs7OeUMfsb7+sn+mT1jzDwyeR1mM+kkb59FWaSDxhS2PY7Fm94zMWCrCBjkDnIC
 l0fZV+Sj9vZ4hlqSVQ8S39RUi8oTlz5AujHHveJ410OvZPcCtl4uS9dTt6o5n5XH9n
 /rW2nx98SeBxs9nwjqnyOLvyMPbfLVnT0ItHy/JM=
Received: from 89-79-49-72.dynamic.chello.pl (HELO kosmio.komorska)
 (michal.cieslakiewicz@wp.pl@[89.79.49.72])
 (envelope-sender <michal.cieslakiewicz@wp.pl>)
 by smtp.wp.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <hannu.nyman@iki.fi>; 20 Jan 2020 21:09:43 +0100
Date: Mon, 20 Jan 2020 21:09:41 +0100
From: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>
To: Hannu Nyman <hannu.nyman@iki.fi>
Message-ID: <20200120210941.06875168@kosmio.komorska>
In-Reply-To: <ed20fdff-e7f7-9423-1680-9a2caee7b740@iki.fi>
References: <20200119120816.44406149@kosmio.komorska>
 <ed20fdff-e7f7-9423-1680-9a2caee7b740@iki.fi>
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-slackware-linux-gnu)
MIME-Version: 1.0
X-WP-MailID: c34ddeb62d86193bc8761e84a2f3abf9
X-WP-AV: skaner antywirusowy Poczty Wirtualnej Polski
X-WP-SPAM: NO 0000000 [wbNU]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_120948_519079_B830B34D 
X-CRM114-Status: UNSURE (   9.40  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.77.101.11 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [michal.cieslakiewicz[at]wp.pl]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] [PATCH 0/2] ath79: update device naming for
 Netgear WNDR3700v2
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

> 
> What is the motivation for this?
> 
> The router was originally marketed as "WNDR3700v2" and that is both
> in the packaging and also in the printed label in the router itself.
> The "v2" is not a typical separate version number like many 6.1, 3.21
> type of revisions next to the serial number, but it has been part of
> the device name.
> 

Hello Hannu,

My patch changes the way it is defined in OpenWrt - 'wndr3700v2' is a
sort of naming artifact, all other routers in ath79 target use dash for
version separation - even Netgear ones like WNR612v2, WNDR4300v2 and so
on. And yes, it 'breaks' smooth downgrade path to ar71xx, but please be
aware that when changing branches it is always better to begin with
clean/default device configuration.

Best regards
Michal

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
