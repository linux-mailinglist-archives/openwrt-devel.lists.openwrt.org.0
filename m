Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EA0B102A36
	for <lists+openwrt-devel@lfdr.de>; Tue, 19 Nov 2019 17:59:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pcEi1hglCg8PKAeC9lgYeyHVRb4PauBFVjqrLz0Y8ws=; b=sxXPxY95bjOMSj
	TGTQLQyt8nOszKtny4OvkQ+DLSAm6bN5zwzkyem+p2RqLP/+Xfuy3bJRqgagh2MCe38903qQHLyzT
	Gt9KiKcGPlQjIKCmAly8+ovM1iZkm4W3xBY+25GrhRn93g5ftbA3Q2n2HafXT07RF/BFfE6BuRXqV
	sVK+2DcnTlaVNmz2KlzJLISHPLdGyoVvPt/Lys8DQp246lO8UCA0glEYZLakPAgvcv4Xi5f9VJ249
	9HVvkKbjgiVwHJ0UPyQ5BbxDavfaI1L8tqbQWwhqeA4IdUa+/Czfle+i2wVVU83ivhAbW5cgTcG2a
	YiSUb4gFKUpe3uPc50wQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iX6qT-0002Mc-SN; Tue, 19 Nov 2019 16:59:17 +0000
Received: from mx4.wp.pl ([212.77.101.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iX6qJ-0002L1-MS
 for openwrt-devel@lists.openwrt.org; Tue, 19 Nov 2019 16:59:09 +0000
Received: (wp-smtpd smtp.wp.pl 30634 invoked from network);
 19 Nov 2019 17:59:02 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wp.pl; s=1024a;
 t=1574182742; bh=d15BKuZS3pVXsTT/Nc6Cojz1vOFG16TmiYb+k/VE1J4=;
 h=From:To:Cc:Subject;
 b=BcOZiMhxIs2y0Y8kv5HwyidBomFcwCi1/qVjxk4HKHCLDGbTnPH9+VM+ECzWtKCmu
 8/ZJsXpVfLFdsM+26oZsRHD/8wNzuycs1WfUXU1wmFm1b8ox0wb2/LOLVAiRXqzxoe
 XA2weYxhMrZtFbku5gbk2tZ01hyi9Lvu3Hd9Y7JE=
Received: from 89-79-49-72.dynamic.chello.pl (HELO kosmio.komorska)
 (michal.cieslakiewicz@wp.pl@[89.79.49.72])
 (envelope-sender <michal.cieslakiewicz@wp.pl>)
 by smtp.wp.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <jonas.gorski@gmail.com>; 19 Nov 2019 17:59:02 +0100
Date: Tue, 19 Nov 2019 17:59:00 +0100
From: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>
To: Jonas Gorski <jonas.gorski@gmail.com>
Message-ID: <20191119175900.0038eb08@kosmio.komorska>
In-Reply-To: <CAOiHx=krODnS-PizVk3Y5arY69JSzVT9A8bTV28K_cUJs_pJ=A@mail.gmail.com>
References: <20191112140214.59f2971f@kosmio.komorska>
 <04615660-e813-7bc1-1e75-a51c289fd518@david-bauer.net>
 <20191112192234.721c6a6e@kosmio.komorska>
 <20191119161737.2fa01dc3@kosmio.komorska>
 <CAOiHx=kDgJjSbRCqrm9A6=GjR9HYkgZ4gYdvemV2-3cbXHemFA@mail.gmail.com>
 <20191119173322.512c6669@kosmio.komorska>
 <CAOiHx=krODnS-PizVk3Y5arY69JSzVT9A8bTV28K_cUJs_pJ=A@mail.gmail.com>
X-Mailer: Claws Mail 3.17.1 (GTK+ 2.24.32; x86_64-slackware-linux-gnu)
MIME-Version: 1.0
X-WP-MailID: 6f508cd2c885907c43cf6277e626d9c7
X-WP-AV: skaner antywirusowy Poczty Wirtualnej Polski
X-WP-SPAM: NO 0000000 [IVNk]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_085907_917589_6064C3E6 
X-CRM114-Status: UNSURE (   4.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.77.101.12 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (michal.cieslakiewicz[at]wp.pl)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Adrian Schmutzler <mail@adrianschmutzler.de>,
 David Bauer <mail@david-bauer.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

> 
> That was my question, if the "new" OpenWrt sysupgrade.bin still works
> in the initial flash.
> 

sysupgrade.bin for this model is in format tar+metadata, it is not
designed to be put into flash directly.

Regards
Michal

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
