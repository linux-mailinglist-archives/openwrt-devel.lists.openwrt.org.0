Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 962C31C2EA6
	for <lists+openwrt-devel@lfdr.de>; Sun,  3 May 2020 20:59:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Mime-Version:Message-ID:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=x7Oxv+Ch0wFwwVr7cSA7zEXXGhaL+hbZ9j/SrZ0N4cs=; b=Ylum+cJnugUo22
	sPNH/F3jr6YVVGqzkEAeB0INUMAbHhqqLh0z1GBHQEf0zoIk491Ls0CDo3c4GZvlgWD6hqf18gxiA
	327hbFaLEahN80g1PAevihStNXbQYDw3xmbZc/0jRyWPJF+r8s5cOcMyYCxMLqcmh/JyaT6U2rSav
	VarDQudb8emXFYV/Zoofu/PbRG97rO07ypqoV102xcGy4u3Aitt8Ey3od2tH8/v3hMjbxJRUuNv0k
	wkDOQb3S1VBVdpZTN1DSZXhDlsZuTX71jtaHPtKhW+0C6XPtqfRqru4i+1tNKCPYlW/kS14NeYyA/
	1WYqo2jSENWZeLab7RSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVJpp-0005fI-2H; Sun, 03 May 2020 18:59:29 +0000
Received: from out-23.smtp.github.com ([192.30.252.206])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVJpj-0005ez-BD
 for lede-dev@lists.infradead.org; Sun, 03 May 2020 18:59:24 +0000
Received: from github-lowworker-9bcb4a1.ac4-iad.github.net
 (github-lowworker-9bcb4a1.ac4-iad.github.net [10.52.25.84])
 by smtp.github.com (Postfix) with ESMTP id AE4146608A7;
 Sun,  3 May 2020 11:59:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=github.com;
 s=pf2014; t=1588532361;
 bh=CSVMKzaZcOVDQVpBKUx3bjIkBwbNiKu3OrH3ywzZ554=;
 h=Date:From:To:Subject:From;
 b=0oHLvp/YLMxJCUjTGnSrIAX91zLmXPmyEEKMjhqvlq/rJ9MTL4ofquzcp0qvolazS
 Ar8Hk3PPYvH6jOM7pjlaTgD/6RCg9wB+Ax76lOFJKrsrpF7BgpNYpYQdaLw3Pp+lZZ
 QtVKwp3B+M58JiejZ52NwRLWAGEt+1NZEwZ8T51c=
Date: Sun, 03 May 2020 11:59:21 -0700
From: Stephen Walker <noreply@github.com>
To: stephendwalker+github@gmail.com, 
 openwrt-devel@lists.openwrt.org
Message-ID: <sdwalker/sdwalker.github.io/push/refs/heads/master/9d51ce-a1eb6c@github.com>
Mime-Version: 1.0
X-GitHub-Recipient-Address: stephendwalker+github@gmail.com,
 lede-dev@lists.infradead.org
X-Auto-Response-Suppress: All
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200503_115923_445923_F140FED5 
X-CRM114-Status: UNSURE (   2.36  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.30.252.206 listed in list.dnswl.org]
 2.5 HEADER_SPAM            Bulk email fingerprint (header-based) found
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [192.30.252.206 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
Subject: [OpenWrt-Devel] [sdwalker/sdwalker.github.io] a1eb6c: This week's
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
  Commit: a1eb6c5a280afd5cc58734e2f767d4b7aef709c7
      https://github.com/sdwalker/sdwalker.github.io/commit/a1eb6c5a280afd5cc58734e2f767d4b7aef709c7
  Author: Stephen Walker <stephendwalker+github@gmail.com>
  Date:   2020-05-03 (Sun, 03 May 2020)

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
