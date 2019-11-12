Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 014DAF9888
	for <lists+openwrt-devel@lfdr.de>; Tue, 12 Nov 2019 19:23:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hdmCPI7Yq5rbdRsZ379jyzww70nWJJ4mGdU0amNg4I0=; b=qwHWsHJaAmmxwV
	0Io7hC1b6cUrZyhqp/tQTiAv89NizBpCtbgScTeo3hLqqkAP2GYtdRqw/gfSuK/mqz6Zzct0E3bd5
	Mxw0LGdRiQ/dbS6LQUdAictIOpig42y9iWFGBZp6PNeiKduURr46UoNIwYJRwGMM/dzPq+lcZ2osT
	7l/RQdfWipBIdV36tCxVUoynXaz0SZZHI2MERV1kR2x67jn7OltusKTEi+yoKmZ6thvoh4K5p8MYc
	tfVm270Dj/6Uy57p3rn1lf7+q1q6/XAZIbMguh4tV1GJVjLj4zlfx6HuIxCCUA5yVgXuZOL7YtFlE
	9XvoGPjDP+WKstX1S0TA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUaok-0003m3-MG; Tue, 12 Nov 2019 18:23:06 +0000
Received: from mx4.wp.pl ([212.77.101.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUaoK-0003dv-US
 for openwrt-devel@lists.openwrt.org; Tue, 12 Nov 2019 18:22:43 +0000
Received: (wp-smtpd smtp.wp.pl 4029 invoked from network);
 12 Nov 2019 19:22:36 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wp.pl; s=1024a;
 t=1573582956; bh=hCzaTYm9aT33Vvea3tF1Ug4sgSjyz2zU4LgcLJSnHTY=;
 h=From:To:Cc:Subject;
 b=NxvXaefb2zdPytPYsPNkbAMXScE2l2ThA5v9eDoC6O+dKwq4FxqFkdNRdbwIhjwkH
 7NeJOYO2sPCbcQ3hNwW+aijVCN1DtHA+shWq2eW8eM92F3Vr+cT0TMsEp2W3OId3rB
 roD06QwUQjeL4rd5y8IVK3UMy+EEQCDIkEHabBhA=
Received: from 89-79-49-72.dynamic.chello.pl (HELO kosmio.komorska)
 (michal.cieslakiewicz@wp.pl@[89.79.49.72])
 (envelope-sender <michal.cieslakiewicz@wp.pl>)
 by smtp.wp.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <mail@david-bauer.net>; 12 Nov 2019 19:22:36 +0100
Date: Tue, 12 Nov 2019 19:22:34 +0100
From: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>
To: David Bauer <mail@david-bauer.net>
Message-ID: <20191112192234.721c6a6e@kosmio.komorska>
In-Reply-To: <04615660-e813-7bc1-1e75-a51c289fd518@david-bauer.net>
References: <20191112140214.59f2971f@kosmio.komorska>
 <04615660-e813-7bc1-1e75-a51c289fd518@david-bauer.net>
X-Mailer: Claws Mail 3.17.1 (GTK+ 2.24.32; x86_64-slackware-linux-gnu)
MIME-Version: 1.0
X-WP-MailID: 55f1c28988082b7de79e34b58e0e68ef
X-WP-AV: skaner antywirusowy Poczty Wirtualnej Polski
X-WP-SPAM: NO 0000000 [4aNU]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_102241_997584_223FC66A 
X-CRM114-Status: UNSURE (   5.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.77.101.11 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (michal.cieslakiewicz[at]wp.pl)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: enable all space on Netgear
 ar9344-based WNDR routers
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
Cc: "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>,
 Adrian Schmutzler <mail@adrianschmutzler.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Tue, 12 Nov 2019 17:15:17 +0100
David Bauer <mail@david-bauer.net> wrote:

> Hello Michal,
> 
> Have you tried if this breaks sysupgrade from an older OpenWrt
> firmware? I'm not sure if an UBI resize works without additional
> steps.
> 
> Best wishes
> David
> 

Hello David,

Thanks! Good point, I was usually flashing from uboot to a clean state.
I will test this sysupgrade scenario and come back with results.

Best regards
Michal

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
