Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B5183ABEF
	for <lists+openwrt-devel@lfdr.de>; Sun,  9 Jun 2019 22:59:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Mime-Version:Message-ID:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=falqhHgmUVnA6cwtWpxVz51QVZj1b+PnYRgOB4T+LAQ=; b=L2YVnPZYerb2I5
	1T4A4mdnhk0Nu1sRx2n2T2GuGKPRGVVxk9KefyrBgLqFOJG1f7PgBDYEMBlCgixR58xmhHNrCiBl8
	u0ypK28AwQLlvtSxj82Td2OyvwgvddYQ9IuSFwb5Vs0jFJ62CKSm6phuh+vupBLFD8roBaVAqeHGh
	AfnYN0qS3aft8gM13LLDTueH725wJ/vP4jEoAbwjqg8Aw6P84vV7x0mwXvI0F3gEVV/DFcaLa+VRS
	N8iMYhXNCSGz0ld7MkD3LqU9NmEGyZZwgbL7N3yWJROUOp67ecIeTFU40F05/DbHqg/7OS37iTQBH
	qhM1lNfXGQ80VvJ1AS0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ha4u1-0005qx-87; Sun, 09 Jun 2019 20:58:57 +0000
Received: from out-3.smtp.github.com ([192.30.252.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ha4ts-0005qX-Nm
 for lede-dev@lists.infradead.org; Sun, 09 Jun 2019 20:58:50 +0000
Date: Sun, 09 Jun 2019 13:58:47 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=github.com;
 s=pf2014; t=1560113927;
 bh=WQ3qpSbkwrLInDwROQbuAu+bacSruaAfBVQQcqRTUNA=;
 h=Date:From:To:Subject:From;
 b=vNbhX7wr9qj3NHcJUQudLspjBDIzs3kg0YFx7OzzHoSzvB1oZU9umNCtQmpasKFH8
 alrLhA4W0xGZA/FC7XVmB42jY7zkAX9dJoBqJYx9O9i5A8yuF8Aq1Vijp+dyTfL3lp
 JGwVMjFlrkoBjBSXCzzohId/4UZ+tUyw2vWD1Yu8=
From: Stephen Walker <noreply@github.com>
To: stephendwalker+github@gmail.com, 
 openwrt-devel@lists.openwrt.org
Message-ID: <sdwalker/sdwalker.github.io/push/refs/heads/master/0bf753-8b0b62@github.com>
Mime-Version: 1.0
X-GitHub-Recipient-Address: stephendwalker+github@gmail.com,
 lede-dev@lists.infradead.org
X-Auto-Response-Suppress: All
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190609_135848_845369_C0C2F0E4 
X-CRM114-Status: UNSURE (   2.18  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.30.252.194 listed in list.dnswl.org]
 2.5 HEADER_SPAM            Bulk email fingerprint (header-based) found
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
Subject: [OpenWrt-Devel] [sdwalker/sdwalker.github.io] 8b0b62: This week's
 update
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

  Branch: refs/heads/master
  Home:   https://github.com/sdwalker/sdwalker.github.io
  Commit: 8b0b62bfca9b1c3a2d83a7a0eb6b7d88d7bac90f
      https://github.com/sdwalker/sdwalker.github.io/commit/8b0b62bfca9b1c3a2d83a7a0eb6b7d88d7bac90f
  Author: Stephen Walker <stephendwalker+github@gmail.com>
  Date:   2019-06-09 (Sun, 09 Jun 2019)

  Changed paths:
    M uscan/index-18.06.html
    M uscan/index.html

  Log Message:
  -----------
  This week's update



_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
