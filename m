Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BF582E787
	for <lists+openwrt-devel@lfdr.de>; Wed, 29 May 2019 23:40:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-ID:Date:To:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Bjyg83IAk6FSkMFxuMhMGpxVjakPNx9PC9iMH081uw4=; b=i4x
	6X5G4daDxcpIvZYCP9RKcTgJmEXCFJOdrQw+HeJR6OSxTb/GTyQNa+85eBE4cGuZ3nCHApgGjFIOw
	KeH6ovnGisc2oMzGKvghP6hZUnpohWLN9utuzzUqlziifkJtZQChb7BXCLOMCbnEBfoiB7jGogCiG
	iuQCTvf5vj0eSCUE8Qtnp+oRgpdNdzd4g5beN7i72pIZBwfL5k4gEFh4IMmzm1VpnhHYhhnHMbR9r
	iJvgePqsw2hF8ihgIqOZ0PvXT1tPhEGLFX2JcHV5xTyOuyYSucu81NAMlfp+EGd6O/16VUK+ONG2/
	JHFLq3pnN5JlJuqVy4ZN0zZ2p+MzR5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hW6Ix-0000HO-HA; Wed, 29 May 2019 21:40:15 +0000
Received: from bilbo.ozlabs.org ([203.11.71.1] helo=ozlabs.org)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hW6Ip-00080F-Fb
 for openwrt-devel@lists.openwrt.org; Wed, 29 May 2019 21:40:09 +0000
Received: from bilbo.ozlabs.org (localhost [IPv6:::1])
 by ozlabs.org (Postfix) with ESMTP id 45DkdZ5K90z9s1c
 for <openwrt-devel@lists.openwrt.org>; Thu, 30 May 2019 07:40:02 +1000 (AEST)
Authentication-Results: ozlabs.org; dmarc=none (p=none dis=none)
 header.from=patchwork.ozlabs.org
MIME-Version: 1.0
From: Patchwork <patchwork@patchwork.ozlabs.org>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 29 May 2019 21:40:02 -0000
Message-ID: <20190529214002.1879.92412@bilbo.ozlabs.org>
Precedence: bulk
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_144007_706886_1068A7B1 
X-CRM114-Status: UNSURE (   3.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [203.11.71.1 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [openwrt] Patch notification: 2 patches updated
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
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

Hello,

The following patches (submitted by you) have been updated in Patchwork:

 * openwrt: [OpenWrt-Devel] openssl: update to version 1.1.1c
     - http://patchwork.ozlabs.org/patch/1106526/
     - for: OpenWrt development
    was: New
    now: Under Review

 * openwrt: [OpenWrt-Devel,1/1] build: add support to && in DEPENDS
     - http://patchwork.ozlabs.org/patch/1090516/
     - for: OpenWrt development
    was: New
    now: Under Review

This email is a notification only - you do not need to respond.

Happy patchworking.

--

This is an automated mail sent by the Patchwork system at
patchwork.ozlabs.org. To stop receiving these notifications, edit
your mail settings at:
  http://patchwork.ozlabs.org/mail/

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
