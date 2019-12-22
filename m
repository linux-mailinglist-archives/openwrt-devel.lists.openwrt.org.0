Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8959E128FA5
	for <lists+openwrt-devel@lfdr.de>; Sun, 22 Dec 2019 20:05:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Mime-Version:Message-ID:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=JTBcLROgjuulsAOGUvJWtA6GrX2UHp61v69d7CxFwGY=; b=qfGmM9BrsnTR/h
	2pK5ytaePdNXMhHhUQom+jxWQTIZYmIsMSMpoW3XgG47rude5SwR5UOT2pY29VpIOaMCIKDkyr0gR
	7pw+xGAQAAvZlqjJNxb7TY2FxOtr3JxwDuZ+B1llyaY07zNPfx3NLNE4hAXPSqjRik4mBBbZF5jOY
	kMMKMnDfSiYSg3gNTqp0dfCGcvLgmPBlZxGRvKZqYuxe2bGLnVXYKAeSyZ8QAWFghIhYxv2pwjIEc
	0l2FZwSEvaK9oj4bPdgdSoGRccG/+G0uiCDumL9KinHmK5zIblH9NyHGkPlIZhruZ+ZqEkrwZx7Ms
	3hGsHLA4JA+DXiU9MQOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ij6XV-0001Y6-12; Sun, 22 Dec 2019 19:05:17 +0000
Received: from out-20.smtp.github.com ([192.30.252.203])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ij6XO-0001Ij-Me
 for lede-dev@lists.infradead.org; Sun, 22 Dec 2019 19:05:12 +0000
Received: from github-lowworker-2ef7ba1.ac4-iad.github.net
 (github-lowworker-2ef7ba1.ac4-iad.github.net [10.52.16.66])
 by smtp.github.com (Postfix) with ESMTP id E5D268C03B3;
 Sun, 22 Dec 2019 11:05:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=github.com;
 s=pf2014; t=1577041507;
 bh=YXwGEj2SVbTDx9AZIVXBCNxvatF25p3yEgvbQaTJH8Y=;
 h=Date:From:To:Subject:From;
 b=oCrCGQPodVwstJG1LQNSpKxhZVLQnOrfWWP6wL/AAfsaPw+yoaub9oj9OYRbEqBaC
 sZpYSjI7JUUa2GerY2LS8xRJ6kTP7BHE0usKUbtLGtaUTEqyKZzrk2MI6YMgyz4zTA
 Zdpf54aaBlBmeJK0JrJ6+48KnbEGn2M38TgOae6E=
Date: Sun, 22 Dec 2019 11:05:07 -0800
From: Stephen Walker <noreply@github.com>
To: stephendwalker+github@gmail.com, 
 openwrt-devel@lists.openwrt.org
Message-ID: <sdwalker/sdwalker.github.io/push/refs/heads/master/6bb22e-ac019b@github.com>
Mime-Version: 1.0
X-GitHub-Recipient-Address: stephendwalker+github@gmail.com,
 lede-dev@lists.infradead.org
X-Auto-Response-Suppress: All
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191222_110510_850710_3513EDD5 
X-CRM114-Status: UNSURE (   1.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 2.5 HEADER_SPAM            Bulk email fingerprint (header-based) found
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.30.252.203 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
Subject: [OpenWrt-Devel] [sdwalker/sdwalker.github.io] ac019b: This week's
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
  Commit: ac019b7f822f0aea70d3498d237c93ca0f39f4fa
      https://github.com/sdwalker/sdwalker.github.io/commit/ac019b7f822f0aea70d3498d237c93ca0f39f4fa
  Author: Stephen Walker <stephendwalker+github@gmail.com>
  Date:   2019-12-22 (Sun, 22 Dec 2019)

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
