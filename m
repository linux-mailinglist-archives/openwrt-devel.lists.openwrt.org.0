Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 34D7B1ADD44
	for <lists+openwrt-devel@lfdr.de>; Fri, 17 Apr 2020 14:23:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=+0OSDe69tsgkXv8Ui9lpZ722XxUPlFFRfiEGvQ/zKwo=; b=Wt9SdxalNqapTRz+cTDTp5YvVp
	/ZaL5Xhs8IeTzW7VFPvIhj0YyhXg9FJv5Dh6/QOs/FsmpJxR6fKW5JK5y375gCaBJ3wAwGAJXC5R4
	pE2hBxI6rYitzzmxN1rzoJIHspG7/tRZho1dmEFnARYvd4NB3Ds8gvhi9vSb5jLZP7zx4o5gLyxqd
	dczTvTfrO1qRhB9Itv2/J58nwHx5BO5Ge9HToLVelb2HbnVN//KrCteoLN62nk0wX0HaiY06YVMKP
	6UmfnzOnIjdmRl4qqFOETOcDZIIDse426R/qGXpHwUBol5Hy/whLb8DkbMGpFAGD45+z4N0gMzGeU
	BRO7XUgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPQ1p-0004Y1-0O; Fri, 17 Apr 2020 12:23:29 +0000
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPQ1i-0004XP-Ns
 for openwrt-devel@lists.openwrt.org; Fri, 17 Apr 2020 12:23:24 +0000
X-Originating-IP: 85.214.243.122
Received: from erker.lan (megumi.opennet-initiative.de [85.214.243.122])
 (Authenticated sender: lists@sumpfralle.de)
 by relay8-d.mail.gandi.net (Postfix) with ESMTPSA id 90BF21BF205
 for <openwrt-devel@lists.openwrt.org>; Fri, 17 Apr 2020 12:23:13 +0000 (UTC)
Date: Fri, 17 Apr 2020 14:23:06 +0200
From: Lars Kruse <lists@sumpfralle.de>
To: openwrt-devel@lists.openwrt.org
Message-ID: <20200417142306.6707bac7@erker.lan>
In-Reply-To: <mailman.141.1586727183.2540.openwrt-devel@lists.openwrt.org>
References: <mailman.141.1586727183.2540.openwrt-devel@lists.openwrt.org>
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_052322_910368_1D7DA217 
X-CRM114-Status: GOOD (  12.50  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.201 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] confirm d2759ee7f324c3be070a8979dccb1197ab3adb41
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

Am Sun, 12 Apr 2020 14:33:03 -0700
schrieb openwrt-devel-request@lists.openwrt.org:

> Your membership in the mailing list openwrt-devel has been disabled
> due to excessive bounces The last bounce received from you was dated
> 12-Apr-2020.  You will not get any more messages from this list until
> you re-enable your membership.  You will receive 3 more reminders like
> this before your membership in the list is deleted.
> 
> To re-enable your membership, you can simply respond to this message
> (leaving the Subject: line intact), or visit the confirmation page at
> 
>     http://lists.infradead.org/mailman/confirm/openwrt-devel/d2759ee7f324c3be070a8979dccb1197ab3adb41
> 
> 
> You can also visit your membership page at
> 
>     http://lists.infradead.org/mailman/options/openwrt-devel/lists%40sumpfralle.de
> 
> 
> On your membership page, you can change various delivery options such
> as your email address and whether you get digests or not.  As a
> reminder, your membership password is
> 
>     niuwikan
> 
> If you have any questions or problems, you can contact the list owner
> at
> 
>     openwrt-devel-owner@lists.openwrt.org

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
