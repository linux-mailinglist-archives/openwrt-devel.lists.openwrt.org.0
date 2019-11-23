Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BC96107E01
	for <lists+openwrt-devel@lfdr.de>; Sat, 23 Nov 2019 11:20:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-ID:Date:To:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=DAZ+W2HKvoM1fnWjqGgDtEMdEiF7EpNtG/YXRf+5+9Y=; b=GJ/
	GaVqYUJQxHjpITdCHRnaVg3oeF60owOJw6i0hyr1SCJT9vFFAh5O5VTmjqeiXnY/34aCFWMD08r08
	cMdR4b2AlksQ+5zmQaRhPGAERBBXJGuRcRMobSb+PqnMWb8mlSnZKOHcQZb+NHnB8bL/CVWdAlm+Q
	Npnobn1E/e7eSXS/CEh4oCj78Fp/KcrXOImK242in6GFQSJoCMcEqIP6rb2s4QB670ISjCVnj/gtL
	//HwMy+kswJTdkdPA85rCnhBB92RzQ4tDfCZY6pnb7INrxVz/yrnb7wqILcSsVGBUPej4+QdxZ908
	MR+bxI8R9KJ9bvopdKyVrbpVRn1hDzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iYSWb-0005TM-DB; Sat, 23 Nov 2019 10:20:21 +0000
Received: from bilbo.ozlabs.org ([203.11.71.1] helo=ozlabs.org)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iYSWV-00056v-CC
 for openwrt-devel@lists.openwrt.org; Sat, 23 Nov 2019 10:20:17 +0000
Received: from bilbo.ozlabs.org (localhost [IPv6:::1])
 by ozlabs.org (Postfix) with ESMTP id 47Kq6q1HTwz9sPc
 for <openwrt-devel@lists.openwrt.org>; Sat, 23 Nov 2019 21:20:02 +1100 (AEDT)
Authentication-Results: ozlabs.org; dmarc=none (p=none dis=none)
 header.from=patchwork.ozlabs.org
MIME-Version: 1.0
From: Patchwork <patchwork@patchwork.ozlabs.org>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 23 Nov 2019 10:20:02 -0000
Message-ID: <20191123102002.27810.48912@bilbo.ozlabs.org>
Precedence: bulk
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191123_022015_586815_9451FB41 
X-CRM114-Status: UNSURE (   3.46  )
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
X-Mailman-Version: 2.1.29
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

 * openwrt: [OpenWrt-Devel,RESEND,packages,1/2] openssh: add openwrt failsafe support
     - http://patchwork.ozlabs.org/patch/1199453/
     - for: OpenWrt development
    was: New
    now: Not Applicable

 * openwrt: [OpenWrt-Devel,RESEND,packages,2/2] openssh: update to 8.1p1
     - http://patchwork.ozlabs.org/patch/1199454/
     - for: OpenWrt development
    was: New
    now: Not Applicable

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
