Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DDB371F8AD4
	for <lists+openwrt-devel@lfdr.de>; Sun, 14 Jun 2020 23:07:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Mime-Version:Message-ID:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0gDT4YfudoT32D86VmiZNc1gLiANuzteO330CQ+8wo0=; b=VEYCb4vVFKBjCe
	xXw7ifGiqfR923nyBMMtMMINu4J41ozPYTt9D0MTJxLxZfu+d9OeyOlEm93+rBndc5zy5jZMh2o46
	o5IOHVkCeT724r4eiyBH9HSoekGUfiWzeavmASrC7jtLq+HwWGZB7U0i3wH8zA6ji6oQo8bEmDXZ+
	0T5RuRKGN3atvcdgHZiURnWJIQZXH3ZgHAtlV6mRJAmW8CN9EK4buKN+PFauDkDUfu3yeyB8LOJlR
	CED9DDOg/gxUe0aj+BRgpTihR0xfAuhHEe20YwBjZxqPO1ZR4csMVIaSs+wur0ILtbSf5JBOweAJ3
	TowWC2H50wxAbttWItPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkZqx-00007T-Gh; Sun, 14 Jun 2020 21:07:43 +0000
Received: from out-11.smtp.github.com ([192.30.254.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkZqp-00006o-L7
 for lede-dev@lists.infradead.org; Sun, 14 Jun 2020 21:07:37 +0000
Received: from github-lowworker-d93c4b6.va3-iad.github.net
 (github-lowworker-d93c4b6.va3-iad.github.net [10.48.17.47])
 by smtp.github.com (Postfix) with ESMTP id AD32126183F;
 Sun, 14 Jun 2020 14:07:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=github.com;
 s=pf2014; t=1592168853;
 bh=vAwh3citR176+4mdXeNgZxakdy0sYmufEotQFPFYNdI=;
 h=Date:From:To:Subject:From;
 b=Xdj0EqIte48avrypzD7eJ5vMCWIakc8vCSGw9K9mW94VNKT747DUm/sIxOYmiS4Ts
 4IrB4Ue/FxKs4kxjF+6ciK2gxZo3LlCClqN6+VLqy+iQ5IOyGq9Xsf8tRTqFFGbuLU
 q+/65R5vcCl1L2kXz3CXpvPkHDb2VHK65sYK8rnY=
Date: Sun, 14 Jun 2020 14:07:33 -0700
From: Stephen Walker <noreply@github.com>
To: stephendwalker+github@gmail.com, 
 openwrt-devel@lists.openwrt.org
Message-ID: <sdwalker/sdwalker.github.io/push/refs/heads/master/8eec96-f336f8@github.com>
Mime-Version: 1.0
X-GitHub-Recipient-Address: stephendwalker+github@gmail.com,
 lede-dev@lists.infradead.org
X-Auto-Response-Suppress: All
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200614_140735_713969_AECFEF9B 
X-CRM114-Status: UNSURE (   2.02  )
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
 valid -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [192.30.254.194 listed in wl.mailspike.net]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.30.254.194 listed in list.dnswl.org]
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
Subject: [OpenWrt-Devel] [sdwalker/sdwalker.github.io] f336f8: This week's
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
  Commit: f336f8e076dee2483b9a8840d03b9273b890d0a3
      https://github.com/sdwalker/sdwalker.github.io/commit/f336f8e076dee2483b9a8840d03b9273b890d0a3
  Author: Stephen Walker <stephendwalker+github@gmail.com>
  Date:   2020-06-14 (Sun, 14 Jun 2020)

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
