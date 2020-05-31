Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7DAD1E9AAF
	for <lists+openwrt-devel@lfdr.de>; Mon,  1 Jun 2020 00:17:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Mime-Version:Message-ID:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jwezkYQk0/9ioy/Xi0p7WM+X4Nz6qpwTCCI6JySjLzE=; b=XKcJDq48W3MF6I
	i8BKbfKG947onptlOTvYhmYT2z0c+cPGquEr8nEl6J+JpNLx26VGfUqmXkZHkuIWUJQPcaJZ7MUUD
	web6JTps1XPeaO5dHC4UuXzHfU78FvXcKz3tlkn6P5H+PHB/ye9jcabuIZIGXS8xb3k0aO6elQBUe
	qxFoymsSg+SlMQrKiZnRTrzIwJbDgndc5scKyXR/riGQk/i5Jc8NHkXCXxVcS692J2TJ3KRV0Ufd7
	qzuyAJqFSs5IfBLSnqtM8gVItxBEP0vAAlYBvJqT5Di4lY9d/uWrq0Dtfcrl/rN05izGT21rSEY6G
	59A59KDQNO5DsEobrb4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfWGI-0003SA-QQ; Sun, 31 May 2020 22:16:58 +0000
Received: from out-14.smtp.github.com ([192.30.254.197])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfWGB-0003QP-DR
 for lede-dev@lists.infradead.org; Sun, 31 May 2020 22:16:52 +0000
Received: from github-lowworker-9bcb4a1.ac4-iad.github.net
 (github-lowworker-9bcb4a1.ac4-iad.github.net [10.52.25.84])
 by smtp.github.com (Postfix) with ESMTP id 9FD181204F6;
 Sun, 31 May 2020 15:16:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=github.com;
 s=pf2014; t=1590963405;
 bh=BtD8eoh/WdVFRqPTjnDGQWfNpEMytj5dG5lCJA/wbxY=;
 h=Date:From:To:Subject:From;
 b=L6P2DvsilBkxpfNd6Se+AI2tvI1UDrkd66y9bemZ3mMxR/RG4FGphap+sfc/lbTYf
 Uq9UXttQ5f3nsrWhw03MA5nH0c0AK27BwLUAIv6Ecc0GQSKldM99ZKOD/OdSYEDZ7n
 Xs5beDj0koH+8v99Pr0eaj8JOqJkiHIw9oTinUhk=
Date: Sun, 31 May 2020 15:16:45 -0700
From: Stephen Walker <noreply@github.com>
To: stephendwalker+github@gmail.com, 
 openwrt-devel@lists.openwrt.org
Message-ID: <sdwalker/sdwalker.github.io/push/refs/heads/master/a33bb0-59b2d7@github.com>
Mime-Version: 1.0
X-GitHub-Recipient-Address: stephendwalker+github@gmail.com,
 lede-dev@lists.infradead.org
X-Auto-Response-Suppress: All
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200531_151651_476540_66E762CD 
X-CRM114-Status: UNSURE (   2.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 2.5 HEADER_SPAM            Bulk email fingerprint (header-based) found
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.30.254.197 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [192.30.254.197 listed in wl.mailspike.net]
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
Subject: [OpenWrt-Devel] [sdwalker/sdwalker.github.io] 59b2d7: This week's
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
  Commit: 59b2d70c883af121f39dd40f7283fb0075ade8c3
      https://github.com/sdwalker/sdwalker.github.io/commit/59b2d70c883af121f39dd40f7283fb0075ade8c3
  Author: Stephen Walker <stephendwalker+github@gmail.com>
  Date:   2020-05-31 (Sun, 31 May 2020)

  Changed paths:
    M uscan/index-18.06.html
    M uscan/index-19.07.html
    M uscan/index.html

  Log Message:
  -----------
  This week's update



_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
